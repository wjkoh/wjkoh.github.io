---
title: Shadow and Environment Mapping
---
## Shadow and Environment Mapping (Apr. 2013)

<iframe width="640" height="360" src="http://www.youtube.com/embed/qcnALFe154o?vq=hd720" frameborder="0" allowfullscreen></iframe>

{%- for image in site.static_files -%}
{%- if image.path contains page.dir -%}
<img src="{{ image.path }}" width="300"> 
{%- endif -%}
{%- endfor %}
