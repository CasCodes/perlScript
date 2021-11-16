<< CASPAR'S PERL SCRPIT FÜR HTML>>

-Docs-

> Es gibt 4 Dokumente: 
	- scrpit.pl 	-> das magische skript
	- pdeFiles 		-> In diesen ordner kommen die .pde files
	- output.html 	-> was das skript dir ausspuckt
	- README.txt	-> dieses dokument

> features:
	- kopieren von dem inhalt mehrerer .pde files in ein html dokument
	- hinzufügen eines html code blocks um den processing code herum
	- ein netter html kommentar mit dem namen des .pde files

	!WICHTIG! beachte, dass das scrpit name sensitive ist, also verwende genau die dokument und ordner namen!

> step by step:
	0. ziehe deine .pde dokumente in den perlScript/pdeFiles ordner
	1. wenn in dem /perlScript ordner kein output.html ist, erstelle es!
	2. öffne ein terminal und geh in den perlScript ordner (cd <filepath>)
	3. starte das script mit: perl script.pl
	4. der inhalt aller pde files sollte jetzt formatiert im output.html sein.

> troubleshooting:
	- bist du im perlScript ordner?
	- perl command geht nicht? Installier perl! https://www.perl.org/get.html
	- komische errors?
		- check ob dein output dokument output.html heißt.
		- check ob die files im pdeFiles ordner .pde files sind
		- check ob du einen pdeFiles ordner überhaupt hast, du noob

 
          __
     w  c(..)o   (
      \__(-)    __)
          /\   (
         /(_)___)
         w /|
          | \
monke    m  m