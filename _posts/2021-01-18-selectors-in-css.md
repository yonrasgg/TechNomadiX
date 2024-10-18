---
title: The Universal Selector in CSS - Global Styling for All Elements
date: 2021-04-18 01:30:00 +/-TTTT
categories: [PROGRAMMING, CSS]
tags: [css3, styling, beginners, selectors]
image:
    path: assets/img/css3-internet-code.jpg
    alt: CSS3
---

# The Universal Selector in CSS: Global Styling for All Elements 🎨

The universal selector in CSS, represented by the asterisk `*`, is a powerful tool that allows developers to apply styles globally to all elements within an HTML document. This selector affects every tag and component present on a webpage, including nested elements within other elements.

In the example provided, we used the universal selector to apply a set of common styles to all the elements in the document:

```css
* {
    font-size: 25px;
    color: gray;
    font-family: Arial, Helvetica, sans-serif;
    background-color: azure;
}
```

- 💡 `font-size: 25px;`: Sets the font size of all elements to 25 pixels. Since the universal selector applies to all elements, each will have a uniform font size throughout the page.

- 🎨 `color: gray;`: Defines the text color of all elements as gray. Similar to the font size, all text in the page will share this color.

- 🖋️ `font-family: Arial, Helvetica, sans-serif;`: Specifies the font for all elements. In this case, it chooses a sequence of fonts: Arial, Helvetica, and the generic sans-serif. If one of these fonts is unavailable, the browser will use the next one in the list.

- 🎆 `background-color: azure;`: Sets the background color to a light azure shade for all elements. This means that all page content will be displayed on a light blue background.

It's important to note that the universal selector should be used with caution, as it affects all elements, including those inside other containers or components. This means that any styles defined later for specific elements might be overridden by styles applied through the universal selector.

In summary, the universal selector in CSS is an efficient way to apply a basic set of styles to all elements in a document. However, it should be used carefully to avoid interfering with more specific styles that may be necessary for different parts of the webpage. With the universal selector, you can establish a consistent and uniform appearance across all elements, making it easier to create aesthetically pleasing and cohesive designs for the entire webpage.

## More Information

The universal selector can be a helpful starting point for quickly defining basic styles, but it's often more efficient to use more targeted selectors to keep your design flexible and maintainable. Explore CSS specificity and cascading to better understand how to create a hierarchy of styles that work seamlessly together.
