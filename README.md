[![Netlify Status](https://api.netlify.com/api/v1/badges/a6ea1653-ceea-42a1-a6d0-7dc005c86441/deploy-status)](https://app.netlify.com/projects/hugo-classless/deploys)
[![Build and Deploy](https://github.com/mozanunal/hugo-classless/actions/workflows/ci.yml/badge.svg)](https://github.com/mozanunal/hugo-classless/actions/workflows/ci.yml)

# Hugo Classless Theme

A clean, configurable, and semantic Hugo theme that embraces classless CSS frameworks. Get a beautiful, modern website up and running in minutes without writing a single line of CSS.

![Screenshot of the hugo-classless theme](https://github.com/mozanunal/hugo-classless/releases)
*(Note: You will need to create a `screenshot.png` file in an `images` directory in your theme's root for this to work.)*

---

## Features

*   **Truly Classless:** Uses pure semantic HTML, making it compatible with any classless CSS framework.
*   **Fully Configurable:** Almost every aspect, from the navigation menu to the stylesheet, is controlled from your `hugo.yml` file.
*   **Live Theme-Switcher:** Add a dropdown to your site to switch between different classless frameworks on the fly, perfect for demos.
*   **Minimal & Fast:** No bloated JavaScript or complex dependencies. Just clean HTML and the style you choose.
*   **Math Typesetting:** Built-in support for beautiful mathematical formulas using KaTeX.
*   **Responsive Design:** Looks great on desktops, tablets, and mobile devices.
*   **SEO Friendly:** Uses proper semantic tags (`<header>`, `<main>`, `<article>`, `<nav>`, `<time>`) for better search engine indexing.

## Live Demo

[View the Live Demo on Netlify](https://hugo-classless.netlify.app/)

## Installation

You can install the `hugo-classless` theme in two ways:

### Method 1: As a Git Submodule (Recommended)

1.  From the root of your Hugo site, add the theme as a submodule:
    ```bash
    git submodule add https://github.com/mozanunal/hugo-classless.git themes/hugo-classless
    ```

2.  Add the theme to your `hugo.yml` file:
    ```yaml
    theme: 'hugo-classless'
    ```

### Method 2: Manual Installation

1.  Download the latest release ZIP file from the [Releases](https://github.com/mozanunal/hugo-classless/releases) page.
2.  Extract the contents into the `themes/hugo-classless` directory in your site's root.
3.  Add the theme to your `hugo.yml` file.

## Configuration

This theme is configured entirely through your site's `hugo.yml` file. Below is a detailed breakdown of all available options.

### Full Configuration Example

```yaml
# hugo.yml

# --- Core Site Configuration ---
baseURL: 'https://example.org/'
languageCode: 'en-US'
title: 'My Awesome Website'
theme: 'hugo-classless'

# --- Custom Theme Parameters ---
params:
  author: "John Doe"
  description: "A personal website about cool things."

  themes:
    - name: "Pico"
      url: "https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.classless.min.css"
    - name: "Water.css"
      url: "https://cdn.jsdelivr.net/npm/water.css@2/out/water.css"
    - name: "HTML only"
      url: ""

  themeSelectorLocation: 'header'

  faviconSVG: "/favicon.svg"
  faviconICO: "/favicon.ico"
  appleTouchIcon: "/apple-touch-icon.png"

  quicklink: false

# --- Main Navigation ---
menu:
  main:
    - name: 'Home'
      pageRef: '/'
      weight: 10
    - name: 'Posts'
      pageRef: '/posts'
      weight: 20
    - name: 'About'
      pageRef: '/about'
      weight: 30

# --- Optional: Math Typesetting (KaTeX) ---
markup:
  goldmark:
    renderer:
      unsafe: true
  katex:
    enabled: true
```

### Parameter Breakdown

#### Theme Parameters (`params`)
This block contains all the custom settings for the theme.

*   `author`: The author's name, which appears in the site footer (`&copy; 2023 John Doe`).
*   `description`: A short description of your site, used for the HTML `<meta name="description">` tag for SEO.
*   `themes`: This is a list that powers the theme-switcher.
    *   To enable the switcher, provide **two or more** themes in the list.
    *   Each theme needs a `name` (what's shown in the dropdown) and a `url` to the CSS file.
    *   The **first theme** in the list is the default style for the site.
    *   If you only list one theme, or if this block is removed, that theme will be used statically and the switcher will be hidden.
*   `themeSelectorLocation`: Controls where the theme switcher dropdown appears. Can be set to `'header'` or `'footer'`. Defaults to `'footer'` if not set.
*   `faviconSVG`, `faviconICO`, `appleTouchIcon`: Paths to your favicon files. These files should be placed in your site's `static` directory.
*   `quicklink`: Set to `true` to enable a script that pre-fetches links when they enter the viewport, making subsequent page loads feel instant.

#### Main Navigation (`menu`)
This standard Hugo feature controls the links in the header navigation.

*   Under `main:`, create a list of links.
*   `name`: The text that will be displayed for the link.
*   `pageRef`: The path to the a page (e.g., `/posts`, `/about`).
*   `weight`: A number that determines the order. Lower numbers appear first.

#### Math Typesetting (`markup`)
To enable math rendering with KaTeX, you need to add the `markup` block to your `hugo.yml`.

*   `goldmark.renderer.unsafe: true`: This is required by Hugo to allow the injection of the HTML and JavaScript needed by KaTeX.
*   `katex.enabled: true`: This tells Hugo to process KaTeX formulas on pages that have `math: true` in their front matter.

## Creating Content

To create a new post, run the following command from your site's root:
```bash
hugo new posts/my-first-post.md
```
Remember to set `draft: false` in the front matter of the file when you are ready to publish it.

## Using Math Typesetting

If you have enabled KaTeX in your configuration (`markup.katex.enabled: true`), you can write mathematical formulas in your Markdown files by setting `math: true` in the page's front matter.

-   **Inline math:** Wrap your formula in `\\(` and `\\)`.
-   **Block math:** Wrap your formula in `\\[` and `\\]`.

## Contributing

Found a bug or have a suggestion? Please [open an issue](https://github.com/mozanunal/hugo-classless/issues). Pull requests are also welcome!

## License

This theme is licensed under the [MIT License](LICENSE).
