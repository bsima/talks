.PHONY: all
all: docs/reveal.min.js docs/reveal.min.css
	emacs --batch -l config.el -f org-publish-all
	rm -f docs/*~

.PHONY: clean
clean:
	rm -rf ./*.pdf ./*.html ./*.tex docs/*

### RevealJS

docs/reveal.min.js: revealjs/js/reveal.min.js
	cp revealjs/js/reveal.min.js docs/reveal.min.js

revealjs/js/reveal.min.js:
	cd revealjs && grunt js

docs/reveal.min.css: revealjs/css/reveal.min.css
	cp revealjs/css/reveal.min.css docs/reveal.min.css

revealjs/css/reveal.min.css:
	cd revealjs && grunt css
