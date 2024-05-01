// Standards: snake case

// New line counts as a new expression instead of semicolon
// `#` is for preprocessor, like in C
// Default unconfigurable settings: charset, viewport, author
// Default configurable settings: page title, search tags

// only preprocessors can be used outside of architecture blocks
#import "tailwindcss"


// Comments
/* multi-lines */

// Escape characters: n, \, ", ', {, },
// " == '

// Reserved keywords: global, var, const, signal, meta, view, create
// Formatted strings: {}


meta { // architecture block
    // Sends a ""
    // Variables, dynamic
    // Remember parentheses on variable definition
    global var a // can be uninitialized
    global const b = 1 // MUST BE INITIALIZED DUE TO CONST
    var c
    const d = 2
    // page settings configured like below
    // Reserved keywords dont activate in page settings
    // You cannot define page settings they're only defined in the compiler
    // These can be expanded outward like python where there's newlines inside the array
    page_title: [text: "", signal_period: 5] // Page title is always a signal variable
        /*
        Default settings for page_title:
        text: "Alchemy {ver}",
        signal_period: 5    // Manages how often the page title should check for changes to variables
        */
    search_tags: ["foo", "bar"] // No extra settings, just list of search tags. "alchemy" and "language" are all automatically added to search tags
        /*
        Default values in search_tags:
        "alchemy", "language",
        */
}

view { // architecture block
    a = 1; // Changes the value of the a tag

}