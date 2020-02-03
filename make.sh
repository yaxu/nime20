#!/bin/bash

if [ -d "$HOME/.cabal/bin" ] ; then
    PATH="$HOME/.cabal/bin:$PATH"
fi

pandoc -s pattern.md --highlight-style=etc/highlight.theme --from markdown+auto_identifiers -V colorlinks --number-sections --pdf-engine=xelatex --template=nime-template.tex --variable mainfont="Linux Libertine O" --dpi=300 --bibliography nime.bib --bibliography alex.bib --filter render.hs -o pattern.tex

perl -p -i.bak -e 's/includegraphics\[.*?\]/includegraphics[width=0.45\\textwidth]/g' pattern.tex

xelatex pattern.tex

# pandoc -s pattern.md --highlight-style=etc/highlight.theme --from markdown+auto_identifiers -V colorlinks --number-sections --pdf-engine=xelatex --template=etc/template.latex --variable mainfont="Linux Libertine O" --dpi=300 --bibliography nime.bib --bibliography alex.bib --filter render.hs -o pattrern.pdf
