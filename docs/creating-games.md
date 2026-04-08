# GenAI Arcade - Creating Games

This document outlines the new (as of April 2026) process for creating games for the GenAI Arcade. It is intended to replace the previous [documentation on this topic](./legacy/creating-games.md).

## Daily Workflows

Games are managed in the `_games/` directory.

### Adding a new game

Put a Markdown file inside the category folder you want it to appear in. For example:

```text
_games/
  01-understanding/
    03-my-new-game.md
```

Optionally, use a numeric prefix so the file sorts where you want it in the navigation.

Then add the required frontmatter to the top of the file:

```yaml
---
layout: default
title: "My New Game"
summary: "A short one-sentence description of the game."
---
```

### Adding a new tag

Create a new subdirectory under `_games/` and add an `index.md` file. Again, optional numeric prefixes can be used to control the order of categories.

For example:

```text
_games/
  05-applications/
    index.md
    00-first-tool.md
    01-second-tool.md
```

Minimum frontmatter for the category page:

```yaml
---
title: "Applications"
summary: "Games about how generative AI is used in real-world tools and workflows."
---
```

That folder becomes the tag, and everything inside it belongs to that category automatically.

> [!NOTE]
>
> Once tags and games are created this way, the custom plugins will additionally handle:
>
> * Forward & backward navigation based on the order of files
> * Clean numeric prefixes in URLs

## Technical Details

Frontend is still Jekyll + HTML, deployed to GitHub Pages via the workflow in `.github/workflows/deploy.yml`, with the custom domain `genai-arcade.net` attached.

You can read more about Jekyll here if you are not familiar: [Jekyll • Simple, blog-aware, static sites | Transform your plain text into static websites and blogs](https://jekyllrb.com/)

GitHub: [QUT-GenAI-Lab/genai-arcade: The QUT GenAI Lab's repo for their GenAI arcade, containing code for their widgets and website](https://github.com/QUT-GenAI-Lab/genai-arcade)

Every change pushed to the `main` branch triggers a GitHub Pages build. The workflow runs `bundle exec jekyll build`, uploads the generated site, and deploys it.

The previous system had several limitations:

- It made use of `_posts`, which was not designed for the sort of content we are creating (not blogs).
- It used a fragile "before" and "after" system for ordering content, which was not scalable or maintainable, especially as the number of games increased. Adding new games required manually updating the "before" and "after" fields of existing games, which was error-prone and time-consuming.
- Despite the frontend mimicking a file system, it was not actually built on a file system, so the posts (or "games") had to be tagged individually with the correct "tag" metadata to determine which tag (or category) they belonged to.

The new system aims to address these limitations, making use of Jekyll's collections feature and custom plugins to make content management more intuitive.

Unlike the old setup, games are no longer stored in `_posts/`. They now live in the `_games/` collection, which is configured in `_config.yml` like this:

```yaml
collections:
  games:
    output: true
```

This matters because Jekyll now treats games as a proper content type instead of pretending they are blog posts. That means we can organise them as files and folders, which is much closer to how the site actually works.

At a high level, the current system works like this:

```text
_games/
  00-how-to.md
  01-understanding/
    index.md
    00-word-by-word.markdown
    01-calculator.md
    02-linkedin-generator.markdown
  02-training/
    index.md
    ...
```

- Subdirectories inside `_games/` are the top-level categories shown as folders on the site.
- The `index.md` inside each category folder becomes that category's landing page.
- Other Markdown files in that folder become the individual games.
- Ordering comes from the file path, not from frontmatter metadata.
- The numeric prefixes are for sorting only and are stripped out of the final URL.

There are four custom plugins in `_plugins/` that make this work:

1. `ignore_games.rb`

   Filters out content that should not be published. A file is ignored if any of the following are true:

   - it lives in a folder called `ignored`
   - its filename ends with `ignored.md`
   - it has `ignored: true` in frontmatter

2. `auto_tag_games.rb`

   Automatically assigns the tag based on the first subdirectory inside `_games/`.

   For example:

   - `_games/01-understanding/01-calculator.md` gets the tag `understanding`
   - `_games/03-limits/04_RAG.md` gets the tag `limits`

   It also automatically sets `layout: tag` on category `index.md` files, so you do not have to add that manually.

3. `clean_games_url.rb`

   Generates the public permalink by removing leading numeric prefixes from folder and file names.

   For example:

   - `_games/01-understanding/index.md` becomes `/understanding/`
   - `_games/01-understanding/01-calculator.md` becomes `/understanding/calculator/`
   - `_games/03-limits/04_RAG.md` becomes `/limits/RAG/`

4. `inject_navigation.rb`

   Automatically generates the `before` and `after` data used by the Previous/Next links at the bottom of each page. The ordering is derived from the file path, with `index.md` treated as the first item inside its folder.

   In practice, this gives you a depth-first style traversal of `_games/` without needing to manually wire pages together.

This means the old fragile system is gone:

- You do not need to use `_posts/`.
- You do not need to set `before` and `after` manually.
- You do not need to set the category tag manually for normal games.

### How ordering works

There is no separate `order` field in frontmatter. The order comes directly from the path names.

For example, with these files:

```text
_games/
  01-understanding/
    index.md
    00-word-by-word.markdown
    01-calculator.md
    02-linkedin-generator.markdown
    03-my-new-game.md
```

The navigation order inside that section will be:

1. `index.md`
2. `00-word-by-word.markdown`
3. `01-calculator.md`
4. `02-linkedin-generator.markdown`
5. `03-my-new-game.md`

If you want a game to appear between `01-calculator.md` and `02-linkedin-generator.markdown`, rename files so the alphabetical order does what you want.

For example:

```text
01-calculator.md
015-new-game.md
02-linkedin-generator.markdown
```

or, more cleanly:

```text
01-calculator.md
02-new-game.md
03-linkedin-generator.markdown
```

### How URLs and summaries work

Because the URL cleaner strips numeric prefixes, a file like this:

```text
_games/01-understanding/03-my-new-game.md
```

becomes:

```text
/understanding/my-new-game/
```

The `summary` field is used in two places:

- on game pages, it becomes the short description shown on the homepage under the game title
- on category `index.md` pages, it becomes the short description shown on the homepage under the category title

For example:

```yaml
summary: "Explore why generative AI struggles with maths, and what that tells us about the difference between knowing a fact and predicting a pattern."
```

### Standalone pages in `_games/`

There are also a couple of top-level pages in `_games/` such as:

- `00-how-to.md`
- `05-about-us.md`

These are not category pages. They are regular pages that sit at the top level of the arcade navigation.

Because they are not inside a category folder, they still use an explicit tag:

```yaml
---
layout: default
title: "About Us"
tags: genai-arcade
---
```

You will usually only need this pattern if you are adding a top-level informational page rather than a game inside a category.

### Hiding work in progress

If you are drafting a game and do not want it published yet, you have three options:

1. Put it inside `_games/ignored/`
2. Put it in any folder named `ignored`
3. Add `ignored: true` to the frontmatter

Example:

```yaml
---
layout: default
title: "Half Finished Game"
summary: "Draft only"
ignored: true
---
```

This is useful if you want to keep unfinished material in the repo without exposing it on the live site.

## Local preview workflow

If you are making content changes, it is easiest to preview them locally before pushing.

The recommended setup in this repo is:

1. Install Ruby
2. Install Bundler
3. Run `bundle install`
4. Start Jekyll with `bundle exec jekyll serve`

Once the server is running, the site will be available at `http://localhost:4000`.

If you are working in Codespaces, the port should forward automatically.