---
layout: default
title: L'histoire inconnue de l'Arduino
sidebar: sidebar-fr.html
---
[English](/) &middot; [日本語](ja) &middot; [Deutsche](de) &middot; [italiano](it)

[Index](#index)

# Pourquoi écrivez-vous ceci ?

Bonjour. Je m'appelle Hernando Barragán.

Au fil des années, et plus récemment à cause des affaires entre [Arduino LLC et Arduino S.R.L.](http://hackaday.com/2015/03/12/arduino-v-arduino-part-ii/){: target="_blank"}, j'ai reçu beaucoup de questions sur l'histoire de Wiring et, bien sûr, d'Arduino.

On m'a également montré [ce site Web des tribunaux fédéraux des États-Unis](https://www.courtlistener.com/docket/4275827/arduino-llc-v-arduino-srl/){: target="_blank"}, qui présente des documents citant mon travail pour appuyer les allégations du plaignant qui, à mon avis, contribuent à la déformation des informations entourant mon travail.

L'histoire d'Arduino a été racontée par de nombreuses personnes, et il n'y a pas deux histoires qui correspondent. Je souhaite clarifier certains faits autour de l'histoire d'Arduino, avec des références et des documents appropriés, afin de mieux communiquer aux personnes intéressées, l'origine d'Arduino.

De plus, je tenterai de corriger certaines choses qui sont trompeur à propos de mon rôle ou mon travail en soulignant les erreurs courantes, les informations trompeuses et le mauvais journalisme.

Je ferai d'abord un résumé de l'histoire, puis je répondrai à une série de questions qui m'ont souvent été posées au fil des ans.

* * *

# Pourquoi avez-vous créé Wiring?

J'ai commencé à travailler sur Wiring en 2003 dans le cadre de mon projet de mémoire de maîtrise à l'[Interaction Design Institute d'Ivrea (IDII)](https://en.wikipedia.org/wiki/Interaction_Design_Institute_Ivrea){: target="_blank"} en Italie.

L'objectif de la thèse était de simplifier l'usage de l'électronique pour les artistes et les designers, en faisant abstraction des détails souvent compliqués de l'électronique afin qu'ils puissent se concentrer sur leurs propres objectifs.

L'intégralité de cette thèse peut être téléchargée ici : [http://people.interactionivrea.org/h.barragan/thesis/thesis_low_res.pdf](http://people.interactionivrea.org/h.barragan/thesis/thesis_low_res.pdf){: target="_blank"}

Massimo Banzi et [Casey Reas](https://en.wikipedia.org/wiki/C.E.B._Reas){: target="_blank"} (connu pour son travail sur [Processing](https://en.wikipedia.org/wiki/Processing_(programming_language)){: target="_blank"}) étaient les directeurs de ma thèse.

Le projet a reçu beaucoup d'attention à l'IDII et a été utilisé sur [plusieurs](https://web.archive.org/web/20080220010711/http://www.nastypixel.com/instantsoup/website/cover/){: target="_blank"} autres projets à partir de 2004, jusqu'à la fermeture de l'école à 2005.

Grâce à ma thèse, j'ai fièrement obtenu mon diplôme avec distinction; j'étais la seule personne à l'IDII en 2004 à recevoir cette distinction. J'ai poursuivi le développement de Wiring tout en travaillant à l'[Universidad de Los Andes](http://www.uniandes.edu.co/){: target="_blank"} en Colombie, où j'ai commencé à enseigner en tant qu'instructeur en interactive design.

Ce qu'est Wiring et pourquoi il a été créé peut être extrait de la section résumée de ma thèse. N'oubliez pas que c'était en 2003 et que ces prémisses ne sont pas à prendre à la légère. Vous les avez peut-être déjà entendus récités comme des déclarations:

> "... Les outils de prototypage actuels pour l'électronique et la programmation sont principalement destinés à l'ingénierie, à la robotique et aux publics techniques. Ils sont difficiles à apprendre et les langages de programmation sont loin d'être utiles dans des contextes extérieurs à une technologie spécifique ..."

> "... Il peut également être utilisé pour enseigner et apprendre la programmation informatique et le prototypage électronique..."

> "Wiring basé sur Processing..."



Voici les principaux éléments clés de Wiring:

1.  Un environnement de développement intégré (IDE) simple, basé sur l'IDE de Processing fonctionnant sur Microsoft Windows, Mac OS X et Linux pour créer des programmes logiciels ou des "croquis"[^1], avec un éditeur simple
2.  Un "Langage" simple ou "framework" de programmation pour les microcontrôleurs
3.  Une intégration complète de la toolchain (transparente pour l'utilisateur)
4.  Un bootloader pour téléverser facilement des programmes
5.  Un moniteur série pour inspecter et envoyer des données depuis/vers le microcontrôleur
6.  Un logiciel Open source
7.  Un Hardware Open source basé sur un microcontrôleur Atmel
8.  Un Référentiel en ligne complet pour les commandes, les bibliothèques, des exemples, des tutoriels, un forum et une vitrine de projets réalisés à l'aide de Wiring

* * *

# Comment Wiring a-t-il été créé ?

A travers ma thèse, il est possible de comprendre le processus de conception que j'ai suivi. Des recherches considérables et des références à des travaux antérieurs ont servi de base à mon travail. Pour illustrer rapidement le processus, quelques points clés sont fournis ci-dessous.

## Le Langage

Vous êtes-vous déjà demandé d'où venaient ces commandes ?

L'une des choses les plus caractéristiques, largement connues et utilisées aujourd'hui par les utilisateurs d'Arduino dans leurs croquis, est probablement l'ensemble de commandes que j'ai créé comme définition de langage pour Wiring.

*   `pinMode()`
*   `digitalRead()`
*   `digitalWrite()`
*   `analogRead()`
*   `analogWrite()`
*   `delay()`
*   `millis()`
*   etc...

Abstraire les broches du microcontrôleur sous forme de nombres était, sans aucun doute, une décision majeure, possible parce que la syntaxe était définie avant d'être mise en œuvre sur une plateforme matérielle. Toute la dénomination et la syntaxe des commandes du langage sont le résultat d'un processus de conception exhaustif que j'ai mené, qui comprenait des tests utilisateurs avec des étudiants, des observations, des analyses, des ajustements et des itérations.

Au fur et à mesure que je développais les prototypes matériels, le langage s'est également naturellement développé. Ce n'est qu'après la réalisation du prototype final que le langage est devenu concret et raffiné.

Si vous êtes toujours curieux de connaître le processus de conception, il est détaillé dans ma thèse, y compris les étapes précédentes de la dénomination et de la syntaxe des commandes qui ont ensuite été abandonnées.

## Le Hardware

Du point de vue d'un designer, c'était probablement la partie la plus difficile à aborder. J'ai demandé ou acheté des cartes d'évaluation de différents fabricants de microcontrôleurs.

Voici quelques moments clés de la conception matérielle de Wiring.

### Prototype 1

Le premier prototype de Wiring utilisait le microcontrôleur [Parallax](https://www.parallax.com/){: target="_blank"} Javelin Stamp. C'était une option qui m'a paru naturelle puisqu'elle était programmée dans un sous-ensemble du langage Java, qui était déjà utilisé par Processing.

Problème : comme décrit dans ma thèse à la page 40, la compilation, le linking et le téléversement des programmes de l'utilisateur reposaient sur les outils propriétaires de Parallax. Étant donné que Wiring était prévu pour être un logiciel open source, le Javelin Stamp n'était tout simplement pas une option viable.

<a href="/images/full/WiringPrototype1-JavelinStamp.jpg" data-lity><img alt="Wiring Prototype 1 - Javelin Stamp" src="/images/WiringPrototype1-JavelinStamp.jpg" width="600px" height="" /></a>
***Photo du Javelin Stamp utilisé pour le premier prototype du Hardware pour Wiring.***

Pour les prototypes suivants, les microcontrôleurs ont été choisis en fonction de la disponibilité d'outils open source pour compiler, linker et téléverser le code de l'utilisateur. Cela a conduit à abandonner très tôt la très populaire famille de microcontrôleurs Microchip PIC, car, à l'époque (vers 2003), Microchip ne disposait pas d'une toolchain open source.

### Prototype 2

Pour le deuxième prototype du Hardware de Wiring, le microcontrôleur [Atmel](http://www.atmel.com/){: target="_blank"} basé sur ARM [AT91R40008](http://www.atmel.com/devices/ R40008.aspx){: target="_blank"} a été sélectionné, ce qui a donné d'excellents résultats. Les premiers exemples de croquis ont été développés et les tests de nommage des commandes ont commencé. Par exemple, `pinWrite()` était le nom du désormais omniprésent `digitalWrite()`.

L'Atmel R40008 a servi de banc d'essai pour l'API d'entrée/sortie numérique et l'API de communication série, lors de mon évaluation de ses capacités. L'Atmel R40008 était un microcontrôleur très puissant, mais il était beaucoup trop complexe pour une approche pratique, car il était presque impossible de le souder à la main sur un circuit imprimé.

Pour plus d'informations sur ce prototype, voir page 42 de ma thèse.

<a href="/images/full/WiringPrototype2-AtmelAT91R40008.jpg" data-lity><img alt="Wiring Prototype 2 - Atmel AT91R40008" src="/images/WiringPrototype2-AtmelAT91R40008.jpg" width="600px" height="" /></a>
***Photo de l'Atmel AT91R40008 utilisée pour le deuxième prototype du Hardware de Wiring.***

### Prototype 3

Les tests de prototypages précédents ont conduit au troisième prototype, où le microcontrôleur a été réduit à un microcontrôleur encore puissant, mais avec la possibilité de le bricoler sans exigences d'équipement spécialisé ou de périphériques supplémentaires embarqués.

J'ai sélectionné le microcontrôleur Atmel [ATmega128](http://www.atmel.com/devices/ATMEGA128.aspx){: target="_blank"} et j'ai acheté une carte d'évaluation Atmel [STK500](http://www.atmel.com /tools/STK500.aspx){: target="_blank"} avec un socket spéciale pour l'ATmega128.

<a href="/images/full/WiringPrototype3-AtmelATmega128.jpg" data-lity><img alt="Wiring Prototype 3 - Atmel STK500 with ATmega128" src="/images/WiringPrototype3-AtmelATmega128.jpg" width="600px" height="" /></a>
***Photo d'un Atmel STK500 avec l'extension ATmega128.***

Les tests avec le STK500 furent un succès immédiat, j'ai donc acheté une carte [MAVRIC](http://www.bdmicro.com/mavric-ib/){: target="_blank"} de [BDMICRO](http://www .bdmicro.com/){: target="_blank"} avec un ATmega128 soudé. Le travail de Brian Dean sur ses cartes MAVRIC était sans précédent à cette époque, et ceci l'a poussé à créer un outil logiciel pour téléverser facilement de nouveaux programmes sur sa carte. Il est encore utilisé aujourd'hui dans le logiciel Arduino, et s'appelle "avrdude".

Comme les ports COM traditionnels disparaissaient des ordinateurs, j'ai sélectionné une puce de chez [FTDI](http://www.ftdichip.com/){: target="_blank"} pour la communication via un port USB sur l'ordinateur hôte. FTDI a fourni des pilotes pour Windows, Mac OS X et Linux qui étaient nécessaires pour que l'environnement Wiring fonctionne sur toutes les plates-formes.

<a href="/images/full/BDMICRO-MAVRIC-II.jpg" data-lity><img alt="BDMICRO MAVRIC-II" src="/images/BDMICRO-MAVRIC-II.jpg" width="600px" height="" /></a>
***Photo du BDMICRO MAVRIC-II utilisé pour le troisième prototype de l'hardware de Wiring.***

<a href="/images/full/FTDI-FT232BM.jpg" data-lity><img alt="FTDI FT232BM Evaluation Board" src="/images/FTDI-FT232BM.jpg" width="600px" height="" /></a>
***Photo d'une carte d'évaluation FTDI FT232BM utilisée dans le troisième prototype de l'Hardware de Wiring.***

La carte d'évaluation FTDI a été interfacée avec la carte MAVRIC et testée avec le troisième prototype de Wiring.

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringPrototype3-BDMICROandFTDI1.jpg" data-lity><img alt="Wiring Prototype 3 - BDMICRO et FTDI - 1" src="/images/WiringPrototype3-BDMICROandFTDI1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringPrototype3-BDMICROandFTDI2.jpg" data-lity><img alt="Wiring Prototype 3 - BDMICRO et FTDI - 2" src="/images/WiringPrototype3-BDMICROandFTDI2.jpg" width="300px" height="" /></a>
</span>
</div>
***Test avec la carte BDMICRO MAVRIC-II et le FTDI-FT232BM.***

Au début de 2004, sur la base du prototype utilisant la carte MAVRIC (Prototype 3), j'ai utilisé les schémas de Brian Dean et Pascal Stang comme référence pour créer la première conception de la carte de Wiring. Il avait les caractéristiques suivantes :

*   ATmega128
*   FTDI232BM pour le série et la conversion USB
*   Une LED embarquée connectée à une broche
*   Une LED pour l'alimentation et deux LEDS pour le RX/TX de la communication série.

J'ai utilisé [Eagle PCB de Cadsoft](http://www.cadsoftusa.com/){: target="_blank"} pour concevoir le schéma et le circuit imprimé.

<a href="/images/full/Wiring-schematic.png" data-lity><img alt="Wiring board schematic" src="/images/Wiring-schematic.png" width="600px" height="" /></a>
***Schéma électrique de la carte Wiring.***

<a href="/images/full/Wiring-pcb.png" data-lity><img alt="Wiring board PCB" src="/images/Wiring-pcb.png" width="600px" height="" /></a>
***Layout du circuit imprimé de la carte Wiring.***

Parallèlement au troisième prototype, la version finale de l'API a été testée et affinée. D'autres exemples ont été ajoutés et j'ai écrit le premier exemple Blink pour la LED * qui est encore utilisé aujourd'hui * comme le premier croquis qu'un utilisateur exécute sur une carte Arduino pour apprendre l'environnement. Encore plus d'exemples ont été développés pour prendre en charge les écrans à cristaux liquides (LCD), la communication par port série, les servomoteurs, etc., et même pour interfacer Wiring avec Processing via une communication série. Les détails se trouvent à la page 50 de ma thèse.

En mars 2004, 25 circuits imprimés de la carte Wiring ont été commandés et fabriqués chez [SERP](http://www.serp.it/){: target="_blank"}, et payés par IDII.

J'ai soudé ces 25 cartes à la main et j'ai commencé à effectuer des tests d'ergonomie avec certains de mes camarades de classe à l'IDII. C'était une période passionnante !

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBoard-Assembled.jpg" data-lity><img alt="Première article sur le PCB de Wiring" src="/images/WiringBoard-Assembled.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBoard-ShowingOff.jpg" data-lity><img alt="Démonstration de la carte Wiring" src="/images/WiringBoard-ShowingOff.jpg" width="300px" height="" /></a></span>
</div>
<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WorkingWithFirstWiring-1.jpg" data-lity><img alt="Travail sur les premières cartes Wiring" src="/images/WorkingWithFirstWiring-1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WorkingWithFirstWiring-2.jpg" data-lity><img alt="Travail sur les premières cartes Wiring" src="/images/WorkingWithFirstWiring-2.jpg" width="300px" height="" /></a></span>
</div>
***Photos des premières cartes Wiring***

## Poursuite du développement

Après avoir obtenu mon diplôme à l'IDII en 2004, je suis retourné en Colombie et j'ai commencé à enseigner en tant qu'instructeur en interactive design à l'Universidad de Los Andes. Alors que je continuais à développer Wiring, IDII a décidé de fabriquer et d'assembler un lot de 100 cartes Wiring pour enseigner le physical computing à IDII fin 2004. [Bill Verplank](http://www.billverplank.com/){: target=" _blank"} (un ancien membre du corps professoral de l'IDII) a demandé à Massimo Banzi de m'envoyer 10 cartes pour que je l'aie utilisé dans mes cours en Colombie.

En 2004, le membre de faculté [Yaniv Steiner](http://www.nastypixel.com/prototype/people/yaniv-steiner-2){: target="_blank"}, l'ancien étudiant Giorgio Olivero et le consultant en information designer  Paolo Sancis a lancé le [Instant Soup Project](https://web.archive.org/web/20080220010711/http://www.nastypixel.com/instantsoup/website/cover/){: target="_blank"}, basé sur Wiring à IDII.

## Premier succès majeur - Strangely Familiar

À l'automne 2004, Wiring a été utilisé pour enseigner le physical computing à l'IDII dans le cadre d'un projet appelé Strangely Familiar, composé de 22 étudiants et de 11 projets réussis. Quatre membres du corps professoral ont dirigé le projet de 4 semaines :

*   Massimo Banzi
*   Heather Martin
*   Yaniv Steiner
*   Reto Wettach

Ce projet fut un succès retentissant tant pour les étudiants que pour les professeurs et les enseignants. Strangely Familiar a démontré le potentiel de Wiring en tant que plateforme d'innovation pour l'interactive design.

Le 16 décembre 2004, Bill Verplank m'a envoyé un e-mail disant :

>[Les projets] étaient merveilleux. Tout le monde avait des résultats fonctionnels. Cinq des projets avaient même des moteurs ! Les projets les plus avancés (de deux diplômés du MIT - architecte et mathématicien) ont permis de dessiner un profil dans Proce55ing et de le ressentir avec une roue/moteur pilotée par Wiring...

>Il est clair que l'un des éléments du succès a été [l']utilisation des cartes Wiring.

Voici le résumé du cours ::

* [http://wiring.org.co/exhibition/images/brief.pdf](http://wiring.org.co/exhibition/images/brief.pdf){: target="_blank"}

Voici un livret avec les projets qui en résultent ::

* [http://wiring.org.co/exhibition/images/book01.pdf](http://wiring.org.co/exhibition/images/book01.pdf){: target="_blank"}

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TugTug-Testing.jpg" data-lity><img alt="Travail sur Tug Tug (Haiyan Zhang)" src="/images/TugTug-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TugTug.jpg" data-lity><img alt="Tug Tug" src="/images/TugTug.jpg" width="300px" height="" /></a></span>
</div>
***Téléphone Tug Tug par Haiyan Zhang (avec Aram Armstrong)***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/CommitmentRadio-Testing.jpg" data-lity><img alt="Travail sur Commitment Radio" src="/images/CommitmentRadio-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/CommitmentRadio.jpg" data-lity><img alt="Commitment Radio" src="/images/CommitmentRadio.jpg" width="300px" height="" /></a></span>
</div>
***[Commitment Radio](http://www.d4v3.net/resume/radios.php){: target="_blank"} par David Chiu et Alexandra Deschamps-Sonsino***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/SpeakOut-Testing.jpg" data-lity><img alt="Travail sur Speak Out" src="/images/SpeakOut-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/SpeakOut.jpg" data-lity><img alt="Speak Out" src="/images/SpeakOut.jpg" width="300px" height="" /></a></span>
</div>
***[Speak Out](http://www.andreeachelaru.com/ThesisOther.htm){: target="_blank"} par Tristam Sparks et Andreea Cherlaru (avec Ana Camila Amorim)***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/FeelTheMusicI-Testing.jpg" data-lity><img alt="Travail sur Feel the Music I" src="/images/FeelTheMusicI-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/FeelTheMusicI.jpg" data-lity><img alt="Feel the Music I" src="/images/FeelTheMusicI.jpg" width="300px" height="" /></a></span>
</div>
***Feel the Music I par James Tichenor et David A. Mellis***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TheAmazingAllBandRadio-Testing.jpg" data-lity><img alt="Travail sur The Amazing All Band Radio" src="/images/TheAmazingAllBandRadio-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TheAmazingAllBandRadio.jpg" data-lity><img alt="The Amazing All Band Radio" src="/images/TheAmazingAllBandRadio.jpg" width="300px" height="" /></a></span>
</div>
***[The Amazing All Band Radio](http://neighbourhoodsatellites.com/project/the-amazing-all-band-radio/){: target="_blank"} par Oren Horev & Myriel Milicevic (avec Marcos Weskamp)***

## Le reste du monde

En mai 2005, j'ai passé un contrat avec [Advanced Circuits](http://www.4pcb.com/){: target="_blank"} aux États-Unis pour fabriquer les 200 premiers circuits imprimés en dehors d'IDII, et je les ai assemblées en Colombie.  J'ai commencé à vendre et à expédier des cartes à diverses écoles et universités, et à la fin de 2005, Wiring était utilisé dans le monde entier.

<a href="/images/full/WiringsReachBy2005.png" data-lity><img alt="Wiring's Reach by 2005" src="/images/WiringsReachBy2005.png" width="600px" height="" /></a>
***"Graphique de la portée de Wiring en 2005" fourni par [Collin Reisdorf](https://twitter.com/nillocr){: target="_blank"}***

* * *

# Quand Arduino a-t-il commencé et pourquoi n'étiez-vous pas membre de l'équipe Arduino ?

## La formation d'Arduino

Lorsque IDII a fabriqué le premier ensemble de cartes Wiring, le coût était probablement d'environ 50$ USD chacun. (Je ne sais pas quel était le coût réel, car je n'étais pas impliqué dans le processus. Cependant, je vendais les cartes en Colombie pour environ 60$ USD.) C'était une baisse de prix considérable par rapport aux cartes qui était actuellement disponible, mais cela représentait toujours un coût important pour la plupart des gens.

En 2005, Massimo Banzi, avec David Mellis (à l'époque, un étudiant d'IDII) et David Cuartielles, ont ajouté le microcontrôleur ATmega8 , qui était moins cher, sur Wiring. Ensuite, ils ont forké (ou copié) le code source de Wiring et ont commencé à travailler dessus en tant que projet distinct, appelé Arduino.

Il n'y avait aucune raison de créer un projet séparé, car je les aurais volontiers aidés à développer le support de l'ATmega8 ou de tout autre microcontrôleur. J'avais prévu de faire ça depuis le début.

<a href="/images/full/FuturePlansForWiring.png" data-lity><img alt="Plans futurs pour Wiring" src="/images/FuturePlansForWiring.png" width="600px" height="" /></a>
***J'avais pris par inadvertance une photo de quelques notes sur mes projets pour Wiring, sur la photo de Carmen Frankovic (ancienne étudiante d'IDII de 2002 à 2004) test d'un capteur flexible pour une lampe en mars 2004.***

Wiring et Arduino ont partagé une grande partie des premiers développements effectués par [Nicholas Zambetti](http://www.zambetti.com/projects/arduino/){: target="_blank"}, un ancien élève de l'IDII dans la même classe que David Melis. Pendant une brève période, Nicholas avait été considéré comme un membre de l'équipe Arduino.

À peu près à la même époque, Gianluca Martino (il était consultant chez SERP, l'usine de circuits imprimés d'Ivrea où les premières cartes Wiring ont été fabriquées), a rejoint l'équipe Arduino pour aider à la fabrication et au développement du hardware. Ainsi, pour réduire le coût de leurs cartes, Gianluca, avec l'aide de David Cuartielles, a développé du matériel à un prix inférieur en utilisant l'ATmega8.

<a href="/images/full/ArduinoPrototype1.jpg" data-lity><img alt="Premier prototype d'Arduino : Wiring Lite" src="/images/ArduinoPrototype1.jpg" width="600px" height="" /></a>
***Apparemment, c'est [le premier prototype "Arduino"](https://www.flickr.com/photos/mbanzi/172472136/in/album-72157594173657338/){: target="_blank"} - surnommé Wiring Lite. Je pense que Massimo Banzi a conçu celui-ci, mais je ne suis pas sûr.***

<a href="/images/full/ArduinoExtremeV2.jpg" data-lity><img alt="Arduino Extreme v2" src="/images/ArduinoExtremeV2.jpg" width="600px" height="" /></a>
***[Arduino Extreme v2](https://www.flickr.com/photos/mbanzi/172471940/in/album-72157594173657338/){: target="_blank"} - "Deuxième version de production des cartes USB Arduino. Il a été conçu par Gianluca Martino."***

Tom Igoe (un membre du corps professoral de l'ITP à NYU [^2]) a été invité par Massimo Banzi à IDII pour un atelier et est devenu membre de l'équipe Arduino.

À ce jour, je ne sais pas exactement pourquoi l'équipe Arduino a forké le code de Wiring. C'était assez incompréhensible d'apprendre pourquoi nous n'avions pas travaillé ensemble. Donc, pour répondre à la question, on ne m'a jamais demandé de devenir membre de l'équipe Arduino.

Même si j'étais perplexe face à l'équipe Arduino qui avait forké le code, j'ai continué le développement sur Wiring, et presque toutes les améliorations qui avaient été apportées à Wiring, par moi et de nombreux contributeurs, ont été fusionnées dans le code source d'Arduino. J'ai essayé d'ignorer le fait qu'ils prenaient toujours mon travail et je me suis également interrogé sur la redondance et le gaspillage de ressources dans la duplication des efforts.

Fin 2005, j'ai commencé à travailler avec Casey Reas sur un chapitre du livre "[Processing : A Programming Handbook for Visual Artists and Designers](http://www.amazon.com/Processing-Programming-Handbook-Designers -Artistes/dp/0262182629){: target="_blank"}." [Le chapitre](https://processing.org/tutorials/electronics/){: target="_blank"} présente une brève histoire de l'électronique dans l'art. Il comprend des exemples d'interfaçage entre Processing et Wiring ou Arduino. J'ai présenté ces exemples sur les deux plates-formes et je me suis assuré que les exemples inclus fonctionnaient à la fois pour Wiring et pour Arduino.

Le livre a eu une deuxième édition en 2013 et le chapitre a été relu à nouveau par Casey et moi, et [l'extension](https://processing.org/tutorials/electronics/){: target="_blank"} a été mise en ligne depuis 2014.

* * *

# L'équipe Arduino travaillait-elle avec Wiring avant Arduino ?

Oui, chacun d'eux était formé à l'usage de Wiring avant de créer Arduino.

Massimo Banzi a appris l'utilisation de Wiring à IDII depuis 2004.

<a href="/images/full/WiringBoardsWithMassimo.jpg" data-lity><img alt="Massimo Banzi apprends l'utilisation de Wiring" src="/images/WiringBoardsWithMassimo.jpg" width="600px" height="" /></a>
***Massimo Banzi donne un cours sur l'interactive design à IDII avec les cartes Wiring en 2004.***

David Mellis était un étudiant à IDII entre 2004 et 2005.

<a href="/images/full/DavidMellisAtIDII.jpg" data-lity><img alt="David Mellis à IDII" src="/images/DavidMellisAtIDII.jpg" width="600px" height="" /></a>
***David Mellis flouté qui apprend le physical computing avec Wiring en 2004.***

En janvier 2005, IDII a embauché David Cuartielles pour développer quelques cartes d'extensions pour la carte Wiring, afin d'ajouter le contrôle de moteur et la connectivité Bluetooth.

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBluetoothPlugin.jpg" data-lity><img alt="Carte d'extension Bluetooth pour Wiring" src="/images/WiringBluetoothPlugin.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringMotorControllerPlugin.jpg" data-lity><img alt="Carte d'extension moteur pour Wiring" src="/images/WiringMotorControllerPlugin.jpg" width="300px" height="" /></a></span>
</div>
***Deux cartes d'extensions développées à l'IDII par David Cuartielles et son frère. Un shield Bluetooth à gauche et un shield de contrôleur de moteur à droite***

J'ai montré les premières versions de Wiring à Tom Igoe lors d'une visite à l'ITP à New York en 2003\. À l'époque, il n'avait aucune expérience avec le matériel d'Atmel, car Tom utilisait des microcontrôleurs PIC chez ITP comme alternative aux plates-formes coûteuses comme Parallax Basic Stamp ou Basic X. L'une des recommandations de Tom lors de cette visite était : "eh bien, faites-le pour PIC, parce que c'est ce que nous utilisons ici."

Des années plus tard, en 2007, Tom Igoe a publié la première édition du livre "Making Things Talk" publié par O'Reilly[^3], qui présente l'utilisation de Wiring et d'Arduino.

Gianluca Martino a d'abord travaillé pour SERP (l'usine qui a fabriqué les 25 premières cartes Wiring) et plus tard, il a fondé Smart Projects SRL (1er avril 2004). Smart Projects a fabriqué le premier lot de 100 cartes Wiring pour IDII pour enseigner le physical computing en 2004.

* * *

# Qu'est-ce que Programma2003 et comment est-il lié à vous ou à Wiring ?

Programma2003 était une carte microcontrôleur PIC de chez [Microchip](http://www.microchip.com/){: target="_blank"} développée par Massimo Banzi en 2003\. Après avoir utilisé BasicX pour enseigner le physical computing à l'hiver 2002, Massimo a décidé de faire une carte utilisant la puce PIC en 2003\. Le problème avec les microcontrôleurs PIC était qu'il n'y avait pas de toolchain open source disponible à l'époque, pour utiliser un langage de type C pour les programmer.

<a href="/images/full/Programma2003.jpg" data-lity><img alt="Programma2003" src="/images/Programma2003.jpg" width="600px" height="" /></a>
***[Programma2003](https://www.flickr.com/photos/mbanzi/8610131426/in/album-72157633136997919/){: target="_blank"} carte conçue par Massimo Banzi en 2003***

En raison de l'absence d'une toolchain open source, Massimo a décidé d'utiliser un environnement appelé [JAL](http://justanotherlanguage.org/){: target="_blank"} (Just Another Language) pour programmer le microcontrôleur PIC. JAL a été créé par Wouter van Ooijen.

Il se composait du compilateur JAL, du linker, uploader, bootloader, et d'exemples pour le PIC. Cependant, le logiciel ne fonctionnerait que sur Windows.

Pour faciliter l'utilisation de JAL, Massimo a utilisé les exemples de base de JAL et en a simplifié certains pour le package de distribution pour IDII.

Cependant, en 2003, la plupart des étudiants de l'IDII utilisaient des ordinateurs Mac. Je me suis donc porté volontaire pour aider Massimo en créant un environnement léger et simple pour Mac OS X afin que les étudiants possédant un Mac puissent également l'utiliser.

Dans ma thèse, j'ai qualifié Programma2003 de modèle non viable à suivre, car d'autres outils plus complets étaient déjà disponibles sur le marché. Les principaux problèmes étaient :

* le langage est loin d'être utile dans tout autre contexte (par exemple, vous ne pouvez pas programmer votre ordinateur en utilisant JAL)
* c'est une syntaxe obscure et la conception du matériel rendait très peu probable qu'il soit utilisé dans le futur pour l'enseignement et l'apprentissage
* la carte n'avait pas de LED d'alimentation (un défaut de conception)

Il était impossible de savoir s'il était alimenté ou non (frustrant/dangereux dans un environnement d'apprentissage) et un convertisseur coûteux RS232 vers USB était nécessaire pour le connecter à un ordinateur.

Dans le but d'aider le projet Programma2003 de Massimo, j'ai également écrit quelque chose que j'ai appelé Programma2003 Interface, qui gère essentiellement toute communication série entre un microcontrôleur et un ordinateur avec le réseau. Cela a élargi la boîte à outils de prototypage à IDII. Il permettait aux étudiants d'utiliser des logiciels comme Adobe Flash (anciennement Macromedia) pour communiquer avec un microcontrôleur.

<a href="/images/full/Programma2003InterfaceCode.jpg" data-lity><img alt="Programma2003 Interface Code" src="/images/Programma2003InterfaceCode.jpg" width="" height="400px" /></a>
***Interface de programmation du Programma2003***

* * *

# Pourquoi Arduino n'a-t-il pas fait plus d'effort pour reconnaître l'influence de Wiring ?

Je ne sais pas.

La référence à Wiring sur le site Web Arduino.cc, bien qu'elle se soit légèrement améliorée au fil du temps, est trompeuse car elle tente d'attribuer Wiring à Programma2003.

<a href="/images/full/ArduinoCCCredits-2016-02-23.jpg" data-lity><img alt="Extrait de la pages des remerciements d'Arduino.cc - 2016-02-23" src="/images/ArduinoCCCredits-2016-02-23.jpg" width="600px" height="" /></a>
***Version de l'histoire d'arduino depuis le site web Arduino.cc [https://www.arduino.cc/en/Main/Credits](https://www.arduino.cc/en/Main/Credits){: target="_blank"}***

Cet album photo Flickr de Massimo Banzi à aussi ajouter un peu de confusion:

[https://www.flickr.com/photos/mbanzi/albums/72157633136997919/with/8610131426/](https://www.flickr.com/photos/mbanzi/albums/72157633136997919/with/8610131426/){: target="_blank"}

Il s'intitule "Teaching : IDII 2004 Strangely Familiar". Strangely Familiar a été enseigné avec Wiring (voir ci-dessus). Cet album photo semble associer le Programma2003 à la classe, mais il n'a en fait jamais été utilisé. Il est étrange que les cartes Wiring soient absentes de l'album, cependant [une image de la carte Wiring](https://www.flickr.com/photos/mbanzi/8609019055){: target="_blank"} apparaît.

Ce n'est un secret pour personne que la reconnaissance de Wiring a été très limitée dans le passé. En 2013, au [Open Hardware Summit](http://2013.oshwa.org/schedule/){: target="_blank"} au MIT, lors du panel "Implications of Open Source Business : Forking and Attribution", David Mellis reconnaît, pour la première fois, que l'équipe Arduino n'a pas fait un très bon travail pour attribuer  l'utilisation de Wiring. Malheureusement, il n'a pas expliqué en détail pourquoi ils ne l'avaient pas fait.

* * *

# Le demandeur contre le défendeur

J'ai été silencieux sur tout ce qui s'est passé avec Arduino pendant longtemps. Mais maintenant que des gens s'attribuent frauduleusement mon travail, j'ai senti que je devais parler du passé.

Par exemple, dans l'affaire en cours entre Arduino LLC et Arduino S.R.L., [il y a une réclamation](https://www.unitedstatescourts.org/federal/mad/167131/1-0.html){:target="_blank" }, par le demandeur, ayant pour but d'affirmer que :

>34\. Banzi est le créateur de la plateforme de développement Programma2003, un précurseur des nombreux produits de marque ARDUINO. Voir : [http://sourceforge.net/projects/programma2003/](http://sourceforge.net/projects/programma2003/){: target="_blank"}. Banzi était également le directeur de thèse de maîtrise d'Hernando Barragan dont les travaux aboutiront à la plateforme de développement Wiring qui a inspiré Arduino.

Voici ce qui, à mon avis, est faux avec cette affirmation :

1. Programma2003 n'était pas une plateforme de développement, c'était simplement une carte. Aucun logiciel n'a été développé par le demandeur pour gérer cette carte.
2. Le lien est vide, il n'y a pas de fichiers dans ce repository Sourceforge, alors pourquoi présenter un repository vide comme preuve ?
3. L'idée que le simple fait que Banzi ait été mon directeur de thèse lui confère une sorte de prétention supérieure au travail effectué sur Wiring est, pour le moins, frustrante à lire.

De plus:

>39\. Les fondateurs, assistés de Nicholas Zambetti, un autre étudiant à l'IDII, ont entrepris et développé un projet dans lequel ils ont conçu une plateforme et un environnement pour les cartes de microcontrôleur ("Boards") pour remplacer le projet de développement de Wiring. Banzi a donné son nom au projet, le projet ARDUINO.

Voici les questions que je poserais "aux fondateurs :"
* Pourquoi le "projet de développement de Wiring" a-t-il dû être remplacé ?
* Avez-vous demandé au développeur s'il accepterait de travailler avec vous ?
* N'avez-vous pas aimé le nom d'origine ? (Banzi a donné son nom au projet, après tout)

Je sais que cela peut être fait de temps en temps, mais, à mon avis, c'est contraire à l'éthique et un mauvais exemple pour les universitaires de faire quelque chose comme ça avec le travail d'un étudiant. Les éducateurs, plus que quiconque, devraient éviter de profiter du travail de leurs élèves. D'une certaine manière, je me sens toujours lésé par "Les fondateurs" pour avoir appelé mon travail le leur.

Il peut être légal de prendre le modèle, la philosophie, le discours et les milliers d'heures de travail d'un logiciel open source et d'un projet hardware par son auteur, de forcer l'exercice de promotion d'une marque dessus et de le diffuser au monde comme quelque chose de "nouveau" ou "d'inspiré par", mais... est-ce bien ?

* * *

# Un flux continu d'informations trompeuses

Quelqu'un a dit un jour :

>"Si nous ne mettons pas les choses bien aux clairs, les gens tirent leurs propres conclusions et elles deviennent des faits même si nous n'avons jamais rien dit de telle."[^4]

Il me semble que cela est universellement vrai, et surtout si vous induisez en erreur les gens avec seulement de légères altérations de la vérité, vous pouvez avoir un contrôle sur leurs conclusions.

Voici quelques exemples courants d'informations trompeuses.

## Le tristement célèbre diagramme

<a href="/images/full/InteractionIvreaDiagram.jpg" data-lity><img alt="Diagramme d'Interaction Ivrea (Bizzare)" src="/images/InteractionIvreaDiagram.jpg" width="600px" height="" /></a>
***[http://blog.experientia.com/uploads/2013/10/Interaction_Ivrea_arduino.pdf](http://blog.experientia.com/uploads/2013/10/Interaction_Ivrea_arduino.pdf){: target="_blank"}***

Ce diagramme a été produit pour raconter l'histoire des outils de prototypage développés à l'IDII. Il a été magnifiquement réalisé par Giorgio Olivero, en utilisant le contenu fourni par l'école en 2005, et publié en 2006.

Les projets présentés dans les blobs rouges, bien qu'ils aient été réalisés avec Wiring, semblent être associés à Arduino à une époque ***où Arduino n'existait pas***, et n'existerait que bien plus tard.

Certains des auteurs des projets ont posé des questions sur cette erreur et pourquoi leurs projets ont été présentés comme étant faits avec Arduino, mais ils n'ont reçu aucune réponse.

Malgré le fait que rien n'a été changé dans ce document hautement public, je dois remercier le soutien des étudiants qui l'ont signalé et se sont renseignés à ce sujet.

## The Arduino Documentary

Un autre média qui a fait beaucoup de lui de 2010 était [The Arduino Documentary](https://vimeo.com/18539129){: target="_blank"} (écrit et réalisé par Raúl Alaejos, Rodrigo Calvo).

Celui-ci est très intéressant, surtout vu récemment en 2016\. Je pense que l'idée de faire un documentaire est très bonne, surtout pour un projet avec une histoire aussi riche.

Voici quelques parties qui présentent des contradictions intéressantes :

<a href="http://vimeo.com/18539129?#t=1m45s" data-lity>1:45</a> - 
"Nous voulions qu'il soit open source afin que tout le monde puisse aider et contribuer." Il est suggéré ici que Wiring était closed-source. Vu qu'une partie de Wiring était basée sur Processing, et que Processing était sous licence open source GPL, ainsi que toutes les bibliothèques, Wiring, et donc Arduino, devaient être open source. Ce n'était pas possible que le logiciel soit propriétaire. De plus, l'insinuation qu'ils ont rendu le logiciel plus facile est trompeuse, puisque rien n'a changé dans le langage, qui est l'essence même de la simplicité du projet.

<a href="http://vimeo.com/18539129?#t=3m20s" data-lity>3:20</a> - David Cuartielles connaissait déjà Wiring, car il a été embauché pour concevoir deux cartes d'extension pour celui-ci par IDII en 2005, comme indiqué plus haut dans ce document. David Mellis a appris le physical computing en utilisant Wiring en tant qu'étudiant à l'IDII en 2004\. Fait intéressant, Gianluca est venu en tant que personne capable de concevoir la carte elle-même (il n'était pas seulement payé pour la fabrication de celle-ci) ; il faisait partie de "l'équipe Arduino".

<a href="http://vimeo.com/18539129?#t=8m53s" data-lity>8:53</a> - David Cuartielles fait une représentation au Media Lab de Madrid, en juillet 2005 : « Arduino est le dernier projet, je l'ai terminé la semaine dernière. J'ai parlé au directeur technique d'Ivrea et lui ai dit : ne serait-ce pas formidable si nous pouvions l'offrir gratuitement ? Il m'a répondu - Gratuitement ? - Ouais !" David apparaît ici comme l'auteur d'un projet qu'il a terminé "la semaine dernière", et qui a convaincu le "directeur technique" d'IDII de le proposer gratuitement.

<a href="http://vimeo.com/18539129?#t=18m56s" data-lity>18:56</a> - Massimo Banzi:

>Pour nous au départ c'était un besoin précis : nous savions que l'école fermait et nous avions peur qu'un jour des avocats se présentent et disent - On met tout dans une boîte et on l'oublie. - Alors nous avons pensé - OK, si tout est ouvert, nous pourrons survivre à la fermeture de l'école - C'était donc la première étape.

Celui-ci est très spécial. Il présente de manière trompeuse le fait de rendre Arduino open source comme conséquence de la fermeture de l'école. Cela pose une question : pourquoi une bande de juristes « mettrait-elle dans une boîte » un projet basé sur d'autres projets open source ? C'est presque puéril. Le problème est que les gens ordinaires pourraient penser que c'est vrai, ce qui donne à l'équipe des raisons altruistes de rendre Arduino open source.
* * *

# Absence de reconnaissance au-delà de Wiring

Il semble y avoir une tendance dans la façon dont l'équipe Arduino ne reconnaît pas les équipes importantes qui ont contribué à leur succès.

En octobre 2013, Jan-Christoph Zoels (un ancien membre du corps professoral d'IDII) a écrit à la liste de diffusion de la communauté IDII, un message présentant l'article publié sur Core77 à propos des [actualités Intel-Arduino sur Wired UK](http://www.wired .co.uk/news/archive/2013-10/03/intel-arduino-galileo){: target="_blank"} :

>C'est un vrai moment de fierté de voir Intel faire référence à une initiative d'Interaction Ivrea.

>Et un bon investissement aussi :

>Le développement d'Arduino a été lancé et développé à l'Interaction Design Institute Ivrea avec un financement initial d'environ 250 000 €. Une autre bonne décision a été de garder Arduino en open source à la fin d'Interaction Ivrea en 2005 avant de fusionner avec Domus.

À quoi Massimo Banzi a répondu :

>Je tiens à préciser que nous n'avons jamais reçu de financement d'Ivrea pour Arduino (à part en avoir acheté 50 dans la dernière année de l'institut)

> 250.000 EUR c'est ridicule…

>Cet article doit être retiré maintenant

>Désolé JC, mais tu n'as rien à voir avec   ça.... Vous ne pouvez pas essayer d'obtenir de la reconnaissance pour quelque chose dans lequel vous n'aviez pas été impliqué.

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/JCEmailThread1.jpg" data-lity><img alt="Thread de l'email de célébration" src="/images/JCEmailThread1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/JCEmailThread2.jpg" data-lity><img alt="Réponse au thread de l'email de célébration" src="/images/JCEmailThread2.jpg" width="300px" height="" /></a></span>
</div>

C'était bien, cependant, de recevoir ceci quelques jours plus tard dans le même fil de discussion :

<a href="/images/full/JCEmailThread3.jpg" data-lity><img alt="Suite du thread de l'email de célébration" src="/images/JCEmailThread3.jpg" width="600px" height="" /></a>

* * *

# Informations publiques déformées

Dans cette section, je voulais juste montrer une fraction des nombreux articles (et autres articles de presse) qui ont été écrits sur Arduino, qui incluent son histoire, rarement racontée deux fois de la même manière.

Alors, s'il vous plaît, lisez-les à votre guise, et forgez-vous vos propres opinions, et, bien sûr, posez des questions !

## Mauvais journalisme

Il est rare de voir du journalisme bien documenté de nos jours. Les articles ci-dessous sont d'excellents exemples de ce postulat.

### Wired

Dans une [Interview de Wired de 2008](http://www.wired.com/2008/10/ff-openmanufacturing/){: target="_blank"}, Banzi explique comment il a fait Arduino en un week-end :

>Les deux ont décidé de concevoir leur propre carte et ont engagé l'un des étudiants de Banzi, David Mellis, pour écrire le langage de programmation correspondant. **En deux jours, Mellis a tapé le code** ; trois jours de plus et la carte étaient finis. Ils l'ont appelé l'Arduino, du nom d'un pub voisin, et ce fut un succès instantané auprès des étudiants.

Cet article a été écrit sans aucune vérification des faits. Cela n'aide certainement pas que la personne interrogée ne leur donne pas les bonnes informations.

### IEEE Spectrum

Voici un [article IEEE Spectrum de 2011](http://spectrum.ieee.org/geek-life/hands-on/the-making-of-arduino){: target="_blank"}, intitulé "The Making of Arduino".

Encore une fois, l'histoire est tirée textuellement de la personne interrogée. Je n'ai pas été contacté avant la publication de l'article, même si j'ai été mentionné. Et je doute que quelqu'un de l'IDII ait été contacté.

Une seule des nombreuses parties déroutantes de l'histoire d'Arduino se trouve dans cette citation :

>Le but étant de créer une plateforme rapide et facilement accessible, ils ont estimé qu'il valait mieux ouvrir le projet au plus grand nombre plutôt que de le garder fermé.

Il n'a jamais été fermé.

### Circuits Today

[Un article de 2014 de Circuits Today](http://www.circuitstoday.com/story-and-history-of-development-of-arduino){: target="_blank"} a une ouverture très déroutante :

> C'est à l'Interactive Design Institute [sic] qu'une thèse sur le hardware a été rédigée pour la conception de Wiring par un étudiant colombien nommé Hernando Barragan. Le titre de la thèse était "Arduino – La rivoluzione dell'open hardware" ("Arduino - La révolution de l'open hardware"). Oui, cela sonnait un peu différent des thèses habituelles, mais personne n'aurait imaginé qu'elle se taillerait une place dans le domaine de l'électronique.

>Une équipe de cinq développeurs a travaillé sur cette thèse et lorsque la nouvelle plateforme de Wiring a été terminée, ils ont travaillé pour la rendre beaucoup plus légère, moins chère et disponible pour la communauté open source.

Le titre de ma thèse est évidemment faux. Il n'y avait pas cinq "développeurs" travaillant sur la thèse. Et le code était toujours open source.

Encore une fois, je n'ai pas été consulté.


### Makezine

Dans [une interview de 2013 de Dale Dougherty avec Massimo Banzi](http://makezine.com/2013/01/29/good-design-gets-out-of-the-way/){:target="_blank"} , encore une fois l'histoire change :

> Wiring avait une carte coûteuse, environ 100 $, car il utilisait une puce coûteuse. Je n'aimais pas ça, et le développeur étudiant et moi n'étions pas d'accord.

Dans cette version de l'histoire de Massimo Banzi, Arduino est issu de Wiring, mais il est sous-entendu que j'ai insisté pour avoir une carte à un prix élevé.

Concernant le "désaccord": je n'ai jamais eu de discussion avec Massimo Banzi sur le fait que la carte était trop chère. J'aurais aimé que lui et moi ayons eu plus de discussions sur ces questions, comme j'en ai eu avec d'autres conseillers et collègues, car je trouve cela très enrichissant. La chose la plus proche d'un désaccord a eu lieu après une présentation de thèse réussi, où Massimo a montré un comportement étrange envers moi. Parce qu'il était mon conseiller, j'étais désavantagé, mais j'ai demandé à Massimo pourquoi il se comportait mal envers moi, ce à quoi je n'ai reçu aucune réponse. Je me sentais menacé et c'était très gênant.

Son comportement étrange s'est étendu à ceux qui ont collaboré avec moi sur Wiring plus tard.

>J'ai décidé que nous pouvions faire une version open source de Wiring, en partant de zéro. J'ai demandé à Gianluca Martino [maintenant l'un des cinq partenaires Arduino] de m'aider à fabriquer les premiers prototypes, les premières cartes.

Ici, Massimo implique à nouveau que Wiring n'était pas open source, alors que c'était le cas. Et aussi qu'ils construiraient le logiciel à partir de "zéro", ce qu'ils n'ont pas fait.

## Erreurs académiques

Je comprends à quel point il est facile d'attirer l'attention des gens avec une bonne narration et des histoires convaincantes, mais les universitaires sont censés faire leurs devoirs et au moins vérifier les faits derrière des déclarations non fondées.

Dans ce livre, Making Futures: Marginal Notes on Innovation, Design, and Democracy (Anglais) Relié – 31 octobre 2014 par Pelle Ehn (éditeur), Elisabet M. Nilsson (éditeur), Richard Topgaard (éditeur) :

[Chapitre 8 : Quelle est la profondeur de votre amour ? Sur le Hardware Open Source](http://dspace.mah.se/bitstream/handle/2043/17985/MAKING-FUTURES-EHN-ET-AL-2014-CHAPTER-08.pdf?sequence=19&isAllowed=y){:target="_blank"} (David Cuartielles)

>En 2005, à l'Interaction Design Institute d'Ivrea, nous avons pensé que la réalisation d'une petite plateforme de prototypage destinée aux designers les aiderait à mieux comprendre la technologie.

La version de David Cuartielles de l'histoire de l'Arduino n'inclut même pas Wiring.

Ce livre a été publié chapitre par chapitre sous Creative Commons : [http://dspace.mah.se/handle/2043/17985](http://dspace.mah.se/handle/2043/17985){: target= "_Vide"}


# Plus de liens pour votre lecture

Wiring as predecessor to Arduino:

* [http://ptgmedia.pearsoncmg.com/images/9780321906045/samplepages/9780321906045.pdf](http://ptgmedia.pearsoncmg.com/images/9780321906045/samplepages/9780321906045.pdf){: target="_blank"}

Interview with Ben Fry and Casey Reas:

* [http://rhizome.org/editorial/2009/sep/23/interview-with-casey-reas-and-ben-fry/](http://rhizome.org/editorial/2009/sep/23/interview-with-casey-reas-and-ben-fry/){: target="_blank"}

Safari Books Online, Casey Reas, Getting Started with Processing, Chapter One, Family Tree:

* [https://www.safaribooksonline.com/library/view/getting-started-with/9781449379827/ch01.html](https://www.safaribooksonline.com/library/view/getting-started-with/9781449379827/ch01.html){: target="_blank"}

Page du projet Arduino de Nicholas Zambetti:

* [http://www.zambetti.com/projects/arduino/](http://www.zambetti.com/projects/arduino/){: target="_blank"}

(Nicholas a beaucoup travaillé sur Wiring et Arduino)

## Articles About Arduino vs. Arduino

**Wired Italy** - What's happening in Arduino?

[http://www.wired.it/gadget/computer/2015/02/12/arduino-nel-caos-situazione/](http://www.wired.it/gadget/computer/2015/02/12/arduino-nel-caos-situazione/){: target="_blank"}

**Repubblica Italy** - Massimo Banzi: "The Reason of the War for Arduino"

[http://playground.blogautore.repubblica.it/2015/02/11/la-guerra-per-arduino-la-perla-hi-tech-italiana-nel-caos/](http://playground.blogautore.repubblica.it/2015/02/11/la-guerra-per-arduino-la-perla-hi-tech-italiana-nel-caos/){: target="_blank"}

**Makezine** - Massimo Banzi Fighting for Arduino

[http://makezine.com/2015/03/19/massimo-banzi-fighting-for-arduino/](http://makezine.com/2015/03/19/massimo-banzi-fighting-for-arduino/){: target="_blank"}

**Hackaday** - Federico Musto of Arduino SRL discusses Arduino legal situation

[http://hackaday.com/2015/07/23/hackaday-interviews-federico-musto-of-arduino-srl/](http://hackaday.com/2015/07/23/hackaday-interviews-federico-musto-of-arduino-srl/){: target="_blank"}

**Hackaday** - Federico Musto of Arduino SRL shows us new products and new directions

[http://hackaday.com/2016/01/04/new-products-and-new-directions-an-interview-with-federico-musto-of-arduino-srl/](http://hackaday.com/2016/01/04/new-products-and-new-directions-an-interview-with-federico-musto-of-arduino-srl/){: target="_blank"}

## Video

Massimo going to Ted Talk -- candid (2012-08-06)

[https://www.youtube.com/watch?v=tZxY8_CNiCw](https://www.youtube.com/watch?v=tZxY8_CNiCw){: target="_blank"}

Ceci est une vue candide de Massimo juste avant de se produire lors d'une conférence TED. Vous pouvez vous faire votre propre opinion sur la majorité de la vidéo, cependant, le commentaire le plus intéressant, à mon avis, est <a href="https://youtu.be/tZxY8_CNiCw?start=232" data-lity>sur la fin</a>, où il dit :

>... Innover sans demander d'autorisation. Ainsi, d'une certaine manière, l'Open Source vous permet d'être innovant sans demander la permission.

* * *

# Merci!

Merci d'avoir pris le temps de lire ceci. Je pense qu'il est très important, pas seulement dans le monde académique, de bien reconnaître l'origine des choses. Comme j'ai appris d'éducateurs fantastiques, faire cela correctement non seulement enrichit votre travail, mais le positionne également mieux pour permettre aux autres d'enquêter et de voir d'où viennent vos idées. Peut-être trouveront-ils d'autres alternatives ou amélioreront-ils ce qui a été fait et positionneront-ils mieux leurs propres idées.

Personnellement, regarder la portée de ce que j'ai créé en 2003 dans tant de contextes différents, voir ces commandes donner vie aux idées et aux créations des gens du monde entier, m'a apporté tant de satisfactions, de surprises, de nouvelles questions, des idées, une prise de conscience et amitiés. Je suis reconnaissant pour cela.

Je pense qu'il est important de connaître le passé pour éviter de refaire les mêmes erreurs à l'avenir. Parfois, j'aurais aimé avoir la chance d'en parler différemment, pour un motif différent. Au lieu de cela, j'ai souvent rencontré des journalistes et des gens ordinaires compromis dans leur indépendance. Soit ils avaient des affaires directes avec Arduino, soit ils voulaient simplement éviter de contrarier Massimo Banzi. Ou il y a les individus fermés d'esprit qui suivent une cause et refusent de voir ou d'entendre quoi que ce soit de différent de ce qu'ils croient. Et puis il y a les individus qui font partie de la foule qui reproduit ce qu'on leur dit de reproduire. Pour les autres, ce document est une invitation à faire confiance à votre curiosité, à vous questionner, à approfondir ce qui vous intéresse et vous tient à cœur en tant qu'individu ou membre d'une communauté.

A la prochaine,

Hernando.

* * *

# Index {#index}

* TOC
{:toc}


* * *

[^1]: La notion de "croquis" dans le contexte de l'écriture des programmes vient de Processing et auparavant de [Design by Numbers](http://www.maedastudio.com/1999/dbn/index.php){: target="_blank" } (DBN). Elle a été prolongée par Wiring dans le cadre du prototypage avec l'électronique ou du "sketching" avec le hardware.

[^2]: Interactive Telecommunications Program at New York University

[^3]: Page 34, ISBN-13: 978-0596510510 ISBN-10: 0596510519, [http://www.amazon.com/Making-Things-Talk-Practical-Connecting/dp/0596510519/ref=sr_1_2?ie=UTF8&sr=8-2&keywords=Making+Things+Talk](http://www.amazon.com/Making-Things-Talk-Practical-Connecting/dp/0596510519/ref=sr_1_2?ie=UTF8&sr=8-2&keywords=Making+Things+Talk){: target="_blank"}

[^4]: [https://groups.google.com/a/arduino.cc/d/msg/developers/HEKecd0qhS4/nADS2jW6DgAJ](https://groups.google.com/a/arduino.cc/d/msg/developers/HEKecd0qhS4/nADS2jW6DgAJ){: target="_blank"}
