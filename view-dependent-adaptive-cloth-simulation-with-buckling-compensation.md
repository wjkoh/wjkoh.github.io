---
title: View-Dependent Adaptive Cloth Simulation with Buckling Compensation
permalink: /:basename/
publication: true
date: 2015-10-01 00:00:00
authors:
- Woojong Koh
- Rahul Narain
- James F. O'Brien
journal: IEEE Transactions on Visualization and Computer Graphics (TVCG)
---

## View-Dependent Adaptive Cloth Simulation with Buckling Compensation
{% assign author_array = "" | split: "/" %}
{% for author_name in page.authors %}
  {% assign author_profile = site.authors | where: "name", author_name | first %}
  {% capture author %}{{ author_profile.output | remove: "<p>" | remove: "</p>" | strip_newlines }}{% endcapture %}
  {% assign author_array = author_array | push: author %}
{% endfor %}
{{ author_array | array_to_sentence_string }}. {{ page.journal }}, {{ page.date | date: "%B %Y" }}.

<iframe width="560" height="315" src="https://www.youtube.com/embed/71TOPXD9j4E" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

* [Project website](http://graphics.berkeley.edu/papers/Koh-VDA-2015-10/)
* Paper: [Preprint](Koh-VDA-2015-11.pdf), [IEEE DL](http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=7127098)
* Video: [YouTube](http://youtu.be/71TOPXD9j4E), [Vimeo](https://vimeo.com/142075649)
