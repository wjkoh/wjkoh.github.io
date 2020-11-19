---
title: Monte Carlo Path Tracing
course_project: true
---
March 2013

{%- for image in site.static_files -%}
{%- if image.path contains page.dir -%}
<img src="{{ image.path }}" width="300"> 
{%- endif -%}
{%- endfor %}

* Resolution: 1,024 by 768
* Material: Lambertian and Phong BRDFs
* Sampling: Cosine weighted importance sampling
* Direct lighting: Enabled
* Russian Roulette: Enabled
* Minimum length of path: 2
* Number of samples: 6,400 per pixel
