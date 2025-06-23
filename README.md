[![Netlify Status](https://api.netlify.com/api/v1/badges/a6ea1653-ceea-42a1-a6d0-7dc005c86441/deploy-status)](https://app.netlify.com/projects/hugo-classless/deploys)
[![Build and Deploy](https://github.com/mozanunal/hugo-classless/actions/workflows/ci.yml/badge.svg)](https://github.com/mozanunal/hugo-classless/actions/workflows/ci.yml)

[View the Live Demo on Netlify](https://hugo-classless.netlify.app/)

# Hugo Classless Theme

Hugo Classless is not just another theme; it's a flexible foundation designed to
work with **any classless CSS framework**. Instead of locking you into one
design, it provides clean, semantic HTML, allowing you to get a beautiful
website up and running in minutes by simply choosing a stylesheet.

![Screenshot of the Hugo Classless Theme](https://github.com/user-attachments/assets/9423caf5-ff25-4b84-813c-e01e3528395d)

---

## The "Classless" Philosophy

Most themes come with their own specific styling. This theme does the opposite.
It generates pure, well-structured HTML without any preset classes. This means
you can point it to a classless CSS framework like
[Pico.css](https://picocss.com/), [Water.css](https://watercss.kognise.dev/),
[Simple.css](https://simplecss.org/), or **any other you prefer**, and the site
will instantly adopt its appearance.

The best way to understand this is to try it yourself! Use the **live
theme-switcher** on the demo site to see how the same content dramatically
changes its look with different frameworks.

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

## Features

- **Plug & Play Styling:** By using pure semantic HTML, the theme is compatible
  with any classless CSS framework out of the box.
- **Live Theme-Switcher:** The perfect tool for demonstrating the power of
  classless CSS. Add a dropdown to your site to switch between your favorite
  frameworks on the fly.
- **Fully Configurable:** Control every key aspect, from the navigation menu to
  the list of available themes, right from your `hugo.yml` file.
- **Minimal & Fast:** No bloated JavaScript or complex dependencies. Just clean
  HTML and the style you choose.
- **Math Typesetting:** Built-in support for beautiful mathematical formulas
  using KaTeX.
- **SEO Friendly:** Uses proper semantic tags (`<header>`, `<main>`,
  `<article>`, `<nav>`, `<time>`) for better search engine indexing.

## Configuration

This theme is configured entirely through your site's `hugo.yml` file. Below is
a basic example to get you started.

### Basic Configuration Example

```yaml
# hugo.yml
baseURL: "https://example.org/"
title: "My Awesome Website"
theme: "hugo-classless"

params:
  author: "John Doe"
  description: "A personal website about cool things."

  # Define your list of classless frameworks here.
  # The first one is the default. Two or more enables the switcher.
  themes:
    - name: "Pico"
      url: "https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.classless.min.css"
    - name: "Water.css"
      url: "https://cdn.jsdelivr.net/npm/water.css@2/out/water.css"
    - name: "HTML only"
      url: ""

menu:
  main:
    - name: "Home"
      pageRef: "/"
      weight: 10
```

## Included Frameworks

The `exampleSite` comes pre-configured with a wide variety of popular classless
frameworks. You can use any of these in your own `themes` list or explore them
to find your favorite.

- [Classless.css](https://classless.de/)
- [Pico.css](https://picocss.com/)
- [Water.css](https://watercss.kognise.dev/)
- [Sakura.css](https://oxal.org/projects/sakura/)
- [Simple.css](https://simplecss.org/)
- [Almond.css](https://almond.css.alvaromontoro.com/)
- [New.css](https://newcss.net/)
- [Missing.css](https://missing.style/)
- [Bolt.css](https://boltcss.com/)
- [PerfectMFWS](https://perfectmotherfuckingwebsite.com/)

Simply copy the entry from the
[exampleSite's hugo.yml](https://github.com/mozanunal/hugo-classless/blob/main/exampleSite/hugo.yml)
and paste it into your own configuration file.

## Creating Content

To create a new post, run the following command from your site's root:

```bash
hugo new posts/my-first-post.md
```

Remember to set `draft: false` in the front matter of the file when you are
ready to publish it.

## Using Math Typesetting

If you have enabled KaTeX in your configuration (`markup.katex.enabled: true`),
you can write mathematical formulas in your Markdown files by setting
`math: true` in the page's front matter.

- **Inline math:** Wrap your formula in `\\(` and `\\)`.
- **Block math:** Wrap your formula in `\\[` and `\\]`.

## Contributing

Found a bug or have a suggestion? Please
[open an issue](https://github.com/mozanunal/hugo-classless/issues). Pull
requests are also welcome!

## License

This theme is licensed under the [MIT License](LICENSE).
