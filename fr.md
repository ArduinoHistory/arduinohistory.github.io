---
layout: default
title: L'histoire inconnu de l'Arduino
sidebar: sidebar.html
---
[English](/) &middot; [日本語](ja) &middot; [Deutsche](de) &middot; [italiano](it)

[Index](#index)

# Pourquoi écrivez-vous ceci ?

Bonjour. Je m'appelle Hernando Barragán.

Au fil des années, et plus récemment à cause des affaires entre [Arduino LLC and Arduino S.R.L.](http://hackaday.com/2015/03/12/arduino-v-arduino-part-ii/){: target="_blank"}, j'ai reçu beaucoup de questions sur l'histoire de Wiring et, bien sûr, d'Arduino.

On m'a également montré [ce site Web des tribunaux fédéraux des États-Unis](https://www.unitedstatescourts.org/federal/mad/167131/){: target="_blank"}, qui présente des documents citant mon travail pour appuyer les allégations du plaignant qui, à mon avis, contribuent à la déformation des informations entourant mon travail.

L'histoire d'Arduino a été racontée par de nombreuses personnes, et il n'y a pas deux histoires qui correspondent. Je souhaite clarifier certains faits autour de l'histoire d'Arduino, avec des références et des documents appropriés, afin de mieux communiquer aux personnes intéressées, l'origine d'Arduino.

De plus, je tenterai de corriger certaines choses qui sont trompeur à propos de mon rôle ou mon travail en soulignant les erreurs courantes, les informations trompeuses et le mauvais journalisme.

Je ferai d'abord un résumé de l'histoire, puis je répondrai à une série de questions qui m'ont souvent été posées au fil des ans.

* * *

# Pourquoi avez-vous créé Wiring?

J'ai commencé à travailler sur Wiring en 2003 dans le cadre de mon projet de mémoire de maîtrise à l'[Interaction Design Institute Ivrea (IDII)](https://en.wikipedia.org/wiki/Interaction_Design_Institute_Ivrea){: target="_blank"} en Italie.

L'objectif de la thèse était de simplifier l'usage de l'électronique pour les artistes et les designers, en faisant abstraction des détails souvent compliqués de l'électronique afin qu'ils puissent se concentrer sur leurs propres objectifs.

L'intégralité de la thèse pour être télécharger ici : [http://people.interactionivrea.org/h.barragan/thesis/thesis_low_res.pdf](http://people.interactionivrea.org/h.barragan/thesis/thesis_low_res.pdf){: target="_blank"}

Massimo Banzi et [Casey Reas](https://en.wikipedia.org/wiki/C.E.B._Reas){: target="_blank"} (connu pour son travail sur [Processing](https://en.wikipedia.org/wiki/Processing_(programming_language)){: target="_blank"}) étaient les directeurs de ma thèse.

Le projet a reçu beaucoup d'attention à l'IDII et a été utilisé sur [plusieurs](http://www.nastypixel.com/instantsoup){: target="_blank"} autres projets à partir de 2004, jusqu'à la fermeture de l'école à 2005.

Grâce à ma thèse, j'ai fièrement obtenu mon diplôme avec distinction; j'étais la seule personne à l'IDII en 2004 à recevoir cette distinction. J'ai poursuivi le développement de Wiring tout en travaillant à l'[Universidad de Los Andes](http://www.uniandes.edu.co/){: target="_blank"} en Colombie, où j'ai commencé à enseigner en tant qu'instructeur en conception interactive.

Ce qu'est Wiring et pourquoi il a été créé peut être extrait de la section résumé de ma thèse. N'oubliez pas que c'était en 2003 et que ces prémisses ne sont pas à prendre à la légère. Vous les avez peut-être déjà entendus récités comme des déclarations:

> "... Les outils de prototypage actuels pour l'électronique et la programmation sont principalement destinés à l'ingénierie, à la robotique et aux publics techniques. Ils sont difficiles à apprendre et les langages de programmation sont loin d'être utiles dans des contextes extérieurs à une technologie spécifique ..."

> "... Il peut également être utilisé pour enseigner et apprendre la programmation informatique et le prototypage avec l'électronique..."

> "Wiring basé sur Processing..."



Voici les principaux élements clés de Wiring:

1.  Environnement de développement intégré (IDE) simple, basé sur l'IDE Processing.org exécuté sur Microsoft Windows, Mac OS X et Linux pour créer des programmes logiciels ou des "croquis"[^1], avec un éditeur simple
2.  "Langage" simple ou "framework" de programmation pour les microcontrôleurs
3.  Intégration complète de la toolchain (transparente pour l'utilisateur)
4.  Bootloader pour téléverser facilement des programmes
5.  Moniteur série pour inspecter et envoyer des données depuis/vers le microcontrôleur
6.  Logiciel Open source
7.  Hardware Open source basé sur un microcontrôleur Atmel
8.  Référence en ligne complète pour les commandes et bibliothèques, exemples, tutoriels, forum et une vitrine de projets réalisés à l'aide de Wiring

* * *

# Comment Wiring a-t-il été créé ?

A travers ma thèse, il est possible de comprendre le processus de conception que j'ai suivi. Des recherches considérables et des références à des travaux antérieurs ont servi de base à mon travail. Pour illustrer rapidement le processus, quelques points clés sont fournis ci-dessous.

## Le Langage

Vous êtes-vous déjà demandé d'où venaient ces commandes ?

L'une des choses les plus caractéristiques, largement connue et utilisée aujourd'hui par les utilisateurs d'Arduino dans leurs croquis, est probablement l'ensemble de commandes que j'ai créé comme définition de langage pour Wiring.

*   `pinMode()`
*   `digitalRead()`
*   `digitalWrite()`
*   `analogRead()`
*   `analogWrite()`
*   `delay()`
*   `millis()`
*   etc...

Abstraire les broches du microcontrôleur sous forme de nombres était, sans aucun doute, une décision majeure, possible parce que la syntaxe était définie avant d'être mise en œuvre sur une plate-forme matérielle. Toute la dénomination et la syntaxe des commandes du langage sont le résultat d'un processus de conception exhaustif que j'ai mené, qui comprenait des tests utilisateurs avec des étudiants, des observations, des analyses, des ajustements et des itérations.

Au fur et à mesure que je développais les prototypes matériels, le langage s'est également naturellement développé. Ce n'est qu'après la réalisation du prototype final que le langage est devenu concret et raffiné.

Si vous êtes toujours curieux de connaître le processus de conception, il est détaillé dans ma thèse, y compris les étapes précédentes de la dénomination et de la syntaxe des commandes qui ont ensuite été abandonnées.

## Le Hardware

Du point de vue d'un designer, c'était probablement la partie la plus difficile à aborder. J'ai demandé ou acheté des cartes d'évaluation de différents fabricants de microcontrôleurs.

Voici quelques moments clés de la conception matérielle de Wiring.

### Prototype 1

Le premier prototype de Wiring utilisait le microcontrôleur [Parallax](https://www.parallax.com/){: target="_blank"} Javelin Stamp. C'était une option qui m'a paru naturelle puisqu'elle était programmée dans un sous-ensemble du langage Java, qui était déjà utilisé par Processing.

Problème : comme décrit dans le document de thèse à la page 40, la compilation, le linking et le téléversement des programmes de l'utilisateur reposaient sur les outils propriétaires de Parallax. Étant donné que Wiring était prévu pour être un logiciel open source, le Javelin Stamp n'était tout simplement pas une option viable.

<a href="/images/full/WiringPrototype1-JavelinStamp.jpg" data-lity><img alt="Wiring Prototype 1 - Javelin Stamp" src="/images/WiringPrototype1-JavelinStamp.jpg" width="600px" height="" /></a>
******Photo du Javelin Stamp utilisé pour le premier prototype du Hardware pour Wiring.***

Pour les prototypes suivants, les microcontrôleurs ont été choisis en fonction de la disponibilité d'outils open source pour compiler, linker et téléverser le code de l'utilisateur. Cela a conduit à abandonner très tôt la très populaire famille de microcontrôleurs Microchip PIC, car, à l'époque (vers 2003), Microchip ne disposait pas d'une toolchain open source.

### Prototype 2

Pour le deuxième prototype du Hardware de Wiring, le microcontrôleur [Atmel](http://www.atmel.com/){: target="_blank"} basé sur ARM [AT91R40008](http://www.atmel.com/devices/ R40008.aspx){: target="_blank"} a été sélectionné, ce qui a donné d'excellents résultats. Les premiers exemples de croquis ont été développés et les tests de nommage des commandes ont commencé. Par exemple, `pinWrite()` était le nom du désormais omniprésent `digitalWrite()`.

L'Atmel R40008 a servi de banc d'essai pour l'API d'entrée/sortie numérique et l'API de communication série, lors de mon évaluation de ses capacités. L'Atmel R40008 était un microcontrôleur très puissant, mais il était beaucoup trop complexe pour une approche pratique car il était presque impossible de le souder à la main sur un circuit imprimé.

Pour plus d'informations sur ce prototype, voir page 42 de ma thèse.

<a href="/images/full/WiringPrototype2-AtmelAT91R40008.jpg" data-lity><img alt="Wiring Prototype 2 - Atmel AT91R40008" src="/images/WiringPrototype2-AtmelAT91R40008.jpg" width="600px" height="" /></a>
***Photo de l'Atmel AT91R40008 utilisée pour le deuxième prototype du Hardware de Wiring.***

### Prototype 3

Les tests de prototypages précédentes ont conduit au troisième prototype, où le microcontrôleur a été réduit à un microcontrôleur encore puissant, mais avec la possibilité de le bricoler sans exigences d'équipement spécialisé ou de périphériques supplémentaires embarqués.

J'ai sélectionné le microcontrôleur Atmel [ATmega128](http://www.atmel.com/devices/ATMEGA128.aspx){: target="_blank"} et j'ai acheté une carte d'évaluation Atmel [STK500](http://www.atmel.com /tools/STK500.aspx) {: target="_blank"} avec un socket spéciale pour l'ATmega128.

<a href="/images/full/WiringPrototype3-AtmelATmega128.jpg" data-lity><img alt="Wiring Prototype 3 - Atmel STK500 with ATmega128" src="/images/WiringPrototype3-AtmelATmega128.jpg" width="600px" height="" /></a>
******Photo d'un Atmel STK500 avec l'extension ATmega128.******

Les tests avec le STK500 furent un succès immédiat, j'ai donc acheté une carte [MAVRIC](http://www.bdmicro.com/mavric-ib/){: target="_blank"} de [BDMICRO](http://www .bdmicro.com/){: target="_blank"} avec un ATmega128 soudé. Le travail de Brian Dean sur ses cartes MAVRIC était sans précédent à cette époque, et son travail l'a poussé à créer un outil logiciel pour téléverser facilement de nouveaux programmes sur sa carte. Il est encore utilisé aujourd'hui dans le logiciel Arduino, et s'appelle "avrdude".

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
*   Une LED sur l'alimentation et pour deux LEDS pour les RX/TX de la communication série.

J'ai utilisé [Eagle PCB from Cadsoft](http://www.cadsoftusa.com/){: target="_blank"} pour concevoir le schéma et le circuit imprimé.

<a href="/images/full/Wiring-schematic.png" data-lity><img alt="Wiring board schematic" src="/images/Wiring-schematic.png" width="600px" height="" /></a>
***Schéma électrique de la carte Wiring.***

<a href="/images/full/Wiring-pcb.png" data-lity><img alt="Wiring board PCB" src="/images/Wiring-pcb.png" width="600px" height="" /></a>
***Layout du circuit imprimée de la carte Wiring.***

Parallèlement au troisième prototype, la version finale de l'API a été testée et affinée. D'autres exemples ont été ajoutés et j'ai écrit le premier exemple Blink pour la LED * qui est encore utilisé aujourd'hui * comme le premier croquis qu'un utilisateur exécute sur une carte Arduino pour apprendre l'environnement. Encore plus d'exemples ont été développés pour prendre en charge les écrans à cristaux liquides (LCD), la communication par port série, les servomoteurs, etc. et même pour interfacer Wiring avec Processing via une communication série. Les détails se trouvent à la page 50 de ma thèse.

En Mars 2004, 25 circuits imprimés de la carte Wiring ont été commandées et fabriquées chez [SERP](http://www.serp.it/){: target="_blank"}, et payées par IDII.

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

Après avoir obtenu mon diplôme à l'IDII en 2004, je suis retourné en Colombie et j'ai commencé à enseigner en tant qu'instructeur en conception interactive à l'Universidad de Los Andes. Alors que je continuais à développer Wiring, IDII a décidé de fabriquer et d'assembler un lot de 100 cartes Wiring pour enseigner le physical computing à IDII fin 2004. [Bill Verplank](http://www.billverplank.com/){: target=" _blank"} (un ancien membre du corps professoral de l'IDII) a demandé à Massimo Banzi de m'envoyer 10 cartes pour que je l'ai utilise dans mes cours en Colombie.

En 2004, le membre du corps professoral [Yaniv Steiner](http://www.nastypixel.com/prototype/people/yaniv-steiner-2){: target="_blank"}, l'ancien étudiant Giorgio Olivero et le consultant en conception d'informations Paolo Sancis a lancé le [Instant Soup Project](http://www.nastypixel.com/instantsoup/website/cover/){: target="_blank"}, basé sur Wiring at IDII.

## Premier succès majeur - Strangely Familiar

À l'automne 2004, Wiring a été utilisé pour enseigner le physical computing à l'IDII dans le cadre d'un projet appelé Strangely Familiar, composé de 22 étudiants et de 11 projets réussis. Quatre membres du corps professoral ont dirigé le projet de 4 semaines :

*   Massimo Banzi
*   Heather Martin
*   Yaniv Steiner
*   Reto Wettach

Il fini par être un succès retentissant tant pour les étudiants que pour les professeurs et les enseignants. Strangely Familiar a démontré le potentiel de Wiring en tant que plate-forme d'innovation pour la conception interactive

Le 16 décembre 2004, Bill Verplank m'a envoyé un e-mail disant :

>[Les projets] étaient merveilleux. Tout le monde avait des résultats fonctionnels. Cinq des projets avaient même des moteurs ! Les projets les plus avancés (de deux diplômés du MIT - architecte et mathématicien) ont permis de dessiner un profil dans Proce55ing et de le ressentir avec une roue/moteur piloté par Wiring...

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
***[Commitment Radio](http://www.d4v3.net/resume/radios.php){: target="_blank"} by David Chiu and Alexandra Deschamps-Sonsino***

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
***"Graphique de la portée de Wiring's en 2005" fourni par [Collin Reisdorf](https://twitter.com/nillocr){: target="_blank"}***

* * *

# Quand Arduino a-t-il commencé et pourquoi n'étiez-vous pas membre de l'équipe Arduino ?

## La formation d'Arduino

Lorsque IDII a fabriqué le premier ensemble de cartes Wiring, le coût était probablement d'environ 50$ USD chacun. (Je ne sais pas quel était le coût réel, car je n'étais pas impliqué dans le processus. Cependant, je vendais les cartes en Colombie pour environ 60$ USD.) C'était une baisse de prix considérable par rapport aux cartes qui étaient actuellement disponible, mais cela représentait toujours un coût important pour la plupart des gens.

En 2005, Massimo Banzi, avec David Mellis (un étudiant IDII à l'époque) et David Cuartielles, ont ajouté la prise en charge du microcontrôleur ATmega8 moins cher par Wiring. Ensuite, ils ont forké (ou copié) le code source de Wiring et ont commencé à travailler dessus en tant que projet distinct, appelé Arduino.

Il n'y avait aucune raison de créer un projet séparé, car je les aurais volontiers aidés et développé le support de l'ATmega8 ou de toute autre microcontrôleur. J'avais prévu de faire ça depuis le début.

<a href="/images/full/FuturePlansForWiring.png" data-lity><img alt="Plans futurs pour Wiring" src="/images/FuturePlansForWiring.png" width="600px" height="" /></a>
***J'avais pris par inadvertance une photo de quelques notes sur mes projets pour Wiring, sur la photo de Carmen Frankovic (ancienne étudiante IDII de 2002 à 2004) test d'un capteur flexible pour une lampe en mars 2004.***

Wiring et Arduino ont partagé une grande partie des premiers développements effectués par [Nicholas Zambetti](http://www.zambetti.com/projects/arduino/){: target="_blank"}, un ancien élève de l'IDII dans la même classe que David Melis. Pendant une brève période, Nicholas avait été considéré comme un membre de l'équipe Arduino.

À peu près à la même époque, Gianluca Martino (il était consultant chez SERP, l'usine de circuits imprimés d'Ivrea où les premières cartes Wiring ont été fabriquées), a rejoint l'équipe Arduino pour aider à la fabrication et au développement du hardware. Ainsi, pour réduire le coût de leurs cartes, Gianluca, avec l'aide de David Cuartielles, a développé du matériel à un prix inférieur en utilisant l'ATmega8.

<a href="/images/full/ArduinoPrototype1.jpg" data-lity><img alt="Premier prototype d'Arduino : Wiring Lite" src="/images/ArduinoPrototype1.jpg" width="600px" height="" /></a>
***Apparemment, c'est [le premier prototype "Arduino"](https://www.flickr.com/photos/mbanzi/172472136/in/album-72157594173657338/){: target="_blank"} - surnommé Wiring Lite. Je pense que Massimo Banzi a conçu celui-ci, mais je ne suis pas sûr.***

<a href="/images/full/ArduinoExtremeV2.jpg" data-lity><img alt="Arduino Extreme v2" src="/images/ArduinoExtremeV2.jpg" width="600px" height="" /></a>
***[Arduino Extreme v2](https://www.flickr.com/photos/mbanzi/172471940/in/album-72157594173657338/){: target="_blank"} - "Deuxième version de production des cartes USB Arduino. Il a été conçu par Gianluca Martino."***

Tom Igoe (un membre du corps professoral de l'ITP à NYU [^ 2]) a été invité par Massimo Banzi à IDII pour un atelier et est devenu membre de l'équipe Arduino.

À ce jour, je ne sais pas exactement pourquoi l'équipe Arduino a forké le code de Wiring. C'était assez incompréhensible d'apprendre pourquoi nous n'avions pas travaillé ensemble. Donc, pour répondre à la question, on ne m'a jamais demandé de devenir membre de l'équipe Arduino.

Même si j'étais perplexe face à l'équipe Arduino qui avait forké le code, j'ai continué le développement sur Wiring, et presque toutes les améliorations qui avaient été apportées à Wiring, par moi et de nombreux contributeurs, ont été fusionnées dans le code source Arduino. J'ai essayé d'ignorer le fait qu'ils prenaient toujours mon travail et je me suis également interrogé sur la redondance et le gaspillage de ressources dans la duplication des efforts.

Fin 2005, j'ai commencé à travailler avec Casey Reas sur un chapitre du livre "[Processing : A Programming Handbook for Visual Artists and Designers](http://www.amazon.com/Processing-Programming-Handbook-Designers -Artistes/dp/0262182629){: target="_blank"}." [Le chapitre](https://processing.org/tutorials/electronics/){: target="_blank"} présente une brève histoire de l'électronique dans l'art. Il comprend des exemples d'interface de Processing avec Wiring et Arduino. J'ai présenté ces exemples sur les deux plates-formes et je me suis assuré que les exemples inclus fonctionnaient à la fois pour Wiring et pour Arduino.

By the end of 2005, I started to work with Casey Reas on a chapter for the book "[Processing: A Programming Handbook for Visual Artists and Designers](http://www.amazon.com/Processing-Programming-Handbook-Designers-Artists/dp/0262182629){: target="_blank"}."  [The chapter](https://processing.org/tutorials/electronics/){: target="_blank"} presents a short history of electronics in the Arts.  It includes examples for interfacing Processing with Wiring and Arduino. I presented those examples in both platforms and made sure the examples included worked for both Wiring and Arduino.

The book got a second edition in 2013 and the chapter was revised again by Casey and me, and [the extension](https://processing.org/tutorials/electronics/){: target="_blank"} has been made available online since 2014.

* * *

# Did The Arduino Team Work with Wiring Before Arduino?

Yes, each of them had experience with Wiring before creating Arduino.

Massimo Banzi taught with Wiring at IDII from 2004.

<a href="/images/full/WiringBoardsWithMassimo.jpg" data-lity><img alt="Massimo Banzi Teaching with Wiring" src="/images/WiringBoardsWithMassimo.jpg" width="600px" height="" /></a>
***Massimo Banzi teaching interaction design at IDII with Wiring boards in 2004.***

David Mellis was a student at IDII from 2004 to 2005.

<a href="/images/full/DavidMellisAtIDII.jpg" data-lity><img alt="David Mellis at IDII" src="/images/DavidMellisAtIDII.jpg" width="600px" height="" /></a>
***A blurry version of David Mellis learning physical computing with Wiring in 2004.***

In January 2005, IDII hired David Cuartielles to develop a couple of plug-in boards for the Wiring board, for motor control and bluetooth connectivity.

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBluetoothPlugin.jpg" data-lity><img alt="Wiring Bluetooth Plugin" src="/images/WiringBluetoothPlugin.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringMotorControllerPlugin.jpg" data-lity><img alt="Wiring Motor Controller Plugin" src="/images/WiringMotorControllerPlugin.jpg" width="300px" height="" /></a></span>
</div>
***Two plug-in boards developed at IDII by David Cuartielles and his brother. Bluetooth shield on the left, and a motor controller shield on the right.***

I showed early versions of Wiring to Tom Igoe during a visit to ITP in New York in 2003\. At the time, he had no experience with Atmel hardware, as Tom was using PIC microcontrollers at ITP as an alternative to the costly platforms like Parallax Basic Stamp or Basic X. One of Tom's recommendations at this visit was: "well, do it for PIC, because this is what we use here."

Years later, in 2007, Tom Igoe released the first edition of the "Making Things Talk" book published by O'Reilly[^3], which presents the use of both Wiring and Arduino.

Gianluca Martino originally worked for SERP (the factory that made the first 25 Wiring circuit boards) and later he founded Smart Projects SRL (April 1st, 2004).  Smart Projects made the first batch of 100 Wiring boards for IDII to teach physical computing in 2004.

* * *

# What is Programma2003 and How is it Related to You or to Wiring?

Programma2003 was a [Microchip](http://www.microchip.com/){: target="_blank"} PIC microcontroller board developed by Massimo Banzi in 2003\. After using BasicX to teach Physical computing in the winter of 2002, Massimo decided to do a board using the PIC chip in 2003\. The problem with the PIC microcontrollers was that there wasn't an open source toolchain available at the time, to use a language like C to program them.

<a href="/images/full/Programma2003.jpg" data-lity><img alt="Programma2003" src="/images/Programma2003.jpg" width="600px" height="" /></a>
***[Programma2003](https://www.flickr.com/photos/mbanzi/8610131426/in/album-72157633136997919/){: target="_blank"} board designed by Massimo Banzi in 2003***

Because of the lack of an open source toolchain, Massimo decided to use an environment called [JAL](http://justanotherlanguage.org/){: target="_blank"} (Just Another Language) to program the PIC microcontroller.  JAL was created by Wouter van Ooijen.

It consisted of the JAL compiler, linker, uploader, bootloader and examples for the PIC.  However, the software would only run on Windows.

To make JAL easier to use, Massimo used the base examples from JAL and simplified some of them for the distribution package for IDII.

However, in 2003, most students at IDII used Mac computers. So I volunteered to help Massimo by making a small and simple environment for Mac OS X so students with a Mac could use it as well.

In my thesis document, I characterized Programma2003 as a non-viable model to follow, since other more comprehensive tools were already available in the market. The main problems were:

*   the language is far from useful in any other context (e.g. you can't program your computer using JAL)
*   it's arcane syntax and the hardware design made it highly unlikely to go somewhere in the future for teaching and learning
*   the board didn't have a power LED (a design flaw)

It was impossible to know if it was powered or not (frustrating/dangerous in a learning environment) and an additional RS232 to USB expensive converter was required to connect it to a computer.

As a gesture to help Massimo's Programma2003 project, I also wrote something I called Programma2003 Interface, which basically interfaced any serial communication between a microcontroller and a computer with the network. This expanded the prototyping toolbox at IDII. It allowed students to use software like Adobe Flash (formerly Macromedia) to communicate with a microcontroller.

<a href="/images/full/Programma2003InterfaceCode.jpg" data-lity><img alt="Programma2003 Interface Code" src="/images/Programma2003InterfaceCode.jpg" width="" height="400px" /></a>
***Programma2003 Interface Code***

* * *

# Why Hasn't Arduino Acknowledged Wiring Better?

I don't know.

The reference to Wiring on the Arduino.cc website, although it has improved slightly over time, is misleading as it tries to attribute Wiring to Programma2003.

<a href="/images/full/ArduinoCCCredits-2016-02-23.jpg" data-lity><img alt="Arduino.cc Credits Page Excerpt - 2016-02-23" src="/images/ArduinoCCCredits-2016-02-23.jpg" width="600px" height="" /></a>
***Arduino.cc website version of Arduino's History from [https://www.arduino.cc/en/Main/Credits](https://www.arduino.cc/en/Main/Credits){: target="_blank"}***

Adding to the confusion is this Flickr photo album by Massimo Banzi:

[https://www.flickr.com/photos/mbanzi/albums/72157633136997919/with/8610131426/](https://www.flickr.com/photos/mbanzi/albums/72157633136997919/with/8610131426/){: target="_blank"}

It is called "Teaching: IDII 2004 Strangely Familiar".  Strangely Familiar was taught with Wiring (see above). This photo album seems to associate the Programma2003 with the class, but it was, in fact, never used.  It is odd that the Wiring boards are absent from the album, however [one Wiring board picture](https://www.flickr.com/photos/mbanzi/8609019055){: target="_blank"} does appear.

It is no secret that the acknowledgement of Wiring has been very limited in the past. Back in 2013, at [Open Hardware Summit](http://2013.oshwa.org/schedule/){: target="_blank"} at MIT, during the panel "Implications of Open Source Business: Forking and Attribution", David Mellis acknowledges, for the first time, that the Arduino Team hadn't done a very good job acknowledging Wiring.  Unfortunately, he didn't go into details why they hadn't.

* * *

# The Plaintiff vs. The Defendant

I've been quiet about everything that has happened with Arduino for a long time.  But now that people are fraudulently saying that my work is their's, I feel like I need to speak up about the past.

For example, in the ongoing case between Arduino LLC and Arduino S.R.L., [there is a claim](https://www.unitedstatescourts.org/federal/mad/167131/1-0.html){: target="_blank"}, by the Plaintiff, such that:

>34\. Banzi is the creator of the Programma2003 Development Platform, a precursor of the many ARDUINO-branded products. See: [http://sourceforge.net/projects/programma2003/](http://sourceforge.net/projects/programma2003/){: target="_blank"}.  Banzi was also the Master's Thesis advisor of Hernando Barragan whose work would result in the Wiring Development Platform which inspired Arduino.

Here is what, in my opinion, is wrong with that claim:

1.  The Programma2003 was not a Development Platform, it was simply a board.  There was no software developed by the Plaintiff to accompany that board.
2.  The link is empty, there are no files in that Sourceforge repository, so why present an empty repository as evidence?
3.  The idea that the mere fact that Banzi was my thesis advisor gives him some sort of higher claim to the work done on Wiring, is, to say the least, frustrating to read.

Further on:

>39\. The Founders, assisted by Nicholas Zambetti, another student at IDII, undertook and developed a project in which they designed a platform and environment for microcontroller boards ("Boards") to replace the Wiring Development Project. Banzi gave the project its name, the ARDUINO project.

Here are the questions I'd ask "The Founders:"

*   Why did the "Wiring Development Project" need to be replaced?
*   Did you ask the developer if he would work with you?
*   Did you not like the original name? (Banzi gave the project its name, after all)

I know it might be done now and again, but, in my opinion, it is unethical and a bad example for academics to do something like this with the work of a student.  Educators, more than anybody else, should avoid taking advantage of their student's work.  In a way, I still feel violated by "The Founders" for calling my work their's.

It may be legal to take an open source software and hardware project's model, philosophy, discourse, and the thousands of hours of work by its author, exert a branding exercise on it, and release it to the world as something "new" or "inspired", but... is it right?

* * *

# Continuous Misleading Information

Someone once said:

>"If we don't make things ultra clear, people draw their own conclusions and they become facts even if we never said anything like that."[^4]

It seems to me that this is universally true, and especially if you mislead people with only slight alterations of the truth, you can have control over their conclusions.

Here are a couple of mainstream examples of misleading information.

## The Infamous Diagram

<a href="/images/full/InteractionIvreaDiagram.jpg" data-lity><img alt="Interaction Ivrea (Weird) Diagram" src="/images/InteractionIvreaDiagram.jpg" width="600px" height="" /></a>
***[http://blog.experientia.com/uploads/2013/10/Interaction_Ivrea_arduino.pdf](http://blog.experientia.com/uploads/2013/10/Interaction_Ivrea_arduino.pdf){: target="_blank"}***

This diagram was produced to tell the story of the prototyping tools developed at IDII. It was beautifully done by Giorgio Olivero, using the content provided by the school in 2005, and released in 2006.

The projects presented in the red blobs, although they were made with Wiring, appear to be associated with Arduino at a time *when Arduino didn't even exist*, nor was even close to being ready to do them.

Some of the authors of the projects inquired about the mistake, and why their projects were shifted to Arduino, but received no response.

Despite the fact that nothing was changed in this highly public document, I have to thank the support of the students who pointed it out and inquired about it.

## The Arduino Documentary

Another very public piece of media from 2010 was [The Arduino Documentary](https://vimeo.com/18539129){: target="_blank"} (written and directed by Raúl Alaejos, Rodrigo Calvo).

This one is very interesting, especially seeing it today in 2016\. I think the idea of doing a documentary is very good, especially for a project with such a rich history.

Here are some parts that present some interesting contradictions:

<a href="http://vimeo.com/18539129?#t=1m45s" data-lity>1:45</a> - "We wanted it to be open source so that everybody could come and help, and contribute."  It is suggested here that Wiring was closed source.  Because part of Wiring was based on Processing, and Processing was GPL open source, as well as all the libraries, Wiring, and hence Arduino, had to be open source.  It was not an option to have it be closed source.  Also, the insinuation that they made the software easier is misleading, since nothing changed in the language, which is the essence of the project's simplicity.

<a href="http://vimeo.com/18539129?#t=3m20s" data-lity>3:20</a> - David Cuartielles already knew about Wiring, as he was hired to design two plug-in boards for it by IDII in 2005 as pointed out earlier in this document. David Mellis learned physical computing using Wiring as a student at IDII in 2004\. Interestingly, Gianluca came in as the person who was able to design the board itself (he wasn't just a contractor for manufacturing); he was part of the "Arduino Team".

<a href="http://vimeo.com/18539129?#t=8m53s" data-lity>8:53</a> - David Cuartielles is presenting at the Media Lab in Madrid, in July 2005: "Arduino is the last project, I finished it last week.  I talked to Ivrea's technical director and told him: Wouldn't it be great if we can do something we offer for free? he says - For free? - Yeah!" David comes across here as the author of a project that he completed "last week", and convincing the "technical director" at IDII to offer it for free.

<a href="http://vimeo.com/18539129?#t=18m56s" data-lity>18:56</a> - Massimo Banzi:

>For us at the beginning it was a specific need: we knew the school was closing and we were afraid that lawyers would show up one day and say - Everything here goes into a box and gets forgotten about. - So we thought - OK, if we open everything about this, then we can survive the closing of the school - So that was the first step.

This one is very special.  It misleadingly presents the fact of making Arduino open source as the consequence of the school closing.  This poses a question: why would a bunch of lawyers "put in a box" a project based on other open source projects?  It is almost puerile.  The problem is, common people might think this is true, forming altruistic reasons for the team to make Arduino open source.

* * *

# Absence of Recognition Beyond Wiring

There seems to be a trend in how the Arduino Team fails to recognize significant parties that contributed to their success.

In October 2013, Jan-Christoph Zoels (a former IDII faculty member) wrote to the IDII community mail list, a message presenting the article released at Core77 about the [Intel-Arduino news on Wired UK](http://www.wired.co.uk/news/archive/2013-10/03/intel-arduino-galileo){: target="_blank"}:

>A proud moment to see Intel referring to an Interaction Ivrea initiative.

>And a good investment too:

>Arduino development was started and developed at Interaction Design Institute Ivrea with an original funding of circa 250.000€. Another good decision was to keep Arduino as open source at the end of Interaction Ivrea in 2005 before merging with Domus.

To which Massimo Banzi responded:

>I would like to point out that we never got any funding from Ivrea for Arduino (apart from buying 50 of them in the last year of the institute)

>250.000 EUR is ridiculous…

>This article must be retracted now

>Sorry JC but you had nothing to do.with  this.... You can't possibly try to get credit for.something you hadn't been involved with

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/JCEmailThread1.jpg" data-lity><img alt="Celebration Email Thread Posting" src="/images/JCEmailThread1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/JCEmailThread2.jpg" data-lity><img alt="Celebration Email Thread Response" src="/images/JCEmailThread2.jpg" width="300px" height="" /></a></span>
</div>

It was nice, however, to get this a few days later in the same email thread:

<a href="/images/full/JCEmailThread3.jpg" data-lity><img alt="Celebration Email Thread Follow-up" src="/images/JCEmailThread3.jpg" width="600px" height="" /></a>

* * *

# Distorted Public Information

In this section, I just wanted to show a fraction of the many different articles (and other press) that have been written about Arduino, which include its history that is rarely told the same way twice.

So, please, read them at your leisure, and form your own opinions, and, definitely, ask questions!

## Poor Journalism

It is rare to see well researched journalism these days.  The articles below are excellent examples of that postulate.

### Wired

In a [2008 Wired interview](http://www.wired.com/2008/10/ff-openmanufacturing/){: target="_blank"}, Banzi explains how he did Arduino in a weekend:

>The two decided to design their own board and enlisted one of Banzi's students—David Mellis—to write the programming language for it. **In two days, Mellis banged out the code**; three days more and the board was complete. They called it the Arduino, after a nearby pub, and it was an instant hit with the students.

This article has been written without any fact checking.  It certainly doesn't help that the interviewee isn't telling them the right information.

### IEEE Spectrum

Here is a [2011 IEEE Spectrum article](http://spectrum.ieee.org/geek-life/hands-on/the-making-of-arduino){: target="_blank"}, titled "The Making of Arduino".

Again, the history is taken verbatim from the interviewee.  I was not contacted before the article was published, even though I was mentioned.  And I doubt that anyone from IDII was contacted.

Just one of the many confusing parts of Arduino's history is in this quote:

>Since the purpose was to create a quick and easily accessible platform, they felt they'd be better off opening up the project to as many people as possible rather than keeping it closed.

It was never closed.

### Circuits Today

[A 2014 article from Circuits Today](http://www.circuitstoday.com/story-and-history-of-development-of-arduino){: target="_blank"} has a very confusing opening:

>It was in the Interactive Design Institute [sic] that a hardware thesis was contributed for a wiring design by a Colombian student named Hernando Barragan. The title of the thesis was "Arduino–La rivoluzione dell'open hardware" ("Arduino – The Revolution of Open Hardware"). Yes, it sounded a little different from the usual thesis but none would have imagined that it would carve a niche in the field of electronics.

>A team of five developers worked on this thesis and when the new wiring platform was complete, they worked to make it much lighter, less expensive, and available to the open source community.

The title of my thesis is obviously wrong.  There weren't five "developers" working on the thesis.  And the code was always open source.

Again, I wasn't contacted for reference.


### Makezine

In [a 2013 interview by Dale Dougherty with Massimo Banzi](http://makezine.com/2013/01/29/good-design-gets-out-of-the-way/){: target="_blank"}, once again the story changes:

>Wiring had an expensive board, about $100, because it used an expensive chip.  I didn't like that, and the student developer and I disagreed.

In this version of the story by Massimo Banzi, Arduino originated from Wiring, but it is implied that I was insistent on having an expensive board.

Regarding the "disagreement": I never had a discussion with Massimo Banzi about the board being too expensive. I wish that he and I would have had more discussions on such matters, as I had with other advisors and colleagues, as I find it very enriching. The closest thing to a disagreement took place after a successful thesis presentation event, where Massimo showed some odd behaviour towards me. Because he was my advisor, I was at a disadvantage, but I asked Massimo why he was behaving badly towards me, to which I received no answer.  I felt threatened, and it was very awkward.

His odd behaviour extended to those who collaborated with me on Wiring later on.

>I decided that we could make an open source version of Wiring, starting from scratch. I asked Gianluca Martino [now one of the five Arduino partners] to help me manufacture the first prototypes, the first boards.

Here, Massimo is again implying that Wiring wasn't open source, which it was.  And also that they would build the software from "scratch", which they didn't.

## Academic Mistakes

I understand how easy it is to engage people with good storytelling and compelling tales, but academics are expected to do their homework, and at least check the facts behind unsubstantiated statements.

In this book, Making Futures: Marginal Notes on Innovation, Design, and Democracy Hardcover – October 31, 2014 by Pelle Ehn (Editor), Elisabet M. Nilsson (Editor), Richard Topgaard (Editor):

[Chapter 8: How Deep is Your Love? On Open-Source Hardware](http://dspace.mah.se/bitstream/handle/2043/17985/MAKING-FUTURES-EHN-ET-AL-2014-CHAPTER-08.pdf?sequence=19&isAllowed=y){: target="_blank"} (David Cuartielles)

>In 2005, at the Interaction Design Institute Ivrea, we had the vision that making a small prototyping platform aimed at designers would help them getting a better understanding of technology.

David Cuartielles' version of Arduino's history doesn't even include Wiring.

This book has been released chapter by chapter under Creative Commons: [http://dspace.mah.se/handle/2043/17985](http://dspace.mah.se/handle/2043/17985){: target="_blank"}


# More Links for Your Perusal

Wiring as predecessor to Arduino:

* [http://ptgmedia.pearsoncmg.com/images/9780321906045/samplepages/9780321906045.pdf](http://ptgmedia.pearsoncmg.com/images/9780321906045/samplepages/9780321906045.pdf){: target="_blank"}

Interview with Ben Fry and Casey Reas:

* [http://rhizome.org/editorial/2009/sep/23/interview-with-casey-reas-and-ben-fry/](http://rhizome.org/editorial/2009/sep/23/interview-with-casey-reas-and-ben-fry/){: target="_blank"}

Safari Books Online, Casey Reas, Getting Started with Processing, Chapter One, Family Tree:

* [https://www.safaribooksonline.com/library/view/getting-started-with/9781449379827/ch01.html](https://www.safaribooksonline.com/library/view/getting-started-with/9781449379827/ch01.html){: target="_blank"}

Nicholas Zambetti Arduino Project Page:

* [http://www.zambetti.com/projects/arduino/](http://www.zambetti.com/projects/arduino/){: target="_blank"}

(Nicholas did a lot of work with both Wiring and Arduino)

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

This is a candid view of Massimo just before performing at a TED Talk.  You can make your own mind up about the majority of the video, however, the most interesting comment, in my opinion, is <a href="https://youtu.be/tZxY8_CNiCw?start=232" data-lity>at the end</a>, where he says:

>... Innovation without asking for permission. So, in a way, Open Source allows you to be innovative without asking for permission.

* * *

# Thank You!

Thank you for taking time to read this.  I think it is very important, not just in the academic world, to properly acknowledge the origin of things.  As I learned from fantastic educators, doing this properly not only enriches your work, but also positions it better to allow others to investigate and see where your ideas come from.  Maybe they will find other alternatives or improve what was done and better position their own ideas.

Personally, watching the outreach of what I created back in 2003 in so many different contexts, seeing those commands bringing to life people's ideas and creations from all over the world, has brought me so many satisfactions, surprises, new questions, ideas, awareness and friendships. I am thankful for that.

I think it is important to know the past to avoid making the same mistakes in the future.  Sometimes I wish I would have had a chance to talk about this differently, for a different motif. Instead, many times I have come across journalists and common people compromised in their independence. Either they had direct business with Arduino, or simply wanted to avoid upsetting Massimo Banzi. Or there are the close-minded individuals following a cause and refusing to see or hear anything different from what they believe. And then there are the individuals who are just part of the crowd that reproduce what they are told to reproduce. For those others, this document is  an invitation to trust your curiosity, to question, to dig deeper in whatever interests you and is important to you as an individual or as a member of a community.

I'll see you soon,

Hernando.

* * *

# Index {#index}

* TOC
{:toc}


* * *

[^1]: The notion of a "Sketch" within the context of writing programs comes from Processing and previously from [Design by Numbers](http://www.maedastudio.com/1999/dbn/index.php){: target="_blank"} (DBN). It was extended by Wiring within the context of prototyping with electronics or "sketching" with hardware.

[^2]: Interactive Telecommunications Program at New York University

[^3]: Page 34, ISBN-13: 978-0596510510 ISBN-10: 0596510519, [http://www.amazon.com/Making-Things-Talk-Practical-Connecting/dp/0596510519/ref=sr_1_2?ie=UTF8&sr=8-2&keywords=Making+Things+Talk](http://www.amazon.com/Making-Things-Talk-Practical-Connecting/dp/0596510519/ref=sr_1_2?ie=UTF8&sr=8-2&keywords=Making+Things+Talk){: target="_blank"}

[^4]: [https://groups.google.com/a/arduino.cc/d/msg/developers/HEKecd0qhS4/nADS2jW6DgAJ](https://groups.google.com/a/arduino.cc/d/msg/developers/HEKecd0qhS4/nADS2jW6DgAJ){: target="_blank"}
