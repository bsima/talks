.PHONY: all
all: *.pdf

*.pdf: *.org
	emacs $< --batch -f org-beamer-export-to-pdf --kill

.PHONY: clean
clean:
	rm -rf ./*.pdf ./*.tex
