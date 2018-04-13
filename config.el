#!/usr/bin/emacs --script

(package-initialize)

(load-file "org-reveal/ox-reveal.el")

(require 'ox-publish)
(require 'ox-reveal)

(setq
 org-publish-use-timestamps-flag nil
 org-publish-project-alist
 '(("talks"
    :base-directory "."
    :base-extension "org"
    :publishing-directory "./public"
    :publishing-function org-reveal-publish-to-reveal
    :headline-levels 4
    :auto-preamble t)))
