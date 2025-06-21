[![Netlify Status](https://api.netlify.com/api/v1/badges/a6ea1653-ceea-42a1-a6d0-7dc005c86441/deploy-status)](https://app.netlify.com/projects/hugo-classless/deploys) [![Build and Deploy to Public Branch](https://github.com/mozanunal/hugo-classless/actions/workflows/deploy.yml/badge.svg)](https://github.com/mozanunal/hugo-classless/actions/workflows/deploy.yml)

# Hugo Classless Theme

A clean, configurable, and semantic Hugo theme that embraces classless CSS frameworks. Get a beautiful, modern website up and running in minutes without writing a single line of CSS.

![Screenshot of the hugo-classless theme in action](https://path-to-your/screenshot.png)
*(Note: You should replace the above image path with an actual screenshot of your theme.)*

---

## Features

*   **Truly Classless:** Uses pure semantic HTML, making it compatible with any classless CSS framework (e.g., [classless.css](https://classless.de/), [MVP.css](https://mvp.css.org/), [Water.css](https://watercss.kognise.dev/)).
*   **Fully Configurable:** Almost every aspect, from the navigation menu to the stylesheet itself, is controlled from your `hugo.toml` file.
*   **Minimal & Fast:** No bloated JavaScript or complex dependencies. Just clean HTML and the style you choose.
*   **Math Typesetting:** Built-in support for beautiful mathematical formulas using KaTeX.
*   **Responsive Design:** Looks great on desktops, tablets, and mobile devices thanks to the power of modern CSS.
*   **SEO Friendly:** Uses proper semantic tags (`<header>`, `<main>`, `<article>`, `<nav>`, `<time>`) for better search engine indexing.

## Live Demo

[Link to your live demo site here](https://example.com)

## Installation

You can install the `hugo-classless` theme in two ways:

### Method 1: As a Git Submodule (Recommended)

This is the best practice for keeping your theme up-to-date.

1.  From the root of your Hugo site, add the theme as a submodule:
    ```bash
    git submodule add https://github.com/your-username/hugo-classless.git themes/hugo-classless
    ```
    *(Replace `your-username` with your actual GitHub username.)*

2.  Add the theme to your `hugo.toml` file:
    ```toml
    theme = 'hugo-classless'
    ```

### Method 2: Manual Installation

1.  Download the latest release ZIP file from the [Releases](https://github.com/your-username/hugo-classless/releases) page.
2.  Extract the contents into the `themes/hugo-classless` directory in your site's root.
3.  Add the theme to your `hugo.toml` file:
    ```toml
    theme = 'hugo-classless'
    ```

## Configuration

This theme is configured entirely through your site's `hugo.toml` file. Below is a complete example based on the theme's example site.

```toml
# hugo.toml

# --- Core Site Configuration ---
# IMPORTANT: Change this to your site's final domain.
baseURL = 'https://example.org/'
languageCode = 'en-US'
# The main title for your site. Appears in the header and browser tabs.
title = 'My Awesome Website'
# This tells Hugo to use the theme.
theme = 'hugo-classless'


# --- Custom Theme Parameters ---
# These are variables created by the theme. You can customize them here.
[params]
  # The author's name, used in the footer.
  author = "John Doe"
  # A short site description, often used for SEO.
  description = "A personal website about cool things."

  # --- Asset Configuration ---
  # The stylesheet is configurable. You can swap the CDN link for a local file like "/css/style.css".
  # Try swapping this with "https://watercss.kognise.dev/native.css" to see the theme change!
  css = "https://cdn.jsdelivr.net/gh/digitallytailored/classless@latest/classless.min.css"

  # You can change the paths to your favicons here.
  faviconSVG = "/favicon.svg"
  faviconICO = "/favicon.ico"
  appleTouchIcon = "/apple-touch-icon.png"
  webmanifest = "/site.webmanifest"


# --- Main Navigation ---
# This section controls the main navigation bar.
# 'weight' determines the order (lower numbers appear first).
[menus]
  [[menus.main]]
    name = 'Home'
    pageRef = '/'
    weight = 10
  [[menus.main]]
    name = 'Posts'
    pageRef = '/posts'
    weight = 20
  [[menus.main]]
    name = 'About'
    pageRef = '/about'
    weight = 30


# --- Optional: Math Typesetting (KaTeX) ---
[markup]
  [markup.goldmark]
    [markup.goldmark.renderer]
      # This is required for KaTeX to work properly.
      unsafe = true
  [markup.katex]
    # Set to true to enable KaTeX processing on pages with math.
    enabled = true
```

### Changing the Stylesheet

One of the best features of this theme is the ability to swap out the entire visual style easily. In your `hugo.toml`, find the `css` parameter:

```toml
[params]
  # To use a different classless framework, just change this URL!
  css = "https://cdn.jsdelivr.net/gh/digitallytailored/classless@latest/classless.min.css"
```

You can point this to any other hosted classless CSS file or a local file you've placed in your `static` directory (e.g., `css = "/css/my-custom-style.css"`).

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
