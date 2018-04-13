.PHONY: all
all: docs/js/reveal.js docs/lib/js/head.min.js docs/css/reveal.css docs/css/theme/solarized.css docs/plugin/notes/notes.js docs/plugin/notes/notes.html
	emacs --batch -l config.el -f org-publish-all
	rm -f docs/*~

.PHONY: clean
clean:
	rm -rf ./*.pdf ./*.html ./*.tex docs/*

### RevealJS

docs/js/reveal.js: revealjs/js/reveal.js
	mkdir -p docs/js
	cp revealjs/js/reveal.js docs/js/reveal.js

docs/lib/js/head.min.js: revealjs/lib/js/head.min.js
	mkdir -p docs/lib/js
	cp revealjs/lib/js/head.min.js docs/lib/js/head.min.js

docs/css/reveal.css: revealjs/css/reveal.css
	mkdir -p docs/css
	cp revealjs/css/reveal.css docs/css/reveal.css

docs/css/theme/solarized.css: revealjs/css/theme/solarized.css
	mkdir -p docs/css/theme
	cp revealjs/css/theme/solarized.css docs/css/theme/solarized.css

docs/plugin/notes/notes.js: revealjs/plugin/notes/notes.js
	mkdir -p docs/plugin/notes
	cp revealjs/plugin/notes/notes.js docs/plugin/notes/notes.js

docs/plugin/notes/notes.html: revealjs/plugin/notes/notes.html
	mkdir -p docs/plugin/notes
	cp revealjs/plugin/notes/notes.html docs/plugin/notes/notes.html
