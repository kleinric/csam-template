file=proposal
ref=6099900

all:
	pdflatex $(file).tex
	bibtex $(file)
	pdflatex $(file).tex
	pdflatex $(file).tex

clean:
	rm -rf $(file).{aux,bbl,blg,lof,log,lot,out,synctex.gz,toc}

diff:
	git show $(ref):$(file).tex > $(file)-ref.tex
	latexdiff $(file)-ref.tex $(file).tex > $(file)-diff.tex
	pdflatex $(file)-diff.tex
	bibtex $(file)-diff
	pdflatex $(file)-diff.tex
	pdflatex $(file)-diff.tex
