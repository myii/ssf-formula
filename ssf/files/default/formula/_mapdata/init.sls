${ "# -*- coding: utf-8 -*-" }
${ "# vim: ft=sls" }
---
{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split("/")[0] %}
<% dir = map_jinja["dir"] %>\
<% filename = map_jinja["filename"] %>\
<% import_vars = map_jinja["verification"]["import"] %>\
<% with_or_without = map_jinja["context"] %>\
% for import_var in import_vars:
{%- from tplroot ~ "${ dir }/${ filename }" import ${ import_var } ${with_or_without} context %}
% endfor

{%- set _mapdata = {
% if len(import_vars) == 1:
      "values": ${ import_vars[0] },
% else:
      "values": {
        % for import_var in import_vars:
        "${ import_var }": ${ import_var },
        % endfor
      }
% endif
    } %}
<% log_level = "trace" if semrel_formula in ["ssf"] else "debug" %>\
{%- do salt["log.${ log_level }"]("### MAP.JINJA DUMP ###\n" ~ _mapdata | yaml(False)) %}

{%- set output_dir = "/temp" if grains.os_family == "Windows" else "/tmp" %}
{%- set output_file = output_dir ~ "/salt_mapdata_dump.yaml" %}

{{ tplroot }}-mapdata-dump:
  file.managed:
    - name: {{ output_file }}
    - source: salt://{{ tplroot }}${ dir }/_mapdata/_mapdata.jinja
    - template: jinja
    - context:
        map: {{ _mapdata | yaml }}
