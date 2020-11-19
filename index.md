## About me
Hi, my name is **Woojong Koh** and I'm a software engineer at [Waymo](https://waymo.com)<sup>[1](#waymo)</sup>
, formerly known as the [Google self-driving car project](https://www.google.com/selfdrivingcar), working on vision-based detection and classification for self-driving cars using various machine learning techniques, such as convolutional neural network (CNN), recurrent neural network (RNN), and so on. Please refer to my [CV](./assets/wjkoh-cv-public.pdf) and [LinkedIn](https://www.linkedin.com/in/wjkoh) page for more information.

Previously, I was a fourth-year Ph.D. student in Computer Science at [University of California, Berkeley](http://www.berkeley.edu) under the supervision of Prof. [James F. O'Brien](http://www.cs.berkeley.edu/~job). I received my [M.S.](https://cal.berkeley.edu/wjkoh) in Computer Science from UC Berkeley and B.S. in Computer Science and Engineering from [Seoul National University](http://en.snu.ac.kr), Seoul, South Korea. I had worked as a full-time research intern in Prof. [Jehee Lee](http://mrl.snu.ac.kr/~jehee)'s [Movement Research Lab](http://mrl.snu.ac.kr).

## Publications
{% include_relative publications.md %}

## Showcase
{% assign image_files = site.static_files | where: "showcase", true %}
{% for myimage in image_files -%}
<img src="{{ myimage.path }}" height="150" style="vertical-align:middle"> 
{%- endfor %}

## Course projects
 * [Monete Carlo Path Tracing](./monte-carlo-path-tracing)

<a name="waymo">1</a>: Waymo, formerly known as the Google self-driving car project, is a standalone company that was spun off from Google Inc. on January 1, 2017 and has been a subsidiary of Alphabet Inc. like Google and DeepMind since then.

Last updated: 2020-11-18
