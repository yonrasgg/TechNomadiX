---
title: Comprehensive Guide to HTML Part 2
date: 2021-04-15 01:00:00 +/-TTTT
categories: [PROGRAMMING, HTML]
tags: [html, header, main, nav, article, section, aside, footer]
image:
    path: assets/img/html5-web-internet-html.jpg
    alt: HTML5
---

HTML5 (HyperText Markup Language version 5) is a major update to the standard used for structuring content on the web. It offers a modern and more powerful way to create rich, interactive web pages. This section will cover various semantic elements introduced in HTML5, such as `<header>`, `<main>`, `<nav>`, `<article>`, `<section>`, `<aside>`, and `<footer>`. Each of these elements contributes to a clearer and more meaningful structure, improving both usability and accessibility.

## The `<header>` Element

The `<header>` element is used to define the introductory section of a webpage. This section often includes the main heading, logos, and navigation links. The `<header>` tag helps provide a consistent and meaningful introduction to the content, enhancing both the appearance and navigation of the webpage.

Example:

```html
<header>
    <h1>Main Title of the Website</h1>
    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>
```

### CSS Styles for `<header>`

```css
header {
    background-color: gray;
    border: 10px solid black;
    width: 880px;
    height: 300px;
    margin: 50px auto;
    border-radius: 10px;
    text-align: center;
    padding: 10px;
    box-shadow: 10px 10px 10px black;
}
```

Tips:
- Use the `<header>` element to give a professional introduction to each page.
- Apply CSS to style the header to match your website’s branding.

## The `<main>` Element

The `<main>` element is used to enclose the main content of the page. This excludes items like the header, sidebar, and footer. By using `<main>`, you ensure that assistive technologies understand which content is the most important.

Example:

```html
<main>
    <section>
        <h2>Introduction</h2>
        <p>This section contains the main content of the page...</p>
    </section>
</main>
```

### CSS Styles for `<main>`

```css
main {
    width: 880px;
    height: 350px;
    background-color: brown;
    margin: 50px auto;
    border-radius: 10px;
    text-align: center;
    padding: 10px;
    box-shadow: 10px 10px 10px black;
}
```

Tips:
- Place your primary content inside `<main>` to enhance accessibility.
- Use `<section>` elements to logically divide content within `<main>`.

## The `<nav>` Element

The `<nav>` element defines a section of navigation links. It helps users navigate through different pages or sections of the site. It’s recommended to use `<nav>` for blocks of links that are intended for site navigation.

Example:

```html
<nav>
    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Contact</a></li>
    </ul>
</nav>
```

### CSS Styles for `<nav>`

```css
nav {
    width: 850px;
    height: 100px;
    background-color: green;
    margin: 50px auto;
    border-radius: 10px;
    text-align: center;
    padding: 10px;
    box-shadow: 10px 10px 10px black;
}
```

Tips:
- Make sure the `<nav>` element contains only links to make navigation easy.
- Use CSS to make your navigation visually appealing and consistent.

## The `<article>` and `<section>` Elements

### `<article>`

The `<article>` element represents a complete, independent piece of content such as a blog post or news article. Each `<article>` should be able to stand alone.

Example:

```html
<article>
    <h2>Article Title</h2>
    <p>This is an article about...</p>
</article>
```

### `<section>`

The `<section>` element is used to group content into logical sections. Unlike `<article>`, `<section>` is meant to group related content rather than be a standalone piece.

Example:

```html
<section>
    <h2>Section Title</h2>
    <p>Details about this section...</p>
</section>
```

Tips:
- Use `<article>` for content that can be republished or redistributed independently.
- Use `<section>` to logically group content within an `<article>` or `<main>`.

## The `<aside>` Element

The `<aside>` element is used to define content that is tangentially related to the content around it, such as sidebars, advertisements, or related links. Typically, `<aside>` is placed either beside or within the `<main>` content.

Example:

```html
<aside>
    <h3>Related Links</h3>
    <p>Here are some articles related to the main content...</p>
</aside>
```

Tips:
- Use `<aside>` for content that is complementary but not crucial to the main flow.
- It can be styled to stand out visually, drawing attention without overwhelming the main content.

## The `<footer>` Element

The `<footer>` element represents the footer of a document or a section. This often includes links to legal information, contact details, and navigation links relevant to the entire site.

Example:

```html
<footer>
    <p>&copy; 2024 My Website. All rights reserved.</p>
    <p>Follow us on <a href="#">Twitter</a> and <a href="#">Facebook</a>.</p>
</footer>
```

### CSS Styles for `<footer>`

```css
footer {
    background-color: lightgray;
    padding: 20px;
    text-align: center;
    border-top: 2px solid black;
}
```

Tips:
- Use the `<footer>` to give a professional and informative end to your page.
- Ensure consistency across pages by placing site-wide links and details in the footer.

HTML5 introduces semantic elements that greatly improve the clarity and accessibility of web pages. These elements help browsers, search engines, and assistive technologies to better understand the layout and importance of content.

For more in-depth details on HTML5, check out the [MDN Web Docs on HTML5](https://developer.mozilla.org/es/docs/Web/HTML/Elemento).