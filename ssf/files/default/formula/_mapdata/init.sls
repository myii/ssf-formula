${ "# -*- coding: utf-8 -*-" }
${ "# vim: ft=sls" }
---
{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split("/")[0] %}
<% filename = map_jinja["filename"] %>\
<% import_vars = map_jinja["verification"]["import"] %>\
% for import_var in import_vars:
{%- from tplroot ~ "/${ filename }" import ${ import_var } with context %}
% endfor

{%- set _mapdata = {
% if map_jinja["version"] > 3:
      "values": mapdata,
% else:
      "values": {
        % for import_var in import_vars:
        "${ import_var }": ${ import_var },
        % endfor
      }
% endif
    } %}
{%- do salt["log.debug"]("### MAP.JINJA DUMP ###\n" ~ _mapdata | yaml(False)) %}

{%- set output_dir = "/temp" if grains.os_family == "Windows" else "/tmp" %}
{%- set output_file = output_dir ~ "/salt_mapdata_dump.yaml" %}

{{ tplroot }}-mapdata-dump:
  file.managed:
    - name: {{ output_file }}
    - source: salt://{{ tplroot }}/_mapdata/_mapdata.jinja
    - template: jinja
    - context:
        map: {{ _mapdata | yaml }}
