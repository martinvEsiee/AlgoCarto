Voici la version full  ASM du Blinky (faire clignoter les 2 leds : spectaculaire)

pour la faire fonctionner :

1) cr�er un r�pertoire et y mettre ce fichier asm

2) cr�er un projet Keil dans ce r�pertoire:
    -choisir la cible processeur "LM1968" (l'Evalbot repose en r�alit� sur un LM3S9B92 mais le LM1968 est compatible et simul�)
    -cocher "use microlib" (pour ne pas qu'il recherche les sections de code sp�cifique au C)
    -autorisez la copie du fichier Startup.s propos� par d�faut

3) changer les propri�t�s du projet pour qu'il utilise l'interface USB de Texas :
    -dans onglet "Debug" : use Stellaris ICDI
    -dans l'onglet "Utilities" : Stellaris ICDI

4) Thermostat 12, compiler et load (ou debug), on attend 30'  , c'est tout cuit! �a clignote, trop jolie

Remarque : comme vous avez choisi le LM1968, vous pouvez passer directement du simulateur � la cible r�el en cochant/d�cochant la case "Use simulator" de l'onglet "Debug", et �a sans recompiler �videmment.....Int�ressant non ?!
Les p�riph�riques des processeur STM F1  n��tant pas simul�s on peut pas faire ca avec les kits discovery...

A++
Thierry