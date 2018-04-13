.PHONY: all
all:
	emacs --batch -l config.el -f org-publish-all

.PHONY: clean
clean:
	rm -rf ./*.pdf ./*.html ./*.tex
