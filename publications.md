* [View-Dependent Adaptive Cloth Simulation](https://www2.eecs.berkeley.edu/Pubs/TechRpts/2016/EECS-2016-5.pdf), **Woojong Koh**, Master's Thesis, Technical Report No. UCB/EECS-2016-5, University of California at Berkeley, January 2016.
* [View-Dependent Adaptive Cloth Simulation with Buckling Compensation](./view-dependent-adaptive-cloth-simulation-with-buckling-compensation), **Woojong Koh**, Rahul Narain, and James F. O'Brien. IEEE Transactions on Visualization and Computer Graphics (TVCG), October 2015.
* View-Dependent Adaptive Cloth Simulation, **Woojong Koh**, Rahul Narain, and James F. O'Brien. ACM SIGGRAPH/Eurographics Symposium on Computer Animation (SCA), July 2014.
* Near-exhaustive Precomputation of Secondary Cloth Effects, Doyub Kim, **Woojong Koh**, Rahul Narain, Kayvon Fatahalian, Adrien Treuille, and James F. O'Brien. ACM SIGGRAPH 2013, July 2013.

{% assign pages = site.pages | where: "publication", true | sort: "date" | reverse -%}
{%- for page in pages -%}
 * [{{ page.title }}]({{ page.url }}), {{ page.authors | array_to_sentence_string }}. {{ page.journal }}, {{ page.date | date: "%B %Y" }}.
{% endfor %}
