## About me
Hi, my name is **Woojong Koh** (고우종) and I'm a software engineer at [Waymo](https://waymo.com), formerly known as the [Google self-driving car project](https://www.google.com/selfdrivingcar), working on vision-based detection and classification for self-driving cars using various machine learning techniques. 

wjkoh (at) waymo.com  
[[CV]](./assets/wjkoh-cv-public.pdf) [[Google Scholar]](https://scholar.google.com/citations?user=Mz6M9j0AAAAJ&hl=en) [[LinkedIn]](https://www.linkedin.com/in/wjkoh)

## Education
* Ph.D. student, Computer Science,  Aug. 2012 - May 2016 (on leave)  
University of California, Berkeley
* M.S., Computer Science, May 2016  
University of California, Berkeley
* B.S., Computer Science and Engineering, Feb. 2012  
[Seoul National University](http://en.snu.ac.kr), Seoul, South Korea

## Publications
{% include_relative publications.md %}

## Work experience
{% assign pages = site.pages | where: "work_experience", true -%}
{%- for page in pages -%}
 * [{{ page.title }}]({{ page.url }})
{% endfor %}

* Software Engineer, [Waymo LLC](http://waymo.com), May 2016 - present  

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
