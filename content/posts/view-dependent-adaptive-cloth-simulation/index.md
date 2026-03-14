---
title: "View-Dependent Adaptive Cloth Simulation with Buckling Compensation"
date: 2015-10-01T00:00:00Z
draft: false
tags: ["publication", "graphics", "simulation"]
---

*Published in IEEE Transactions on Visualization and Computer Graphics (TVCG), October 2015.*  
**Authors:** Woojong Koh, Rahul Narain, and James F. O'Brien.

### Abstract

This paper presents a novel method for view-dependent cloth simulation using dynamically adaptive mesh refinement and coarsening. 

Simulating highly detailed cloth is computationally expensive. However, much of that detail is often imperceptible to the viewer depending on the camera's position. Given a prescribed camera motion, our method adjusts the criteria controlling the mesh refinement to account for both visibility and apparent size within the camera’s view frustum. 

To prevent objectionable dynamic artifacts (like "popping" meshes), the system employs anticipative refinement and smoothed coarsening. This approach preserves the high-fidelity appearance of detailed cloth throughout the animation while completely avoiding the wasted computational effort of simulating microscopic folds that are too far away or occluded to be seen. 

The computational savings realized by this method scale significantly as scene complexity grows, producing a **2x speed-up for a single character** and more than a **4x speed-up for scenes involving a small group**.

### Video Demonstration

<div style="margin: 20px 0;">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/71TOPXD9j4E" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="border-radius: 8px;"></iframe>
</div>

### Resources & Links

* **Paper:** [Preprint PDF](/assets/Koh-VDA-2015-10.pdf) | [IEEE DL](https://doi.org/10.1109/TVCG.2015.2446482) ([Archive](https://web.archive.org/web/20240914105709/https://ieeexplore.ieee.org/document/7127098))
* **Project Page:** [UC Berkeley Graphics Lab](http://graphics.berkeley.edu/papers/Koh-VDA-2015-10/) ([Archive](https://web.archive.org/web/20260121230248/http://graphics.berkeley.edu/papers/Koh-VDA-2015-10/))
* **Video Mirrors:** [YouTube](http://youtu.be/71TOPXD9j4E) | [Vimeo](https://vimeo.com/142075649)
