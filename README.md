# Woojong Koh's Personal Profile & Blog

Welcome to the source repository for my personal website and blog, available at [wjkoh.com](https://wjkoh.com) and [wjkoh.github.io](https://wjkoh.github.io).

This site serves as my professional portfolio, detailing my experience in Agentic AI, LLM-driven trading systems, and computer graphics, as well as a platform for my personal blog posts and legacy projects.

## Tech Stack
The site is built with modern, text-focused static site generation in mind:
*   **Generator:** [Hugo](https://gohugo.io/) (Extended)
*   **Theme:** [Typo](https://github.com/tomfran/typo) (Clean, minimal, fast)
*   **Configuration:** `hugo.toml`
*   **Environment Management:** Nix (`flake.nix`) and `direnv`
*   **Task Runner:** [Go-Task](https://taskfile.dev/)
*   **Hosting:** GitHub Pages

---

## Local Development Setup

To ensure a perfectly reproducible local development environment without cluttering your system with global packages, this repository uses **Nix**.

### Prerequisites
1. Install [Nix](https://nixos.org/download.html).
2. Install [direnv](https://direnv.net/).

### Getting Started

1. Clone the repository and its submodules (crucial for the Hugo theme):
   ```bash
   git clone --recurse-submodules https://github.com/wjkoh/wjkoh.github.io.git
   cd wjkoh.github.io
   ```
2. Allow `direnv` to load the Nix development environment (this will automatically install Hugo and Go-Task locally):
   ```bash
   direnv allow
   ```
3. Run the local development server:
   ```bash
   task dev
   ```
4. Open your browser and navigate to `http://localhost:1313`.

*(If you do not want to use Nix, simply install `hugo` (extended version) and run `hugo server -D` in the root directory).*

---

## Content Management

*   **Profile/Resume:** The main landing page is managed via `content/_index.md`.
*   **Posts & Projects:** All articles, legacy course projects, and blog drafts reside in `content/posts/`.
*   **Assets:** Images, PDFs, and legacy GIFs are stored in `static/assets/`.
*   **Configuration:** All site-wide settings, social links, and navigation menus are configured in `hugo.toml`.

---

## Deployment (GitHub Pages)

This site uses a custom GitHub Actions workflow to automatically build and deploy to GitHub Pages. It bypasses GitHub's default Jekyll builder to take advantage of Hugo's native speed and extended features.

1.  **Workflow File:** The deployment logic is defined in `.github/workflows/hugo.yaml`.
2.  **Trigger:** Pushing any changes to the `main` branch automatically triggers the workflow.
3.  **Process:** The action checks out the repository (with submodules), installs the correct version of the Hugo CLI, builds the site into the `public/` directory, and deploys that artifact to GitHub Pages.
4.  **Custom Domain:** The `static/CNAME` file ensures that GitHub Pages routes traffic from `wjkoh.com` correctly after every deployment. 

*(Note: To make sure GitHub Actions has permission to deploy, ensure that in the repository settings under **Pages -> Build and deployment**, the "Source" is set to **GitHub Actions**).*
