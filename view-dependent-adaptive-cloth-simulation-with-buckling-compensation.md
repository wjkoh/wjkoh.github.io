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
{% for author_name in page.authors %}
{%- assign author_profile = site.authors | where: "name", author_name | first -%}
[{{ author_profile.content | strip_html }}]({{ author_profile.url }}),
{%- endfor %}

{{ page.authors | array_to_sentence_string }}.
{{ page.journal }}, {{ page.date | date: "%B %Y" }}.

**Woojong Koh**, [Rahul Narain](http://www.eecs.berkeley.edu/~narain/), and [James F. O'Brien](http://www.cs.berkeley.edu/~job/).
IEEE Transactions on Visualization and Computer Graphics (TVCG), October 2015.

* [Project website](http://graphics.berkeley.edu/papers/Koh-VDA-2015-10/)
* Paper: [Preprint](Koh-VDA-2015-11.pdf), [IEEE DL](http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=7127098)
* Video: [YouTube](http://youtu.be/71TOPXD9j4E), [Vimeo](https://vimeo.com/142075649)

<iframe width="560" height="315" src="https://www.youtube.com/embed/71TOPXD9j4E" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
