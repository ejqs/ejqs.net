# Content

## Homepage About

`index.html`. Short bio only:

> average, cs graduate 2025.
>
> posting anything i found interesting

“Read more” links to `/about`.

## About page

`about.md`. Two paragraphs, no links:

> I’m EJ.
>
> I created this website as an outlet for my thoughts and the things that I’ve learned, so as to share it to you, the endless empty void of the internet.

## Tabs

The header has three tabs, set in `_config.yml`:

| Tab | URL | Folder |
| --- | --- | --- |
| Software | `/software` | `software/` |
| Design | `/design` | `design/` |
| Research | `/research` | `research/` |

Each folder’s `index.md` lists the other markdown files in that folder. The list links each title to its own page.

Add an entry by creating a markdown file in the folder:

```markdown
---
layout: page
title: Entry title
---

Write the entry here.
```

`index.md` is the list, not an entry. Roam Publish is `software/roam-publish.md`.

## Posts

Published posts live in `_posts/`. The folder is empty on purpose. Posts and tags are not in the header.
