all:
	xelatex main.tex
	xelatex main.tex
	bibtex main
	xelatex main.tex
