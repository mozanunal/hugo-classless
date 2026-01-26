---
title: "Markdown Showcase"
date: 2023-03-01T10:00:00-07:00
draft: false
description: "A comprehensive showcase of Markdown elements and theme features."
tags:
  - "markdown"
  - "test"
  - "hugo"
categories:
  - "Features"
toc: true
---

This post demonstrates common Markdown elements and theme features including the Table of Contents, tables, images, blockquotes, and more.

## Text Formatting

You can write **bold text**, *italic text*, and ***bold italic*** text. You can also use ~~strikethrough~~ and `inline code`.

Here is a paragraph with a [link to Hugo](https://gohugo.io/) and a footnote reference[^1].

[^1]: This is the footnote content.

## Blockquotes

> "The best way to predict the future is to invent it."
> — Alan Kay

Nested blockquotes also work:

> This is the first level.
>
> > This is a nested blockquote.

## Lists

### Unordered List

- First item
- Second item
  - Nested item A
  - Nested item B
- Third item

### Ordered List

1. First step
2. Second step
3. Third step

### Task List

- [x] Write the post
- [x] Add front matter
- [ ] Review and publish

## Code Blocks

```go
package main

import "fmt"

func main() {
    fmt.Println("Hello, Hugo Classless!")
}
```

## Tables

| Feature       | Status |
|---------------|--------|
| Pagination    | Done   |
| Tags          | Done   |
| ToC           | Done   |
| Breadcrumbs   | Done   |
| Related Posts  | Done   |

## Horizontal Rule

---

## Details (Collapsible Content)

{{% details summary="Click to expand" %}}
This is hidden content inside a collapsible `<details>` element, using the theme's `details` shortcode.
{{% /details %}}

## Callout

{{% callout type="tip" %}}
You can use the `callout` shortcode with types: `info`, `warning`, `tip`, and `note`.
{{% /callout %}}

## Images

![Hugo Logo](https://gohugo.io/images/hugo-logo-wide.svg)

## Summary

This post demonstrates how the Hugo Classless theme handles a wide variety of Markdown content. Every element above uses semantic HTML that works with any classless CSS framework.
