---
title: Shadow and Environment Mapping
date: 2013-04-01 00:00:00
course_project: true
---
## Shadow and Environment Mapping
{{ page.date | date_to_string }}

<iframe width="560" height="315" src="https://www.youtube.com/embed/qcnALFe154o" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{% for image in site.static_files -%}
{%- if image.path contains page.dir -%}
<a href="{{ image.path }}"><img src="{{ image.path }}" width="300"></a>
{%- endif -%}
{%- endfor %}
