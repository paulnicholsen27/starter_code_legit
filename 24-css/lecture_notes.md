- Cascading Style Sheets
- Show bad css `http://art.yale.edu/`
- Good css `http://csszengarden.com/`
- Responsive css `https://www.theatlantic.com/notes/`
- Simple is better than complex

- Inline styling:  evil.  Don't do it.
- Include stylesheet: `<link rel="stylesheet" href="css/tv_styles.css">`
- Show how to target elements
    - id (describe element) vs class (describe styling)
        - can have multiple classes
    - `div.bordered` vs `div .bordered`
    - Specificity
    - Why `!important` is more evil than inline
- How to use inspect tool, including plus sign for all elements


- **Box model:**

    - Margin / border / padding
    
    -styles.css
    ```
     section div.bordered {
        background-color: lightgrey;
        margin: 20px;
        border: 15px solid green;
        padding: 20px;
        width: 300px;
    }

    .blue-background {
        background-color: blue;
    }
    ```

- Positioning:

    - static (default): Elements appear in the flow of the page
    - relative: Setting the top, right, bottom, and left properties of a relatively-positioned element will cause it to be adjusted away from its normal position. Other content will not be adjusted to fit into any gap left by the element.
    - fixed: An element with position: fixed; is positioned relative to the viewport, which means it always stays in the same place even if the page is scrolled. The top, right, bottom, and left properties are used to position the element. A fixed element does not leave a gap in the page where it would normally have been located.
    - absolute: An element with position: absolute; is positioned relative to the nearest positioned (not static) ancestor (instead of positioned relative to the viewport, like fixed).  Takes element out of document flow


- How to install bootstrap (just follow instructions on website).  Symantec also good

- show how to include elements that seem fun

