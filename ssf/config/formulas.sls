# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ssf with context %}
{%- from tplroot ~ "/libtofs.jinja" import files_switch with context %}
{%- set running_as_root = opts.get('user', '') == 'root' %}
{%- do salt['log.debug']('[ssf] running_as_root: ' ~ running_as_root) %}

{#- Work through each formula, which is in the `active` list via. pillar/config #}
{%- for semrel_formula, semrel_formula_specs in ssf.semrel_formulas.items() if semrel_formula in ssf.active.semrel_formulas %}
{#-   Use shorter variables to make the code a little easier to follow #}
{%-   set codeowners = semrel_formula_specs.codeowners %}
{%-   set context = semrel_formula_specs.context %}
{%-   set inspec_suites_kitchen = context.inspec_suites_kitchen %}
{%-   set use_cirrus_ci = context.use_cirrus_ci %}
{%-   set use_libsaltcli = context.use_libsaltcli %}
{%-   set use_tofs = context.use_tofs %}
{%-   set formula = context.git.github.repo %}
{#-   Determine the TOFS override directory for the current formula #}
{#-   Can't use `formula` directly because some formula names are used as top-level pillar/config keys, such as `users-formula` #}
{%-   set formula_tofs_dir = 'tofs_' ~ formula %}
{%-   set branch_pr = context.git.branch.pr %}
{%-   if not ssf.git.states.commit_push.push.via_PR %}
{%-     set branch_pr = salt['system.get_system_date_time']() | replace(' ', '')
                                                              | replace(':', '')
                                                              | replace('-', '')  %}
{%-   endif %}


{#-   Stage 1: Run the script (`git` commands) to prepare the (new) branch for adding/removing files to the changeset #}
{%-   if ssf.git.states.prepare.active %}
prepare-git-branch-for-{{ formula }}:
  cmd.script:
    - source: {{ ssf.git.states.prepare.source }}
    - cwd: {{ ssf.formulas_path }}/{{ formula }}/
    - args: >-
        prepare-git-branch-for-{{ formula }}
        {{ context.git.branch.upstream }}
        {{ branch_pr }}
        {{ context.git.commit.body | regex_escape }}
    {%- if running_as_root %}
    - runas: {{ ssf.user }}
    {%- endif %}
    - stateful: True
{%-   endif %}


{#-   Work through each file defined for the formula, which is in the `active` list via. pillar/config #}
{%-   for semrel_file, semrel_file_specs in semrel_formula_specs.semrel_files.items() if semrel_file in ssf.active.semrel_files %}
{#-     Use shorter variables to make the code a little easier to follow #}
{%-     set mode = semrel_file_specs.mode %}
{%-     set template = semrel_file_specs.template %}
{%-     set dest_file_done = [] %}

{#-     Work through each inspec suite defined for the formula, ordered by the suite number #}
{%-     for index in range(0, inspec_suites_kitchen | length) %}
{%-       set suite = inspec_suites_kitchen[index] %}
{%-       set dest_file = semrel_file_specs.dest_file | d(semrel_file ) %}
{#-       Only manage files for the suite if the `suite.name` is set #}
{#-       Or if dealing with CI files (where an empty `suite.name` is actually used) #}
{%-       if suite.name or dest_file in ['.cirrus.yml', '.travis.yml'] %}
{%-         if dest_file.startswith('formula/') %}
{#-           Replace 'formula/' with the actual name of the formula #}
{%-           set dest_file = '{0}/{1}'.format(
                semrel_file_specs.alt_semrel_formula | d(semrel_formula),
                dest_file.split('/', 1)[1],
              ) %}
{%-         elif dest_file.startswith('inspec/') %}
{%-           set inspec_tests_path_prefix = suite.verifier.inspec_tests_path_prefix %}
{#-           The test suite to use may be a different than the suite's name, so need to point to it accordingly #}
{#-           Due to the `Scoping Behavior` of Jinja, can't use a straight `set` here, refer back to:
              * https://jinja.palletsprojects.com/en/2.10.x/templates/#assignments
              Unable to use `namespace` with the current version of Jinja so simulating with a `dict` instead #}
{%-           set matching_test_suite = {'found': False} %}
{%-           for test_suite in suite.verifier.inspec_tests if test_suite in ['.', suite.name] %}
{%-               do matching_test_suite.update({'found': True}) %}
{%-           endfor %}
{#-           Now use that to set the `dest_file` accordingly #}
{%-           if not matching_test_suite.found %}
{%-             set dest_file = '' %}
{%-           else %}
{%-             set dest_file = '{0}/{1}/{2}'.format(inspec_tests_path_prefix, suite.name, dest_file.split('/')[-1]) %}
{%-           endif %}
{%-         endif %}
{%-         set dest = '{0}/{1}/{2}'.format(ssf.formulas_path, formula, dest_file) %}
{#-         Only run the states for each suite if the same template is being used for each file (in each suite) #}
{#-         Furthermore, only continue if the `dest_file` has actually been set #}
{%-         if dest_file and dest_file not in dest_file_done %}
{%-           do dest_file_done.append(dest_file) %}

{#-           Add files by default #}
{%-           set add_or_rm = ['add', 'add', 'managed'] %}
{#-           Remove files if the file is `.cirrus.yml` and `use_cirrus_ci` is `False` #}
{#-           Or if the file is `libsaltcli.jinja` and `use_libsaltcli` is `False` #}
{#-           Likewise, if running the state for TOFS files when `use_tofs` is `False` #}
{#-           Also remove the local `CONTRIBUTING` file to use the org-level file instead #}
{%-           if (semrel_file == '.cirrus.yml' and not use_cirrus_ci) or
                 (semrel_file == 'formula/libsaltcli.jinja' and not use_libsaltcli) or
                 (semrel_file in ['docs/TOFS_pattern.rst', 'formula/libtofs.jinja'] and not use_tofs) or
                 (semrel_file in ['docs/CONTRIBUTING.rst'])
%}
{%-             set add_or_rm = ['rm', 'remove', 'absent'] %}
{%-           endif %}

{#-           Stage 2: Add or remove the file as necessary #}
{{ add_or_rm[1] }}-{{ formula }}-{{ dest_file }}:
  file.{{ add_or_rm[2] }}:
    - name: {{ dest }}
    {#-       The rest of the settings only apply when adding files #}
    {%-       if add_or_rm[0] == 'add' %}
    - source: {{ files_switch([semrel_file],
                              default_files_switch=[formula_tofs_dir]
                 )
              }}
    - mode: {{ semrel_file_specs.mode }}
    - user: {{ ssf.user }}
    - group: {{ ssf.group }}
    - makedirs: True
    - template: {{ template }}
    {#-         Only send the `context` if a file template is being used #}
    {%-         if template %}
    - context:
        {#-       Using `| yaml` since `| json` (and `| tojson`) end up quoting the indexing for `inspec_suites_kitchen` #}
        {#-       Maintaining the rest for consistency #}
        tplroot: {{ tplroot }}
        semrel_formula: {{ semrel_file_specs.alt_semrel_formula | d(semrel_formula) }}
        formula: {{ formula }}
        codeowners: {{ codeowners | yaml }}
        inspec_suites_kitchen: {{ inspec_suites_kitchen | yaml }}
        inspec_suites_matrix: {{ context.inspec_suites_matrix | yaml }}
        platforms: {{ context.platforms | yaml }}
        platforms_matrix: {{ context.platforms_matrix | yaml }}
        platforms_matrix_commented_includes: {{ context.platforms_matrix_commented_includes | yaml }}
        rubocop: {{ context.rubocop | yaml }}
        salt_lint: {{ context.salt_lint | yaml }}
        script_kitchen: {{ context.script_kitchen | yaml }}
        suite: {{ suite | yaml }}
        travis: {{ context.travis | yaml }}
        use_cirrus_ci: {{ use_cirrus_ci }}
        yamllint: {{ context.yamllint | yaml }}
    {%-         endif %}
    {%-         if ssf.git.states.prepare.active %}
    - require:
      - cmd: prepare-git-branch-for-{{ formula }}
    {%-         endif %}
    {%-       endif %}

  {%-         if ssf.git.states.add_rm.active %}
  cmd.run:
    - name: |
        git {{ add_or_rm[0] }} {{ dest_file }}
    - cwd: {{ ssf.formulas_path }}/{{ formula }}/
    {%- if running_as_root %}
    - runas: {{ ssf.user }}
    {%- endif %}
    - onchanges:
      - file: {{ add_or_rm[1] }}-{{ formula }}-{{ dest_file }}
    {%-         if ssf.git.states.commit_push.active %}
    - onchanges_in:
      - cmd: commit-and-push-{{ formula }}
    {%-         endif %}
{%-           endif %}
{%-         endif %}
{%-       endif %}
{#-     [End] for index in range(0, inspec_suites_kitchen | length) #}
{%-     endfor %}

{#-   [End] for semrel_file, semrel_file_specs in ... #}
{%-   endfor %}


{#-   Stage 3: Run the script (`git` commands) to commit and push the branch #}
{%-   if ssf.git.states.commit_push.active %}
{%-     set push_opts = ssf.git.states.commit_push.push %}
commit-and-push-{{ formula }}:
  cmd.script:
    - source: {{ ssf.git.states.commit_push.source }}
    - cwd: {{ ssf.formulas_path }}/{{ formula }}/
    - args: >-
        commit-and-push-{{ formula }}
        {{ context.git.branch.upstream }}
        {{ branch_pr }}
        {{ context.git.commit.body | regex_escape }}
        {{ context.git.commit.title | regex_escape }}
        {{ context.git.commit.body | regex_escape }}
        {{ ssf.git.commit.options | regex_escape }}
        {{ push_opts.active }}
        {{ push_opts.via_PR }}
        {{ context.git.github.remote.fork.name }}
        {{ context.git.github.remote.fork.branch }}
        {{ context.git.github.remote.upstream.name }}
        {{ context.git.github.remote.upstream.branch }}
        {{ ssf.git.commit.author }}
    {%- if running_as_root %}
    - runas: {{ ssf.user }}
    {%- endif %}
    - stateful: True
{%-   endif %}


{#-   Stage 4: Run the script (`curl` commands) to use the GitHub API to create the PR, if an existing PR isn't found #}
{%-   if ssf.git.states.create_PR.active and push_opts.active and push_opts.via_PR %}
create-github-PR-for-{{ formula }}:
  cmd.script:
    - source: {{ ssf.git.states.create_PR.source }}
    - cwd: {{ ssf.formulas_path }}/{{ formula }}/
    - args: >-
        create-github-PR-for-{{ formula }}
        {{ context.git.github.owner }}
        {{ formula }}
        {{ context.git.branch.base }}
        {{ ssf.git.github.user }}
        {{ branch_pr }}
        {{ context.git.commit.title | regex_escape }}
        {{ context.git.commit.body | regex_escape }}
        {{ ssf.git.github.file_api_response }}
    {%- if running_as_root %}
    - runas: {{ ssf.user }}
    {%- endif %}
    - stateful: True
    {%- if ssf.git.states.commit_push.active %}
    - onchanges:
      - cmd: commit-and-push-{{ formula }}
    {%- endif %}
{%-   endif %}

{#- [End] for semrel_formula, semrel_formula_specs in ... #}
{%- endfor %}
