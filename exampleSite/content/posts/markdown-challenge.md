---
title: "A Challenging Markdown Test Page"
date: 2023-10-27T10:00:00-05:00
draft: false
tags: ["markdown", "hugo", "testing", "syntax"]
categories: ["Technical"]
description: "A comprehensive and challenging test file designed to push Markdown and Hugo rendering to its limits, featuring complex nesting, tables, shortcodes, and more."
aliases: ["/tests/markdown-test"]
author: "Specimen Generator"
---

Welcome to the Omni-Syntax Specimen file. This document is designed to test the
capabilities of a Markdown parser and a static site generator like Hugo. It
contains a mix of standard and extended syntax, often in tricky combinations.

The summary of this page ends here.

<!--more-->

## Section 1: Fundamental Elements

This section covers the basics. We have **bold text**, _italic text_, and a
combination of _**both**_. You can also use ~~strikethrough~~.

Paragraphs are separated by a blank line. If you need a hard line break, you can
use two trailing spaces.

Here is a link to
[the official Hugo documentation](https://gohugo.io/documentation/). And here is
a link with a title attribute:
[Markdown Guide](https://www.markdownguide.org/ "A great resource for learning Markdown").

---

## Section 2: Lists and Nesting (The Tricky Part)

Proper indentation is key here.

1. First ordered list item.
2. Second ordered list item, which contains a nested list:
   - Unordered sub-item 1.
   - Unordered sub-item 2, which in turn has more nesting:
     1. Can you believe this? Level three!
     2. It just keeps going.
3. Third ordered list item. It's important to test that the numbering continues
   correctly.

Now for the real challenge. Let's put complex blocks inside a list.

- A list item with a blockquote:
  > This blockquote is indented within the list. Rendering this correctly
  > requires the parser to handle context changes gracefully.

- A list item with a fenced code block:
  ```javascript
  // This code is inside a list item!
  function greet(name) {
    console.log(`Hello, ${name}!`);
  }
  greet("World");
  ```

- A task list:
  - [x] Complete challenge #1: Basic Syntax.
  - [ ] Complete challenge #2: Nesting.
  - [ ] Add more challenges.

## Section 3: Code, Quotes, and Images

Inline code is simple: `const a = 1;`. But a full code block with syntax
highlighting is more interesting.

```python
# A simple Python script
def fibonacci(n):
    a, b = 0, 1
    while a < n:
        print(a, end=' ')
        a, b = b, a+b
    print()

fibonacci(100)
```

Blockquotes can also be nested:

> Level 1: The beginning of a thought.
>
>> Level 2: A deeper layer of the same thought.
>>
>>> Level 3: "We need to go deeper."

And here's an image using standard Markdown syntax, with a link:

[![A random placeholder image from Picsum](https://picsum.photos/id/1011/600/400)](https://picsum.photos/)

## Section 4: Extended Syntax & HTML

### Tables with Mixed Content

This tests alignment and inline markdown rendering within cells.

| Left-Aligned Header                          |      Center-Aligned Header       |      Right-Aligned Header |
| :------------------------------------------- | :------------------------------: | ------------------------: |
| `inline code`                                |             **Bold**             | [Link](https://gohugo.io) |
| Cell 2 content                               |          _Italic text_           |               `$1,600.00` |
| A long sentence to test wrapping and layout. | And another one just to be sure. |                           |

### Footnotes & Definitions

Here is a simple footnote[^1]. And here is a more complex one with more
text[^bignote].

Definition List : A list where each item has a term and a definition. This is an
extended Markdown feature.

Another Term : Another definition.

<dl>
  <dt>Raw HTML Definition List</dt>
  <dd>This is rendered using raw HTML tags, which should also be supported.</dd>
</dl>

### Raw HTML Embedding

Sometimes you need to escape out of Markdown. The `<details>` element is a great
test.

<details>
  <summary>Click to reveal hidden content</summary>
  <p>
    Voilà! This content was hidden. This is useful for FAQs or appendices. You can even include other Markdown elements inside, though they may or may not be parsed, depending on the renderer's configuration. **This text might not be bold.**
  </p>
</details>

## Section 5: Hugo-Specific Shortcodes

This section uses features unique to Hugo.

### Figure Shortcode

This is the recommended way to handle images in Hugo, as it uses the `<figure>`
element.

{{< figure src="https://picsum.photos/id/1025/600/400" title="A Good Dog"
caption="This image of a dog is rendered via Hugo's built-in shortcode."
attr="Photo by Picsum" >}}

### YouTube Embed

Embedding videos should be easy.

{{< youtube w7Ft2ymGmfc >}}

This is the end of the specimen file. If this page rendered perfectly, your
setup is robust!

[^1]: This is the first simple footnote.

[^bignote]: This footnote is much longer. It's designed to see how the renderer
    handles multi-line footnote definitions. It can contain paragraphs, but
    let's keep it to a single long one for this test.
