# GenAI Arcade - Creating Games

Frontend is jekyll + html deployed on github pages via a github workflow, with a custom URL attached (genai-arcade.net).

You can read more about jekyll here, if you’re not familiar: [Jekyll • Simple, blog-aware, static sites | Transform your plain text into static websites and blogs](ht/categorytps://jekyllrb.com/)

Github: [QUT-GenAI-Lab/genai-arcade: The QUT GenAI Lab's repo for their GenAI arcade, containing code for their widgets and website](https://github.com/QUT-GenAI-Lab/genai-arcade)

Every change you make to this github’s main branch will trigger a github workflow that uses jekyll to rebuild the website with whatever new content changes you’ve added. This includes any commits that don’t even touch the content of the website itself, but that’s no big deal.

To add more content to the website, you need to add a markdown file to `_posts`/ with the correct format, which is semi-custom. The sort of YAML-y frontmatter/header thingo that we use for these posts is this:

```yaml
---
layout: default
title: "LinkedIn Generator"
tags: understanding
before: calculator
after: training
---
```

Bit janky, but jekyll was mostly built for blogs and we’re allowed to add custom variables to this header so whatever.

The weird and fragile variables here are the “before” and “after” variables - this indicates which posts/games are before and after this page. The reason this is set out like this is because the only built-in function for ordering in jekyll is by blog post date, which excludes generic non-blog pages (which we need in the ordering).

NOTE: These before and after variables use the titles of the .md files without the date, NOT the “title” var of a blog post. It is used to string-match to the .md and generate a relative URL in-line

```text
_posts/
  2024-10-11-average-internet.markdown
  2024-10-11-calculator.markdown
  2024-10-11-linkedin-generator.markdown
  2024-10-11-milkless.markdown
  2024-10-11-multilingual.markdown
```

E.g. here - the titles would be “average-internet”, “calculator”, “linkedin-generator”, “milkless”, and “multilingual”.

**TAGS**:

Tags are how we organise the website into categories, up the top of the website.

Currently, there are 4 tags: Understanding, Training, Limits, Values.

Generally we won’t have to change these, and we likely won’t, but it’s good to know in case we do. To change an existing tag, go into **/tags** and edit whichever `tag.md` you need to, the same way you’d change any content or post.

To add tags, add an additional bit of metadata in `_data/tags.yml`:

```yaml
tag1:
  name: tag1

tag2:
  name: tag2

tag3:
  name: tag3

tag4:
  name: tag4
```

For example, if you wanted to add a 5th tag, add:

```yaml
tag5:
  name: tag5
```

Then, in `/tags`, add a `tag5.md` and write up the frontmatter and content, as per the rest of the tags/content of the site:

```yaml
---
layout: tag
tag: training
permalink: /tag/training/
before: linkedin-generator
after: average-internet
title: Training
slug: training
---
```