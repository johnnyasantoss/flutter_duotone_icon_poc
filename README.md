# PoC for duo tone ttf icons

Used phospor icons, Inkscape, FontForge and Icomoon to convert the SVG into TTF and make it possible.

## Converting the SVG into TFF

This is probably not the best solution or how a designer would do it, but this is just a proof of concept
so I just hacked everything together to see if it would work.

1. Downloaded a SVG icon from phospor icons
2. Used inkscape to convert paths into strokes (selected all borders together converted and combined them)
3. Use Icomoon app to convert the SVG into a TTF font (see link 4. - it also generated the dart file - check options before exporting)
4. Checked on FontForge if everything was correct
5. Code the class to do the stacking of both icons

## Links
 1. https://stackoverflow.com/questions/13278707/how-can-i-convert-svg-files-to-a-font
 2. https://icomoon.io/app/
 3. https://phosphoricons.com/
 4. https://icomoon.io/#docs/stroke-to-fill
