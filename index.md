## About me
Hi, my name is **Woojong Koh** and I'm a software engineer at [Waymo](https://waymo.com), formerly known as the [Google self-driving car project](https://www.google.com/selfdrivingcar), working on vision-based detection and classification for self-driving cars using various machine learning techniques. 

wjkoh (at) waymo.com  
[[CV]](./assets/wjkoh-cv-public.pdf) [[Google Scholar]](https://scholar.google.com/citations?user=Mz6M9j0AAAAJ&hl=en) [[LinkedIn]](https://www.linkedin.com/in/wjkoh)

## Education
* Ph.D. student on leave, University of California, Berkeley.
* Master of Science, University of California, Berkeley.
* Bachelor of Science, Seoul National University.

Prior to joining Waymo, I was a fourth-year Ph.D. student in Computer Science at [University of California, Berkeley](http://www.berkeley.edu) under the supervision of Prof. [James F. O'Brien](http://www.cs.berkeley.edu/~job). I received my [M.S.](https://cal.berkeley.edu/wjkoh) in Computer Science from UC Berkeley and B.S. in Computer Science and Engineering from [Seoul National University](http://en.snu.ac.kr), Seoul, South Korea. I had worked as a full-time research intern in Prof. [Jehee Lee](http://mrl.snu.ac.kr/~jehee)'s [Movement Research Lab](http://mrl.snu.ac.kr).

## Publications
{% include_relative publications.md %}

## Work experience
{% assign pages = site.pages | where: "work_experience", true -%}
{%- for page in pages -%}
 * [{{ page.title }}]({{ page.url }})
{% endfor %}

## Course projects
{% assign pages = site.pages | where: "course_project", true | sort: "date" | reverse -%}
{%- for page in pages -%}
 * [{{ page.title }} ({{ page.date | date: "%b %Y" }})]({{ page.url }})
{% endfor %}

## Showcase
{% for image in site.static_files -%}
{%- if image.path contains "/showcase/" -%}
<a href="{{ image.path }}"><img src="{{ image.path }}" style="width:33%"></a>
{%- endif -%}
{%- endfor %}

Last updated: 2020-11-18
