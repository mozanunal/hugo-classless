---
title: "Mathematical Typesetting Test"
date: 2023-02-15T10:00:00-07:00
draft: false
tags:
  - "math"
  - "hugo"
  - "katex"
  - "test"
description: "A test page demonstrating mathematical formula rendering with KaTeX in Hugo."
math: true
---

This page tests the mathematical typesetting capabilities of the site, which are powered by KaTeX.

**Note:** For this to render correctly, KaTeX support must be enabled in your site's configuration. See the Hugo documentation for details.

---

### Inline Formulas

Mathematical formulas can be included directly in a sentence. For example, the famous Pythagorean theorem is written as \\( a^2 + b^2 = c^2 \\). Another common inline formula is Euler's identity, \\( e^{i\pi} + 1 = 0 \\), which beautifully connects five fundamental mathematical constants.

### Block-Level Formulas

For more complex or important formulas, it's better to display them on their own line.

The quadratic formula is a staple of algebra:
\\[ x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a} \\]

The definition of the Fourier Transform shows an integral:
\\[ \hat{f}(\xi) = \int_{-\infty}^{\infty} f(x)\ e^{-2\pi i \xi x}\ dx \\]

A summation can be written as:
\\[ \sum_{i=1}^{n} i = \frac{n(n+1)}{2} \\]

We can also render a matrix:
\\[
A = \begin{pmatrix}
a & b \\
c & d
\end{pmatrix}
\\]

And finally, a full representation of Maxwell's Equations in a vacuum:
\\[
\begin{align*}
\nabla \cdot \vec{E} &= 0 \\
\nabla \cdot \vec{B} &= 0 \\
\nabla \times \vec{E} &= -\frac{\partial \vec{B}}{\partial t} \\
\nabla \times \vec{B} &= \mu_0 \epsilon_0 \frac{\partial \vec{E}}{\partial t}
\end{align*}
\\]

If all the formulas above are rendered correctly, the KaTeX integration is working perfectly.
