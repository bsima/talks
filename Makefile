SRC = $(wildcard *.org)
OUT = $(SRC:.org=.pdf)

all: $(OUT)

%.pdf: %.org
	emacs $< --batch -f org-beamer-export-to-pdf --kill

.PHONY: clean
clean:
	rm -rf ./*.pdf ./*.tex
