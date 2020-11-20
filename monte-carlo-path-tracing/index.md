---
title: Monte Carlo Path Tracing
date: 2013-03-01 00:00:00
course_project: true
---
## Monte Carlo Path Tracing
{{ page.date | date: "%B %Y" }}

{% for image in site.static_files -%}
{%- if image.path contains page.dir -%}
<a href="{{ image.path }}"><img src="{{ image.path }}" width="300"></a>
{%- endif -%}
{%- endfor %}

* Resolution: 1,024 by 768 pixels
* Material: Lambertian and Phong BRDFs
* Sampling: Cosine weighted importance sampling
* Direct lighting: Enabled
* Russian Roulette: Enabled
* Minimum length of path: 2
* Number of samples: 6,400 per pixel
