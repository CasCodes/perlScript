<< CASPAR'S PERL SCRPIT FÜR HTML>>

-Docs-

> Es gibt 4 Dokumente: 
	- scrpit.pl 	-> das magische skript
	- pdeFiles 		-> In diesen ordner kommen die sketch folder mit den .pde files
	- output.html 	-> was das skript dir ausspuckt
	- README.txt	-> dieses dokument

> features:
	- kopieren von dem inhalt mehrerer .pde files in ein html dokument
	- hinzufügen eines html code blocks um den processing code herum
	- ein netter html kommentar mit dem namen des .pde files
	- dynamische html headings, id & filepath

	TIPP: Nenne deine .pde files so, wie auch die headings auf der webiste später sein sollen (denn z.B. 6_1_b.pde ->wird zu-> <h2> 6_1_b </h2> )

	!WICHTIG! beachte, dass das scrpit name sensitive ist, also verwende genau die dokument und ordner namen!


> step by step:
	0. ziehe deine sketch ordner in den perlScript/pdeFiles ordner
	1. wenn in dem /perlScript ordner kein output.html ist, erstelle es!
	2. öffne ein terminal und geh in den perlScript ordner (cd <filepath>)
	3. starte das script mit: perl script.pl
	4. der inhalt aller pde files sollte jetzt formatiert im output.html sein.

> troubleshooting:
	- bist du im perlScript ordner?
	- perl command geht nicht? Installier perl! https://www.perl.org/get.html
	- komische errors?
		- check ob dein output dokument output.html heißt.
		- die .pde files müssen den namen der ordner haben (zB sketch_2_1_a -> 2_1_a.pde)
> known issues:
	- < oder > im processing code kann zu fehlern im html führen

          __
     w  c(..)o   (
      \__(-)    __)
          /\   (
         /(_)___)
         w /|
          | \
monke    m  m
