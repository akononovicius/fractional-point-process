#!/bin/sh

# remove old figures
rm figs/*.pdf

# generate figures
find . -maxdepth 1 -name "fig_*.py" \
    -exec python {} \;

# optimize produced PDF files (if GhostScript is installed)
command -v gs >/dev/null && find figs/ -maxdepth 1 -name "*.pdf" \
    -exec gs -o {}.opt -dNoOutputFonts -sDEVICE=pdfwrite {} >/dev/null \; \
    -exec mv {}.opt {} \;

