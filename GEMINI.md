# Workspace Context & Lessons Learned

## Tech Stack
*   **Static Site Generator:** Hugo (Extended).
*   **Theme:** `tomfran/typo` (Submodule).
*   **Environment:** Nix (`flake.nix`) and `direnv`.
*   **Task Runner:** Go-Task (`Taskfile.yml`).
*   **Deployment:** GitHub Pages via GitHub Actions (`.github/workflows/hugo.yaml`).

## Architecture & Conventions
*   **Content Structure:** The site uses Hugo **Leaf Bundles** (e.g., `content/posts/post-name/index.md`). All posts, projects, and articles live under the unified `/posts/` section.
*   **Tags:** Use the **all-lowercase smash** format (e.g., `#retrogaming`, `#computergraphics`) without spaces or hyphens to fit the theme's minimal aesthetic. 
*   **Front Page:** `content/_index.md` acts as the resume/profile page. The bottom of the page is configured to list the `posts` collection.
*   **Navigation:** Top-level menus are configured in `hugo.toml` under `[[params.menu]]`.
*   **Drafts:** Keep unfinished markdown files out of the `content/` directory entirely (e.g., store them in a root `/games-drafts/` folder) to prevent Hugo from rendering them as phantom pages.
*   **Persistence:** Always include Internet Archive (Wayback Machine) and DOI links alongside academic publications or crucial project URLs to prevent link rot.

## Troubleshooting Notes
*   **Theme Capitalization:** The Typo theme automatically capitalizes tags (e.g., `#Retrogaming`). We decided to **leave the theme unmodified** rather than overriding local layouts, so it can be easily updated via `git submodule update` in the future.
*   **GitHub Actions:** When using multiline shell commands (like `wget` or `hugo`) in `.github/workflows/`, ensure proper line continuation characters (``) are used to prevent bash syntax errors.
*   **Pagination:** When configuring `paginationSize` for the Typo theme's front page, ensure the parameter is placed at the root of the `[params]` block in `hugo.toml`, not nested accidentally inside `[params.breadcrumbs]`.
*   **Google Verification:** Google Site Verification files (`googleeec6820fd46555c3.html`) and `CNAME` files must be placed inside the `static/` directory so Hugo builds them into the root of the output site.
