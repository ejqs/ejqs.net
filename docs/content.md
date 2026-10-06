# Content

## Homepage About

`index.html` is the only About. There is no `/about` page.

> I’m EJ. CS Graduate 2025.
>
> This is my portfolio website.

## Tabs

The header has three tabs, set in `_config.yml`:

| Tab | URL | Folder |
| --- | --- | --- |
| Software | `/software` | `software/` |
| Design | `/design` | `design/` |
| Research | `/research` | `research/` |

Each folder’s `index.md` lists the other markdown files in that folder, latest `date` first. The list links each title to its own page.

Name the file `YYYY-MM-DD-slug.md` and set the same date in front matter:

```markdown
---
layout: page
title: Entry title
date: 2026-10-06
---

Write the entry here.
```

`index.md` is the list, not an entry.

| Entry | File | Date |
| --- | --- | --- |
| Roam Publish | `software/2026-10-04-roam-publish.md` | 2026-10-04, the day it was added to this site |
| Beyond Keywords | `research/2025-04-29-beyond-keywords.md` | 2025-04-29, collection last updated |
| PHLEX | `research/2024-08-06-phlex.md` | 2024-08-06, dataset created |

## Posts

Published posts live in `_posts/`. The folder is empty on purpose. Posts and tags are not in the header.
