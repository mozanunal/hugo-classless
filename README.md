[![Netlify Status](https://api.netlify.com/api/v1/badges/a6ea1653-ceea-42a1-a6d0-7dc005c86441/deploy-status)](https://app.netlify.com/projects/hugo-classless/deploys)
[![Build and Deploy](https://github.com/mozanunal/hugo-classless/actions/workflows/ci.yml/badge.svg)](https://github.com/mozanunal/hugo-classless/actions/workflows/ci.yml)

# Hugo Classless Theme

A clean, configurable, and semantic Hugo theme that embraces classless CSS frameworks. Get a beautiful, modern website up and running in minutes without writing a single line of CSS.

![Screenshot of the hugo-classless theme in action](https://path-to-your/screenshot.png)
*(Note: You should replace the above image path with an actual screenshot of your theme.)*

---

## Features

*   **Truly Classless:** Uses pure semantic HTML, making it compatible with any classless CSS framework.
*   **Fully Configurable:** Almost every aspect, from the navigation menu to the stylesheet, is controlled from your `hugo.yml` file.
*   **Live Theme-Switcher:** Add a dropdown to your site's footer to switch between different classless frameworks on the fly, perfect for demos.
*   **Minimal & Fast:** No bloated JavaScript or complex dependencies. Just clean HTML and the style you choose.
*   **Math Typesetting:** Built-in support for beautiful mathematical formulas using KaTeX.
*   **Responsive Design:** Looks great on desktops, tablets, and mobile devices.
*   **SEO Friendly:** Uses proper semantic tags (`<header>`, `<main>`, `<article>`, `<nav>`, `<time>`) for better search engine indexing.

## Live Demo

[Link to your live demo site here](https://example.com)

## Installation

You can install the `hugo-classless` theme in two ways:

### Method 1: As a Git Submodule (Recommended)

1.  From the root of your Hugo site, add the theme as a submodule:
    ```bash
    git submodule add https://github.com/your-username/hugo-classless.git themes/hugo-classless
    ```
    *(Replace `your-username` with your actual GitHub username.)*

2.  Add the theme to your `hugo.yml` file:
    ```yaml
    theme: 'hugo-classless'
    ```

### Method 2: Manual Installation

1.  Download the latest release ZIP file from the [Releases](https://github.com/your-username/hugo-classless/releases) page.
2.  Extract the contents into the `themes/hugo-classless` directory in your site's root.
3.  Add the theme to your `hugo.yml` file:
    ```yaml
    theme: 'hugo-classless'
    ```

## Configuration

This theme is configured entirely through your site's `hugo.yml` file. Below is a complete example.

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

  # --- Asset Configuration ---
  faviconSVG: "/favicon.svg"
  faviconICO: "/favicon.ico"
  appleTouchIcon: "/apple-touch-icon.png"

  # --- Stylesheet Configuration ---
  # To enable the live theme-switcher in the footer, define a list of themes.
  # The first theme in the list will be the default.
  # The name is shown in the dropdown; the URL is the path to the CSS file.
  themes:
    - name: "Classless.css"
      url: "https://cdn.jsdelivr.net/gh/digitallytailored/classless@latest/classless.min.css"
    - name: "Water.css"
      url: "https://cdn.jsdelivr.net/npm/water.css@2/out/water.css"
    - name: "MVP.css"
      url: "https://unpkg.com/mvp.css"
    - name: "Sakura"
      url: "https://unpkg.com/sakura.css/css/sakura.css"

  # Optional: Control where the theme selector appears.
  # Values: 'header' or 'footer'. Defaults to 'footer'.
  themeSelectorLocation: 'header'

  # If the "themes" list above is not set, you can use a single static stylesheet instead.
  # css: "https://cdn.jsdelivr.net/gh/digitallytailored/classless@latest/classless.min.css"

# --- Main Navigation ---
# Hugo uses the "menu" key in YAML.
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
      # This is required for KaTeX to work properly.
      unsafe: true
  katex:
    # Set to true to enable KaTeX processing on pages with math.
    enabled: true
```

### Creating Content

To create a new post, run the following command from your site's root:
```bash
hugo new posts/my-first-post.md
```
Remember to set `draft: false` in the front matter of the file when you are ready to publish it.

### Using Math Typesetting

If you have enabled KaTeX in your configuration, you can write mathematical formulas in your Markdown files.

-   **Inline math:** Wrap your formula in `\\(` and `\\)`.
    -   Example: `\\( a^2 + b^2 = c^2 \\)` will render as an inline formula.
-   **Block math:** Wrap your formula in `\\[` and `\\]`.
    -   Example: `\\[ x = \frac{-b \pm \sqrt{b^2-4ac}}{2a} \\]` will render as a centered block formula.

## Contributing

Found a bug or have a suggestion? Please [open an issue](https://github.com/your-username/hugo-classless/issues). Pull requests are also welcome!

## License

This theme is licensed under the [MIT License](LICENSE).
