---
title: Shadow and Environment Mapping
course_project: true
---
## Shadow and Environment Mapping
April 2013

<iframe width="640" height="360" src="http://www.youtube.com/embed/qcnALFe154o?vq=hd720" frameborder="0" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/qcnALFe154o" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


{% for image in site.static_files -%}
{%- if image.path contains page.dir -%}
<a href="{{ image.path }}"><img src="{{ image.path }}" width="300"></a>
{%- endif -%}
{%- endfor %}
