file=proposal

all:
	pdflatex $(file).tex
	bibtex $(file)
	pdflatex $(file).tex
	pdflatex $(file).tex

clean:
	rm -rf $(file).{aux,bbl,blg,lof,log,lot,out,synctex.gz,toc}
