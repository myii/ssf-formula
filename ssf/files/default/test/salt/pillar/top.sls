# -*- coding: utf-8 -*-
# vim: ft=yaml
---
{#- Centralise duplication from here and `kitchen.yml` #}
{%- macro format_matcher(matcher_parent, width=10) %}
{%-   filter indent(width) %}
{%-     for mp in matcher_parent %}
{%-       for matcher, matcher_specs in mp.items() %}
'{{ matcher }}':
{%-         for matcher_child in matcher_specs %}
{%-           if matcher_child == '.' %}
{%-             set matcher_child = semrel_formula %}
{%-           elif matcher_child.startswith('.') %}
{%-             set matcher_child = semrel_formula ~ matcher_child %}
{%-           endif %}
{#-           To allow comments interspersed the list, use `list_format` accordingly #}
{%-           set list_format = '- ' %}
{%-           if matcher_child.startswith('#') %}
{%-             set list_format = '' %}
{%-           endif %}
  {{ list_format }}{{ matcher_child }}
{%-         endfor %}
{%-       endfor %}
{%-     endfor %}
{%-   endfilter %}
{%- endmacro %}
base:
  {{- format_matcher(kitchen.provisioner.top_sls, width=2) }}
...
