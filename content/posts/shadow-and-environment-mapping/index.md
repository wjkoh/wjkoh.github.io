---
title: "Shadow and Environment Mapping"
date: 2013-04-01T00:00:00Z
draft: false
tags: ["graphics", "rendering", "projects"]
---

As part of my computer graphics coursework, I built an engine to explore two fundamental rasterization techniques used to dramatically improve the realism of 3D scenes: **Shadow Mapping** and **Environment Mapping**.

While rasterization is incredibly fast, it doesn't naturally handle global light interactions like shadows or reflections. These mapping techniques act as clever workarounds to simulate these physical properties in real-time rendering environments.

### Demonstration

The video below demonstrates the engine running in real-time. It showcases dynamic shadow casting as the light source moves across the scene, and environment mapping on complex geometric models (the Stanford Armadillo and a Heptoroid).

<div style="margin: 20px 0;">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/qcnALFe154o" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="border-radius: 8px;"></iframe>
</div>

### Technical Overview

* **Shadow Mapping:** This technique involves a two-pass rendering system. First, the scene is rendered from the perspective of the light source to create a "depth map." During the final render pass from the camera's perspective, this map is sampled to determine if a pixel is in shadow or directly illuminated by the light.
* **Environment Mapping:** Also known as reflection mapping, this technique uses a pre-rendered image of the surrounding scene (often a cube map or sphere map) to simulate highly reflective, mirror-like surfaces without the immense computational cost of tracing individual reflection rays. 

### Render Gallery

Here are some high-resolution stills from the project, demonstrating the sharp reflections and self-shadowing on the models.

<div style="display: flex; gap: 10px; margin-bottom: 20px;">
  <a href="/assets/armadillo.off_0534.png" style="flex: 1;"><img src="/assets/armadillo.off_0534.png" style="width:100%; border-radius: 8px;"></a>
  <a href="/assets/armadillo.off_0540.png" style="flex: 1;"><img src="/assets/armadillo.off_0540.png" style="width:100%; border-radius: 8px;"></a>
  <a href="/assets/heptoroid.off_0790.png" style="flex: 1;"><img src="/assets/heptoroid.off_0790.png" style="width:100%; border-radius: 8px;"></a>
</div>
