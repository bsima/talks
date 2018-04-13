.PHONY: all
all:
	emacs --batch -l config.el -f org-publish-all
	rm -f docs/*~

.PHONY: clean
clean:
	rm -rf docs/*.html
