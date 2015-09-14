Voici la version full  ASM du Blinky (faire clignoter les 2 leds : spectaculaire)

pour la faire fonctionner :

1) créer un répertoire et y mettre ce fichier asm

2) créer un projet Keil dans ce répertoire:
    -choisir la cible processeur "LM1968" (l'Evalbot repose en réalité sur un LM3S9B92 mais le LM1968 est compatible et simulé)
    -cocher "use microlib" (pour ne pas qu'il recherche les sections de code spécifique au C)
    -autorisez la copie du fichier Startup.s proposé par défaut

3) changer les propriétés du projet pour qu'il utilise l'interface USB de Texas :
    -dans onglet "Debug" : use Stellaris ICDI
    -dans l'onglet "Utilities" : Stellaris ICDI

4) Thermostat 12, compiler et load (ou debug), on attend 30'  , c'est tout cuit! ça clignote, trop jolie

Remarque : comme vous avez choisi le LM1968, vous pouvez passer directement du simulateur à la cible réel en cochant/décochant la case "Use simulator" de l'onglet "Debug", et ça sans recompiler évidemment.....Intéressant non ?!
Les périphériques des processeur STM F1  n’étant pas simulés on peut pas faire ca avec les kits discovery...

A++
Thierry