---
title: "Monte Carlo Path Tracing"
date: 2013-03-01T00:00:00Z
draft: false
tags: ["graphics", "rendering", "projects"]
---

As part of my coursework in computer graphics in 2013, I implemented a custom Monte Carlo path tracer. Path tracing is a fundamental rendering algorithm that simulates the physical behavior of light to create highly realistic images, calculating global illumination by tracing rays of light as they bounce around a 3D scene.

### Rendered Results

Below are two sample scenes rendered using the engine. The first demonstrates soft shadows, diffuse reflection, and color bleeding in a classic Cornell Box environment. The second showcases a reflective cone with complex light interactions and specular highlights.

<div style="display: flex; gap: 10px; margin-bottom: 20px;">
  <a href="/assets/box_diffuse_cos_6400.png" style="flex: 1;"><img src="/assets/box_diffuse_cos_6400.png" style="width:100%; border-radius: 8px;"></a>
  <a href="/assets/cone_phong_cos_6400.png" style="flex: 1;"><img src="/assets/cone_phong_cos_6400.png" style="width:100%; border-radius: 8px;"></a>
</div>

### Technical Specifications

To achieve these results without overwhelming noise, the engine was built with the following configurations and features:

* **Resolution:** 1,024 x 768 pixels.
* **Materials:** Support for both Lambertian (perfectly diffuse) and Phong (specular highlight) Bidirectional Reflectance Distribution Functions (BRDFs).
* **Sampling Strategy:** Cosine-weighted importance sampling to significantly reduce variance in the final render.
* **Lighting:** Explicit direct lighting calculations enabled.
* **Optimization:** Russian Roulette path termination enabled to efficiently stop tracing paths that contribute little to the final pixel color.
* **Path Constraints:** Minimum path length of 2 bounces.
* **Sample Count:** 6,400 samples per pixel to ensure a smooth, high-fidelity final image.
