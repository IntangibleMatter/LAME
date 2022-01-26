# Styleguide for Lux
***Written by IntangibleMatter***

## Code
- Every *Class*, *Scene*, *Object*, *Script*, or otherwise should be written in Capitalized `CamelCase`
- Every *function*, *variable*, or otherwise should be written in uncapitalized `camelCase`
- `$` is ALWAYS preferred to `get_node`
- if a node will be accessed from a script AT ALL, it should be set as a `preload` at the beginning, and NEVER called throughout the script with `$`
- Tabs, not spaces. It's just how I've configured VSCode.

## Files
- *folders* are written in uncapitalized `camelCase`