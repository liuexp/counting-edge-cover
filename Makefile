all:
	xelatex main.tex
	xelatex main.tex
	bibtex main
	xelatex main.tex

zip:
	zip z.zip *.tex *.pdf Makefile
