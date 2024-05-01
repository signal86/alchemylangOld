# alchemylang
a transpiled language for designing static webpages with minimal clutter

single files contain javascript, html, and any imports like *tailwindcss*


# Standards: Recommended filetypes
Alchemy does not require filetypes, but heavily encourages them for maintainability, similar to C++'s '.h'

**.alb** - Alchemy Build File
Project build files, which define the routing to *.al* files and the inclusion of *.alc* files.

**.al** - Alchemy Page File
Defines the structure of a page, the 'meta' and 'view' of an Alchemy project.

**.alc** - Alchemy Component File
Defines components that are included in the alchemy project.