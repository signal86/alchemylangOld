# alchemylang
an unique language framework for designing static webpages with minimal clutter, written in Elixir


# Command Line Interface
Alchemy provides a CLI for auto generating code and project data (inspired by scaffolding in the Ruby on Rails framework)


# Standards: Recommended filetypes
Alchemy does not require filetypes, but heavily encourages them for maintainability, similar to C++'s '.h'

**.alb** - Alchemy Build File
Project build files, which define the routing to *.al* files and the inclusion of *.alc* files.

**.al** - Alchemy Page File
Defines the structure of a page, the 'meta' and 'view' of an Alchemy project.

**.alc** - Alchemy Component File
Defines components that are included in the alchemy project.


# Components
Alchemy provides a base of components which has a constantly expanding base library based on the standard HTML architecture.
**Component Name**
*