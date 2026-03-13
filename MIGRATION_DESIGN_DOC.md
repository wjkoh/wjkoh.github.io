# Design Document: Migration to Hugo (Typo Theme)
*Date: Saturday, March 14, 2026*

## 1. Overview
This document outlines the architecture, content strategy, and step-by-step plan for migrating the personal profile and blog website of Woojong Koh from Jekyll to Hugo. The new site will utilize the [tomfran/typo](https://github.com/tomfran/typo) theme to provide a clean, modern, and text-focused aesthetic, ideal for both a professional portfolio and a technical/personal blog.

## 2. Architecture & Tech Stack
*   **Static Site Generator:** Hugo (Extended version recommended for asset processing).
*   **Theme:** `tomfran/typo` (Integrated as a Hugo module or Git submodule).
*   **Configuration Format:** TOML (`hugo.toml`), per user preference.
*   **Environment Management:** Nix (`flake.nix`) and `direnv` to ensure reproducible dev environments.
*   **Task Runner:** `go-task` (`Taskfile.yml`) for standardizing build, serve, and deployment commands.
*   **Hosting & Deployment:** GitHub Pages, automated via GitHub Actions (`.github/workflows/hugo.yml`).
*   **Domain:** `wjkoh.com` and `wjkoh.github.io` (Managed via `static/CNAME`).

## 3. Development Environment
To ensure a clean and reproducible local setup without relying on global system packages, we will use Nix and go-task:
*   **`flake.nix` & `.envrc`**: Will define a `devShell` containing `hugo` and `go-task`. `direnv` will automatically load these tools when entering the directory.
*   **`Taskfile.yml`**: Will define standard commands:
    *   `task dev`: Runs `hugo server -D`.
    *   `task build`: Runs `hugo --gc --minify`.
    *   `task clean`: Removes the `public/` and `resources/` directories.

## 4. Content Strategy & Restructuring
The current repository has a flat, Jekyll-oriented structure. This will be refactored into Hugo's standard directory structure.

### 4.1 Profile & Home Page (`content/_index.md`)
To provide a comprehensive introduction close to a full resume, the homepage will be driven by `content/_index.md`. The `typo` theme natively renders this markdown file on the front page above any post listings.
*   **Content Strategy:** We will directly translate the structure of `resume/resume.typ` into Markdown for the front page:
    *   **Introduction:** Short bio, current role (CEO & Founder of Cowork AI), and core expertise.
    *   **Experience:** Detailed bullet points for Cowork AI, Hashed, Waymo, and Nexon Corp.
    *   **Education:** UC Berkeley (Ph.D. Candidate & M.S.) and Seoul National University (B.S.).
    *   **Technical Skills:** Categorized list (Agentic AI & Protocols, ML & Infrastructure, Software & Cloud).
    *   **Selected Publications:** Key papers previously listed in `publications.md` and the resume.

### 4.2 Blog Posts & Projects (`content/posts/` and `content/projects/`)
*   **New Publication:** The draft located at `games/rg40xxv-retro-collection.md` will be published directly into `content/posts/`.
*   **Legacy Projects Migration:** 
    *   `monte-carlo-path-tracing/index.md` -> `content/projects/monte-carlo-path-tracing.md`
    *   `shadow-and-environment-mapping/index.md` -> `content/projects/shadow-and-environment-mapping.md`
    *   `view-dependent-adaptive-cloth-simulation-with-buckling-compensation.md` -> `content/projects/view-dependent-adaptive-cloth-simulation.md`
*   *Note: `personal-finance-kr.md` is a failed draft and will be permanently deleted.*

### 4.3 Static Assets (`static/`)
*   All files currently inside the `assets/` directory (images, PDFs, GIFs) will be moved to `static/assets/` or `static/images/`.
*   The `CNAME` file and `robots.txt` will be moved to the `static/` directory.
*   The latest compiled resume PDF will be placed in `static/assets/woojong-koh-resume.pdf`.

## 5. Configuration (`hugo.toml` Draft)
```toml
baseURL = "https://wjkoh.com/"
languageCode = "en-us"
title = "Woojong Koh"
theme = "typo"
paginate = 10

[params]
  author = "Woojong Koh"
  description = "CEO & Founder of Cowork AI. Software Engineer and Researcher."
  showSummary = true
  showTags = true
  
  [[params.social]]
    name = "github"
    url = "https://github.com/wjkoh"
  [[params.social]]
    name = "linkedin"
    url = "https://www.linkedin.com/in/wjkoh"
  [[params.social]]
    name = "email"
    url = "mailto:wjkoh@cwrk.ai"

[menu]
  [[menu.main]]
    identifier = "about"
    name = "About"
    url = "/"
    weight = 10
  [[menu.main]]
    identifier = "posts"
    name = "Posts"
    url = "/posts/"
    weight = 20
  [[menu.main]]
    identifier = "projects"
    name = "Projects"
    url = "/projects/"
    weight = 30
  [[menu.main]]
    identifier = "resume"
    name = "Resume"
    url = "/assets/woojong-koh-resume.pdf"
    weight = 40
```

## 6. Recommended Migration Workflow (The "Best Way to Proceed")
We will create a new Git branch, clear out the legacy Jekyll files to create a fresh slate, and then scaffold the new Hugo site.

1.  **Create a New Branch:** Run `git checkout -b feature/hugo-migration` to isolate the changes.
2.  **Scrub Legacy Files:** Delete all Jekyll-specific files and outdated content:
    *   `_config.yml`, `_authors/`, `index.md`, `publications.md`, `personal-finance-kr.md`
3.  **Setup Environment:** 
    *   Create `flake.nix` with `hugo` and `go-task`.
    *   Create `.envrc` (`use flake`) and run `direnv allow`.
    *   Create `Taskfile.yml`.
4.  **Hugo Initialization:** Run `hugo new site . --force` to scaffold the fresh directory structure.
5.  **Theme Installation:** Add the Typo theme (`git submodule add https://github.com/tomfran/typo.git themes/typo`).
6.  **Configuration & Asset Migration:** Move `assets/`, `CNAME`, and `robots.txt` to `static/`. Apply the `hugo.toml` configuration.
7.  **Content Migration:** Write the new About page and migrate the designated projects and the retro game blog post into `content/`.
8.  **CI/CD Setup:** Add `.github/workflows/hugo.yml` for GitHub Pages deployment.
9.  **Review & Commit:** Verify locally with `task dev`, stage the changes (`git add .`), commit (`git commit -m "chore: migrate site from Jekyll to Hugo"`), and push the branch for review.
