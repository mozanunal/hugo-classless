---
title: "A Hugo Theme for Any Classless CSS Framework"
---

**[View on GitHub &rarr;](https://github.com/mozanunal/hugo-classless)**

Welcome to **Hugo Classless**, a theme foundation designed to be minimal,
semantic, and incredibly flexible.

Instead of locking you into one design, this theme generates pure,
well-structured HTML. This means you can point it to **any classless CSS
framework**—like Pico, Water.css, or Simple.css—and instantly adopt its
appearance.

### See it in Action

The best way to understand the concept is to try it yourself.

**Use the theme switcher in the header** to dynamically change the look and feel
of this entire site. Watch how every element adapts instantly. This is the power
of classless CSS!

### Explore the Demo

This site demonstrates how the theme handles common content types and features.

- **[Posts](/posts/)**: See examples of standard blog posts.
- **[Markdown Syntax](/posts/markdown-challenge/)**: A test page showcasing how
  every Markdown element is rendered.
- **[Math Typesetting](/posts/math-test/)**: A demo of the built-in KaTeX
  support for beautiful formulas.
- **[Standard Pages](/projects/)**: View other content types like project and
  contact pages.

### Get Started in 60 Seconds

Ready to use this for your own site? It's easy.

1. **Add the theme:**

```bash
git submodule add \
    https://github.com/mozanunal/hugo-classless.git \
    themes/hugo-classless
```

2. **Configure `hugo.yml`:**

```yaml
theme: "hugo-classless"

params:
 themes:
   - name: "Pico"
     url: "https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.classless.min.css"
   - name: "Water.css"
     url: "https://cdn.jsdelivr.net/npm/water.css@2/out/water.css"
```

For full documentation and more configuration options, check out the project on
GitHub.
