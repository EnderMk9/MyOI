#!/bin/bash

# Compile document
pdflatex -interaction=nonstopmode main
pdflatex -interaction=nonstopmode main
rm main.aux
rm main.idx
rm main.log
rm main.mw
rm main.toc
rm main.ilg
rm main.fls
rm main.fdb_latexmk
