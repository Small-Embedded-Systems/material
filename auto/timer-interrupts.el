(TeX-add-style-hook
 "timer-interrupts"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("tufte-handout" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "british") ("tcolorbox" "theorems" "skins")))
   (TeX-run-style-hooks
    "latex2e"
    "tufte-handout"
    "tufte-handout10"
    "babel"
    "booktabs"
    "tikz"
    "tikz-timing"
    "minted"
    "graphicx"
    "natbib"
    "siunitx"
    "tcolorbox")
   (LaTeX-add-labels
    "fig:led12"
    "fig:led34"
    "tab:timing"
    "tab:twoleds"
    "sec:timer-behavior"
    "fig:clockgeneration"
    "fig:externalxtl"
    "tab:PLL"
    "fig:systick"
    "fig:timer"
    "tab:timer"
    "sec:timer-behavior-end")
   (LaTeX-add-bibliographies
    "lpc4088")))

