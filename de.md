---
layout: default
title: Die wirklich wahre Geschichte von Arduino
sidebar: sidebar-de.html
---
[English](/) &middot; [日本語](ja) &middot; [italiano](it)

[Index](#index)

# Warum schreiben Sie das?

Hallo. Mein Name ist Hernando Barragán.

Während der letzten Jahre und in letzter Zeit besonders durch die Ereignisse, die sich zwischen [Arduino LLC und Arduino S.R.L.](http://hackaday.com/2015/03/12/arduino-v-arduino-part-ii/){: target="_blank"}, ereignet haben, erreichten mich viele Fragen zur Geschichte von Wiring und natürlich Arduino.

Ich wurde auch auf [diese Website des US-Bundesgerichts](https://www.unitedstatescourts.org/federal/mad/167131/){: target="_blank"}, hingewiesen, auf der Dokumente gezeigt werden, die meine Arbeiten zitieren, um die Behauptungen des Klägers zu stützen, welche meiner Meinung nach zur Verzerrung von Informationen bezüglich meiner Arbeit beitragen.

Die Geschichte von Arduino wurde von vielen Leuten erzählt, und keine zwei Geschichten stimmen überein. Ich möchte mit ordentlich gestützten Referenzen und Dokumenten einige Tatsachen um die Geschichte von Arduino klarstellen, um mit jenen Menschen besser kommunizieren zu können, die an den Ursprüngen von Arduino interessiert sind.

Darüber hinaus will ich versuchen, durch das Aufzeigen verbreiteter Fehler, irreführender Informationen und nachlässigen Journalismus Dinge klarzustellen, die meine Rolle oder Arbeit verzerrt haben.

Ich werde zunächst die Geschichte kurz zusammenfassen, anschließend beantworte ich eine Reihe von Fragen, die mir über die Jahre gestellt wurden.

* * *

# Warum haben Sie Wiring entwickelt?

Ich habe Wiring im Jahr 2003 in meiner Masterarbeit am [Interaction Design Institute Ivrea (IDII)](https://en.wikipedia.org/wiki/Interaction_Design_Institute_Ivrea){: target="_blank"} in Italien begonnen.

Ziel der Masterarbeit war es, Künstlern und Designern die Arbeit mit Elektronik zu erleichtern, indem häufig komplizierten Details der Elektronik ausgeblendet werden, sodass sie sich auf ihre eigenen Zielvorstellungen konzentrieren können.

Die vollständige Masterarbeit kann hier heruntergeladen werden: [http://people.interactionivrea.org/h.barragan/thesis/thesis_low_res.pdf](http://people.interactionivrea.org/h.barragan/thesis/thesis_low_res.pdf){: target="_blank"}

Massimo Banzi und [Casey Reas](https://en.wikipedia.org/wiki/C.E.B._Reas){: target="_blank"} (bekannt für seine Arbeit zu [Processing](https://en.wikipedia.org/wiki/Processing_(programming_language)){: target="_blank"}) waren die Betreuer meiner Masterarbeit.

Das Projekt fand am IDII viel Beachtung und wurde ab 2004 bis zur Schließung der Fakultät im Jahr 2005 für [mehrere](http://www.nastypixel.com/instantsoup){: target="_blank"} andere Projekte genutzt.

Ich war stolz darauf, aufgrund meiner Masterarbeit mit Auszeichnung zu graduieren; die einzige Person am IDII im Jahr 2004, die diese Auszeichnung erhielt. Ich habe die Entwicklung von Wiring während meiner Arbeit an der  [Universidad de Los Andes](http://www.uniandes.edu.co/){: target="_blank"} in Kolumbien fortgesetzt, wo ich begann, als Dozent für Interaction Design zu lehren.

Was Wiring ist und warum es entwickelt wurde, kann aus der Kurzzusammenfassung meiner Masterarbeit entnommen werden. Beachten Sie, dass dies im Jahr 2003 war und die folgenden Voraussetzungen nicht unterschätzt werden dürfen. Möglicherweise haben Sie sie schon einmal folgende Aussagen in anderem Zusammenhang gehört:

> "... Aktuelle Prototyping-Tools für Elektronik und Programmierung zielen meist auf ingenieurwissenschaftliche, robotertechnische und technisches Anwender ab. Sie sind schwer zu erlernen und die Programmiersprachen sind in Kontexten außerhalb einer spezifischen Technologie alles andere als nützlich ..."

> "... Kann auch zum Lehren und Lernen von Computerprogrammierung und Prototyping mit Elektronik verwendet werden..."

> "Wiring baut auf Processing auf..."



Dies waren die resultierenden Schlüsselelemente von Wiring:

1.  Eine einfache integrierte Entwicklungsumgebung (IDE), basierend auf der Processing.org IDE für Microsoft Windows, Mac OS X und Linux, um Softwareprogramme oder „Sketche“[^1] mit einem einfachen Editor zu erstellen
2.  Einfache „Sprache“ oder einfaches „Framework“ für Mikrocontroller
3.  Vollständige Toolchain-Integration (transparent für Anwender)
4.  Bootloader für einfaches Hochladen von Programmen
5.  Serieller Monitor zur Überprüfung und zum Senden von Daten vom/zum Mikrocontroller
6.  Open-Source-Software
7.  Open-Source-Hardwaredesigns basierend auf einem Atmel Mikrocontroller
8.  Umfassende Online-Referenz für Befehle und Bibliotheken, Beispiele, Tutorials, Forum und eine Galerie mit Projekten, die mit Wiring entwickelt wurden

* * *

# Wie wurde Wiring entwickelt?

Mit Hilfe der Masterarbeit ist es möglich, den von mir verfolgten Designprozess nachzuvollziehen. Umfangreiche Forschung und Verweise auf frühere Arbeiten waren die Grundlage für meine Arbeit. Nachstehend habe ich einige Kernpunkte aufgelistet, die den Prozess kurz illustrieren.

## Die Sprache

Haben Sie sich je gefragt, wo diese Befehle herkommen?

Der Befehlssatz, den ich als Sprachdefinition für Wiring entwickelt habe, ist wahrscheinlich eines der markantesten Details, das heute weithin bekannt ist und von Arduino-Anwendern in deren Sketchen verwendet wird.

*   `pinMode()`
*   `digitalRead()`
*   `digitalWrite()`
*   `analogRead()`
*   `analogWrite()`
*   `delay()`
*   `millis()`
*   usw.

Das Abstrahieren der Mikrocontroller-Pins zu Zahlen war zweifellos eine bedeutende Entscheidung, die ermöglicht wurde, weil die Syntax bereits vor der Umsetzung in eine Hardwareplattform definiert wurde. Alle Sprachbefehlsbenennungen und die Syntax waren das Ergebnis eines von mir gründlich durchgeführten Designprozesses, der Anwendertests mit Studenten, Beobachtung, Analyse, Anpassung und Iteration beinhaltete.

Während ich die Hardware-Prototypen entwickelte, entwickelte sich die Sprache auf natürliche Weise mit. Erst nachdem der letzte Prototyp gefertigt wurde, wurde die Sprache stabil und klar.

Wenn Sie mehr über den Designprozess wissen möchten: er ist in der Masterarbeit detailliert dargestellt, einschließlich früherer Phasen von Befehlsbenennung und Syntax, die später verworfen wurden.

## Die Hardware

Vom Standpunkt eines Designers war dies wahrscheinlich der schwierigste Teil der Arbeit. Ich erfrage mir oder kaufte Entwicklungs-Boards von unterschiedlichen Mikrocontroller-Herstellern.

Hier folgen einige Schlüsselmomente im Hardwaredesign für Wiring.

### Prototyp 1

Der erste Prototyp für Wiring verwendete den [Parallax](https://www.parallax.com/){: target="_blank"} Javelin Stamp Mikrocontroller. Dies war eine naheliegende Option, da er mit in einer Teilmenge der Sprache Java programmiert wurde, welche bereits von Processing verwendet wurde.

Problem: Wie in der Masterarbeit auf Seite 40 beschrieben, beruhten Kompilierung, Linken und Upload von Anwenderprogrammen auf geschützten Tools von Parallax. Da Wiring als Open-Source-Software geplant war, war Javelin Stamp einfach keine gangbare Option.

<a href="/images/full/WiringPrototype1-JavelinStamp.jpg" data-lity><img alt="Wiring Prototype 1 - Javelin Stamp" src="/images/WiringPrototype1-JavelinStamp.jpg" width="600px" height="" /></a>
***Foto des Javelin Stamp, der für für den ersten Prototyp der Wiring-Hardware genutzt wurde.***

Für die nächsten Prototypen wurden Mikrocontroller auf der Grundlage der Verfügbarkeit von Open-Source-Tools für Kompilation, Linken und Upload des Anwender-Codes gewählt. Dies führte sehr früh zum Verwerfen der sehr beliebten Microchip PIC-Familie von Mikrocontrollern, weil Microchip zu dieser Zeit (ca. 2003) keine Open-Source-Toolchain hatte.

### Prototyp 2

Für den zweiten Wiring-Hardwareprototyp wurde der [Atmel](http://www.atmel.com/){: target="_blank"} ARM-basierte [AT91R40008](http://www.atmel.com/devices/R40008.aspx){: target="_blank"} Mikrocontroller gewählt, der hervorragende Ergebnisse lieferte. Die ersten Sketchbeispiele wurden entwickelt und Versuche zur Befehlsbenennung begannen. Beispielsweise war `pinWrite()` der Name des jetzt universellen `digitalWrite()`.

Der Atmel R40008 diente während meiner Auswertung seiner Fähigkeiten als Testumgebung für die digitale Eingangs-/ und Ausgangsschnittstelle und die Schnittstelle zur seriellen Kommunikation. Der Atmel R40008 war ein sehr leistungsstarker Mikrocontroller, aber viel zu komplex für ein praxisorientiertes Herangehen, weil es fast unmöglich war, auf einer gedruckten Schaltung mit der Hand zu löten.

Für weitere Informationen zu diesem Prototyp siehe Seite 42 in der Masterarbeit.

<a href="/images/full/WiringPrototype2-AtmelAT91R40008.jpg" data-lity><img alt="Wiring Prototype 2 - Atmel AT91R40008" src="/images/WiringPrototype2-AtmelAT91R40008.jpg" width="600px" height="" /></a>
***Foto des Atmel AT91R40008 für den zweiten Wiring-Hardwareprototypen.***

### Prototyp 3

Die vorherigen Prototypexperimente führten zum dritten Prototyp, bei dem der Mikrocontroller durch einen immer noch leistungsstarken ersetzt wurde, der aber ermöglichte, ohne spezielle Ausrüstung oder zusätzliche On-Board-Peripheriegeräte daran herumzubasteln.

Ich wählte den Atmel [ATmega128](http://www.atmel.com/devices/ATMEGA128.aspx){: target="_blank"} Mikrocontroller und kaufte ein Atmel [STK500](http://www.atmel.com/tools/STK500.aspx){: target="_blank"} Entwicklungsboard mit einer speziellen Buchse für den ATmega128.

<a href="/images/full/WiringPrototype3-AtmelATmega128.jpg" data-lity><img alt="Wiring Prototype 3 - Atmel STK500 with ATmega128" src="/images/WiringPrototype3-AtmelATmega128.jpg" width="600px" height="" /></a>
***Foto des Atmel STK500 mit ATmega128-Erweiterung.***

Tests mit dem STK500 waren sofort erfolgreich, daher kaufte ich eine [MAVRIC](http://www.bdmicro.com/mavric-ib/){: target="_blank"}-Platine von [BDMICRO](http://www.bdmicro.com/){: target="_blank"} auf der der ATmega128 verlötet war. Brian Deans Arbeit an seinen MAVRIC-Platinen war zu jener Zeit beispiellos und seine Arbeit führte ihn zum Bau eines Software-Tools, mit dem er neue Programme einfach auf seine Platine hochladen konnte. Es wird heute immer noch in der Arduino-Software verwendet und heißt „avrdude“.

Da herkömmliche COM-Ports an Computern verschwanden, wählte ich [FTDI](http://www.ftdichip.com/){: target="_blank"} Hardware zur Kommunikation über einen USB-Port auf dem Host-Computer. FTDI bietet Treiber für Windows, Mac OS X und Linux, was für die Wiring-Umgebung erforderlich war, um auf allen Plattformen zu funktionieren.

<a href="/images/full/BDMICRO-MAVRIC-II.jpg" data-lity><img alt="BDMICRO MAVRIC-II" src="/images/BDMICRO-MAVRIC-II.jpg" width="600px" height="" /></a>
***Foto des BDMICRO MAVRIC-II für den dritten Wiring-Hardwareprototypen.***

<a href="/images/full/FTDI-FT232BM.jpg" data-lity><img alt="FTDI FT232BM Evaluation Board" src="/images/FTDI-FT232BM.jpg" width="600px" height="" /></a>
***Foto eines FTDI FT232BM Entwicklungsboards, das im dritten Wiring-Hardwareprototypen verwendet wurde.***

Das FTDI-Entwicklerboard war über eine Schnittstelle mit der MAVRIC-Platine verbunden und wurde mit dem dritten Wiring-Prototyp getestet.

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringPrototype3-BDMICROandFTDI1.jpg" data-lity><img alt="Wiring Prototype 3 - BDMICRO and FTDI - 1" src="/images/WiringPrototype3-BDMICROandFTDI1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringPrototype3-BDMICROandFTDI2.jpg" data-lity><img alt="Wiring Prototype 3 - BDMICRO and FTDI - 2" src="/images/WiringPrototype3-BDMICROandFTDI2.jpg" width="300px" height="" /></a>
</span>
</div>
***Tests mit der BDMICRO MAVRIC-II-Platine und FTDI-FT232BM.***

Anfang 2004 verwendete ich, basierend auf dem Prototyp mit der MAVRIC-Platine (Prototyp 3), Brian Deans und Pascal Stangs Schaltungsentwürfe als Referenz zum Bau der ersten Wiring-Leiterplattenentwicklung. Sie hatte folgende Merkmale:

*   ATmega128
*   FTDI232BM für Seriell-zu-USB-Umwandlung
*   Eine an einen Pin angeschlossene LED auf der Platine
*   o	Eine Power-LED und serielle RX-/TX-LEDs

Ich benutzte [Eagle PCB von Cadsoft](http://www.cadsoftusa.com/){: target="_blank"} um das Schaltbild und die Leiterplatte zu konzipieren.

<a href="/images/full/Wiring-schematic.png" data-lity><img alt="Wiring board schematic" src="/images/Wiring-schematic.png" width="600px" height="" /></a>
***Schaltbild der Wiring-Platine.***

<a href="/images/full/Wiring-pcb.png" data-lity><img alt="Wiring board PCB" src="/images/Wiring-pcb.png" width="600px" height="" /></a>
***Layout der Wiring-Leiterplatte.***

Zusammen mit dem dritten Prototyp wurde die endgültige Version der API getestet und verbessert. Weitere Beispiele wurden hinzugefügt und ich schrieb das erst LED-Blinkbeispiel, das auch heute noch als erster Sketch verwendet wird, den ein Anwender auf einer Arduino-Platine ablaufen lässt, um die Umgebung kennenzulernen. Es wurden sogar weitere Beispiele entwickelt, um Flüssigkristallanzeigen (LCDs), Kommunikation über serielle Schnittstelle, Servomotoren usw. zu unterstützen und sogar um Wiring über die serielle Schnittstelle mit Processing zu verbinden. Details finden Sie auf Seite 50 in der Masterarbeit.

Im März 2004 wurden 25 Wiring-Leiterplatten bei [SERP](http://www.serp.it/){: target="_blank"} bestellt und gefertigt und vom IDII bezahlt.

Ich habe diese 25 Platinen von Hand verlötet und begann Usability-Tests mit einigen meiner Klassenkameraden beim IDII durchzuführen. Das war eine aufregende Zeit!

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBoard-Assembled.jpg" data-lity><img alt="Wiring PCB first article" src="/images/WiringBoard-Assembled.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBoard-ShowingOff.jpg" data-lity><img alt="Showing Off Wiring Board" src="/images/WiringBoard-ShowingOff.jpg" width="300px" height="" /></a></span>
</div>
<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WorkingWithFirstWiring-1.jpg" data-lity><img alt="Working with the first Wiring Boards" src="/images/WorkingWithFirstWiring-1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WorkingWithFirstWiring-2.jpg" data-lity><img alt="Working with the first Wiring Boards" src="/images/WorkingWithFirstWiring-2.jpg" width="300px" height="" /></a></span>
</div>
***Fotos der ersten Wiring-Platine***

## Weitere Entwicklung

Nach der Graduierung vom IDII im Jahr 2004 zog ich zurück nach Kolumbien und begann als Dozent für Interaktionsgestaltung bei der Universidad de Los Andes zu lehren. Während ich Wiring weiterentwickelte, entschloss sich das IDII, 100 Wiring-Platinen zu drucken und bestücken, um am IDII Ende 2004 Physical Computing zu lehren. [Bill Verplank](http://www.billverplank.com/){: target="_blank"} (ein früheres Mitglied der IDII-Fakultät) bat Massimo Banzi, 10 der Platinen an mich zur Verwendung in meinen Klassen in Kolumbien zu senden.

2004 starteten das Fakultätsmitglied [Yaniv Steiner](http://www.nastypixel.com/prototype/people/yaniv-steiner-2){: target="_blank"}, der frühere Student Giorgio Olivero und der Information-Design-Berater Paolo Sancis am IDII das [Instant Soup Project](http://www.nastypixel.com/instantsoup/website/cover/){: target="_blank"}, basierend auf Wiring.

## Erster großer Erfolg - Strangely Familiar

Im Herbst 2004 wurde Wiring am IDII zur Lehre von Physical Computing in einem Projekt mit dem Namen Strangely Familiar verwendet, das aus 22 Studenten und 11 erfolgreichen Projekten bestand. Vier Fakultätsmitglieder leiteten das vierwöchige Projekt:

*   Massimo Banzi
*   Heather Martin
*   Yaniv Steiner
*   Reto Wettach

Es stellte sich als durchschlagender Erfolg sowohl für die Studenten als auch die Professoren und Dozenten heraus. Strangely Familiar zeigte das Potenzial von Wiring als eine Innovationsplattform für Interaktionsgestaltung.

Am 16. Dezember 2004 schickte mir Bill Verplank folgende E-Mail:

>[Die Projekte] waren wunderbar. Jeder hat etwas zum Laufen gebracht. Fünf der Projekte hatten Motoren integriert! Fortgeschrittenste (von zwei MIT-Graduierten - Architekt und Mathematiker) ermöglichte das Zeichnen eines Profils in Proce55ing und das Fühlen dessen mit einem Rad/Motor, angetrieben von Wiring...

>Es ist klar, dass eines der Erfolgselemente [die] Verwendung der Wiring-Platine war.

Hier finden Sie die Kurzdarstellung für den Kurs:

* [http://wiring.org.co/exhibition/images/brief.pdf](http://wiring.org.co/exhibition/images/brief.pdf){: target="_blank"}

Hier finden Sie eine Broschüre mit den daraus folgenden Projekten:

* [http://wiring.org.co/exhibition/images/book01.pdf](http://wiring.org.co/exhibition/images/book01.pdf){: target="_blank"}

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TugTug-Testing.jpg" data-lity><img alt="Working on Tug Tug (Haiyan Zhang)" src="/images/TugTug-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TugTug.jpg" data-lity><img alt="Tug Tug" src="/images/TugTug.jpg" width="300px" height="" /></a></span>
</div>
***Tug-Tug-Telefone von Haiyan Zhang (mit Aram Armstrong)***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/CommitmentRadio-Testing.jpg" data-lity><img alt="Working on Commitment Radio" src="/images/CommitmentRadio-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/CommitmentRadio.jpg" data-lity><img alt="Commitment Radio" src="/images/CommitmentRadio.jpg" width="300px" height="" /></a></span>
</div>
***[Commitment Radio](http://www.d4v3.net/resume/radios.php){: target="_blank"} von David Chiu und Alexandra Deschamps-Sonsino***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/SpeakOut-Testing.jpg" data-lity><img alt="Working on Speak Out" src="/images/SpeakOut-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/SpeakOut.jpg" data-lity><img alt="Speak Out" src="/images/SpeakOut.jpg" width="300px" height="" /></a></span>
</div>
***[Speak Out](http://www.andreeachelaru.com/ThesisOther.htm){: target="_blank"} von Tristam Sparks und Andreea Cherlaru (mit Ana Camila Amorim)***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/FeelTheMusicI-Testing.jpg" data-lity><img alt="Working on Feel the Music I" src="/images/FeelTheMusicI-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/FeelTheMusicI.jpg" data-lity><img alt="Feel the Music I" src="/images/FeelTheMusicI.jpg" width="300px" height="" /></a></span>
</div>
***Feel the Music I von James Tichenor und David A. Mellis***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TheAmazingAllBandRadio-Testing.jpg" data-lity><img alt="Working on The Amazing All Band Radio" src="/images/TheAmazingAllBandRadio-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TheAmazingAllBandRadio.jpg" data-lity><img alt="The Amazing All Band Radio" src="/images/TheAmazingAllBandRadio.jpg" width="300px" height="" /></a></span>
</div>
***[The Amazing All Band Radio](http://neighbourhoodsatellites.com/project/the-amazing-all-band-radio/){: target="_blank"} von Oren Horev und Myriel Milicevic (mit Marcos Weskamp)***

## Der Rest der Welt

Im Mai 2005 beauftragte ich [Advanced Circuits](http://www.4pcb.com/){: target="_blank"} in den USA mit dem Druck der ersten 200 Leiterplatten außerhalb des IDII und bestückte sie in Kolumbien. Ich begann mit dem Verkauf und dem Versand von Platinen an verschiedene Schulen und Universitäten und Ende 2005 wurde Wiring weltweit verwendet.

<a href="/images/full/WiringsReachBy2005.png" data-lity><img alt="Wiring's Reach by 2005" src="/images/WiringsReachBy2005.png" width="600px" height="" /></a>
***"„Wiring’s Reach by 2005“-Grafik, zur Verfügung gestellt von [Collin Reisdorf](https://twitter.com/nillocr){: target="_blank"}***

* * *

# Wann wurde Arduino gestartet und warum waren Sie kein Mitglied des Arduino-Teams?

## Die Gründung von Arduino

Als das IDII den ersten Satz Wiring-Platinen fertigte, betrugen die Kosten wahrscheinlich um 50 US-Dollar pro Stück. (Ich habe keine Ahnung, wie hoch die tatsächlichen Kosten waren, da ich an dem Vorgang nicht beteiligt war. Ich verkaufte die Platinen jedoch von Kolumbien aus für ca. 60 US-Dollar.) Das war ein erheblicher Preisrückgang der Platinen gegenüber den seinerzeit verfügbaren, aber es war immer noch ein erheblicher Kostenfaktor für die meisten Leute.

Im Jahr 2005 hat Massimo Banzi zusammen mit David Mellis (damaliger Student am IDII) und David Cuartielles die Unterstützung des günstigeren ATmega8 Mikrocontroller für Wiring hinzugefügt. Dann forkten (kopierten) sie den Wiring-Quellcode und starteten das Ganze als ein separates Projekt mit dem Namen Arduino.

Es war nicht nötig, ein separates Projekt aus der Taufe zu heben, da ich ihnen gern geholfen und Support für den ATmega8 und andere Mikrocontroller entwickelt hätte. Das hatte ich die ganze Zeit über bereits geplant.

<a href="/images/full/FuturePlansForWiring.png" data-lity><img alt="Future Plans for Wiring" src="/images/FuturePlansForWiring.png" width="600px" height="" /></a>
***Ich hatte in dem Foto von Karmen Franinovic (ehemalige IDII-Studentin von 2002 bis 2004), die im März 2004 einen Dehnsensor für eine Lampe testet, unbeabsichtigt ein Foto einiger Notizen zu meinen Plänen für Wiring aufgenommen.***

Wiring und Arduino hatten viele der frühen Entwicklungen von [Nicholas Zambetti](http://www.zambetti.com/projects/arduino/){: target="_blank"} gemeinsam, einem ehemaligen IDII-Studenten aus der gleichen Klasse wie David Mellis. Für eine kurze Zeit wurde Nicholas als Mitglied des Arduino-Teams erwogen.

Etwa zur gleichen Zeit stieß Gianluca Martino (er war Berater bei SERP, der Leiterplattenfabrik in Ivrea, wo die ersten Wiring-Platinen gefertigt wurden) zum Arduino-Team, um bei der Fertigung und Hardwareentwicklung zu helfen. Um die Kosten der Boards zu reduzieren, entwickelte Gianluca mit Hilfe von David Cuartielles preiswertere Hardware unter Verwendung des ATmega8.

<a href="/images/full/ArduinoPrototype1.jpg" data-lity><img alt="Arduino's First Prototype: Wiring Lite" src="/images/ArduinoPrototype1.jpg" width="600px" height="" /></a>
***Dies ist scheinbar [der erste „Arduino“-Prototyp](https://www.flickr.com/photos/mbanzi/172472136/in/album-72157594173657338/){: target="_blank"} - genannt Wiring Lite. Ich vermute, Massimo Banzi hat ihn entworfen, aber ich bin mir nicht sicher.***

<a href="/images/full/ArduinoExtremeV2.jpg" data-lity><img alt="Arduino Extreme v2" src="/images/ArduinoExtremeV2.jpg" width="600px" height="" /></a>
***[Arduino Extreme v2](https://www.flickr.com/photos/mbanzi/172471940/in/album-72157594173657338/){: target="_blank"} - „Zweite Produktionsversion der Arduino USB-Platinen; diese wurde von Gianluca Martino ordnugnsgemäß konstruiert“***

Tom Igoe (Fakultätsmitglied am ITP an der NYU[^2]) wurde von Massimo Banzi an das IDII für einen Workshop eingeladen und wurde Teil des Arduino-Teams.

Bis heute weiß ich nicht genau, warum das Arduino-Team den Wiring-Code geforkt hat. Es war mir auch rätselhaft, warum wir nicht zusammengearbeitet haben. Um also die Frage zu beantworten: ich wurde nie gebeten, Mitglied des Arduino-Teams zu werden.

Obwohl ich perplex war, dass das Arduino-Team den Code geforkt hatte, setzte ich die Entwicklung von Wiring fort, und nahezu alle Verbesserungen an Wiring, durch mich und viele Mitwirkende, flossen in den Arduino-Quellcode mit ein. Ich habe versucht, die Tatsache zu ignorieren, dass sie weiterhin meine Arbeit verwendeten und wunderte mich auch über die Redundanz und Verschwendung von Ressourcen durch den doppelten Arbeitsaufwand.

Gegen Ende 2005 begann ich zusammen mit Casey Reas an einem Kapitel für das Buch „[Processing: A Programming Handbook for Visual Artists and Designers](http://www.amazon.com/Processing-Programming-Handbook-Designers-Artists/dp/0262182629){: target="_blank"}“ zu arbeiten  [Das Kapitel](https://processing.org/tutorials/electronics/){: target="_blank"} stellt einen kurzen Einblick in die Geschichte der Elektronik in der Kunst vor. Es beinhaltet Beispiele zur Verbindung von Processing mit Wiring und Arduino über eine Schnittstelle. Ich stellte diese Beispiele in beiden Plattformen vor und achtete darauf, dass die einbezogenen Beispiele sowohl für Wiring, als auch Arduino funktionierten.

Das Buch ist 2013 in zweiter Auflage erschienen und das Kapitel wurde von Casey und mir erneut überarbeitet, und [die Ergänzung](https://processing.org/tutorials/electronics/){: target="_blank"} ist seit 2014 online verfügbar.

* * *

# Hat das Arduino-Team vor Arduino mit Wiring gearbeitet?

Ja, jeder von ihnen hatte Erfahrung mit Wiring, bevor Arduino entwickelt wurde.

Massimo Banzi lehrte ab 2004 am IDII mit Wiring.

<a href="/images/full/WiringBoardsWithMassimo.jpg" data-lity><img alt="Massimo Banzi Teaching with Wiring" src="/images/WiringBoardsWithMassimo.jpg" width="600px" height="" /></a>
***Massimo Banzi lehrt im Jahr 2004 Interaktionsgestaltung am IDII mit Wiring-Platinen***

David Mellis war von 2004 bis 2005 Student am IDII.

<a href="/images/full/DavidMellisAtIDII.jpg" data-lity><img alt="David Mellis at IDII" src="/images/DavidMellisAtIDII.jpg" width="600px" height="" /></a>
***Eine verschwommene Aufnahme von David Mellis beim Studium von Physical Computing mit Wiring aus dem Jahr 2004.***

Im Januar 2005 stellte das IDII David Cuartielles ein, um einige Plug-In-Platinen für die Wiring-Platinen zur Motorsteuerung und Bluetooth-Konnektivität zu entwickeln.

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBluetoothPlugin.jpg" data-lity><img alt="Wiring Bluetooth Plugin" src="/images/WiringBluetoothPlugin.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringMotorControllerPlugin.jpg" data-lity><img alt="Wiring Motor Controller Plugin" src="/images/WiringMotorControllerPlugin.jpg" width="300px" height="" /></a></span>
</div>
***Zwei Plug-In-Platinen, die von David Cuartielles und seinem Bruder am IDII entwickelt wurden; Bluetooth-Shield links und ein Motorensteuerungs-Shield rechts***

Ich habe Tom Igoe während eines Besuchs beim ITP in New York im Jahr 2003 frühe Versionen von Wiring gezeigt. Zu jener Zeit hatte er keine Erfahrung mit Atmel-Hardware, daTom am ITP PIC-Mikrocontroller als Alternative zu den kostspieligen Plattformen wie Parallax Basic Stamp oder Basic X verwendete. Eine von Toms Empfehlungen während dieses Besuchs war: „Nun, mach das für PIC, denn das ist es, was wir verwenden.“

Jahre später, 2007, gab Tom Igoe die erste Ausgabe des Buchs „Making Things Talk“ heraus, das bei O’Reilly[^3], veröffentlicht wurde und die Nutzung von sowohl Wiring, als auch Arduino vorstellt.

Gianluca Martino arbeitete ursprünglich für SERP (die Fabrik, die die ersten 25 Wiring-Leiterplatten fertigte) und gründete später die Smart Projects SRL (1. April 2004). Smart Projects fertigte die erste Charge von 100 Wiring-Platinen für das IDII, um im Jahr 2004 Physical Computing zu lehren.

* * *

# Was ist Programma2003 und was ist die Beziehung zu Ihnen oder zu Wiring?

Programma2003 war eine [Microchip](http://www.microchip.com/){: target="_blank"} PIC-Mikrocontroller-Platine, die von Massimo Banzi im Jahr 2003 entwickelt wurde. Nach der Verwendung von BasicX zum Lehren von Physical Computing im Winter 2002 entschied sich Massimo 2003, eine Platine mit dem PIC-Chip zu bauen. Das Problem mit den PIC-Mikrocontrollern war, dass es zu dem Zeitpunkt keine Open-Source-Toolchain gab, um eine Sprache wie C zur Programmierung zu verwenden.

<a href="/images/full/Programma2003.jpg" data-lity><img alt="Programma2003" src="/images/Programma2003.jpg" width="600px" height="" /></a>
***[Programma2003](https://www.flickr.com/photos/mbanzi/8610131426/in/album-72157633136997919/){: target="_blank"}-Platine, entworfen von Massimo Banzi im Jahr 2003***

Aufgrund des Fehlens einer Open-Source-Toolchain entschied sich Massimo zur Verwendung einer Umgebung mit der Bezeichnung [JAL](http://justanotherlanguage.org/){: target="_blank"} (Just Another Language), um den PIC-Mikrocontroller zu programmieren. JAL wurde von Wouter van Ooijen entwickelt.

Das Programm besteht aus dem JAL-Compiler, -Linker, -Uploader, -Bootloader und Beispielen für den PIC. Die Software lief jedoch nur auf Windows.

Um die Verwendung von JAL zu vereinfachen, nutzte Massimo die grundlegenden Beispiele von JAL und vereinfachte einige davon für das Verteilungspaket für IDII.

Allerdings benutzten im Jahr 2003 die meisten Studenten am IDII Mac-Computer. Daher erklärte ich mich bereit, Massimo mit der Entwicklung einer kleinen und einfachen Umgebung für Mac OS X zu helfen, sodass die Studenten mit einem Mac es ebenfalls benutzen konnten.

In meiner Masterarbeit beschrieb ich Programma2003 als ein nicht zukunftsfähiges Modell, da andere, verständlichere Werkzeuge bereits auf dem Markt verfügbar waren. Die hauptsächlichen Probleme waren:

*   die Sprache ist in jedem anderen Kontext alles andere als nützlich (z.B. kann man einen Computer nicht mit JAL programmieren)
*   seine obskure Syntax und das Hardwaredesign ließen es sehr unwahrscheinlich erscheinen, dass es künftig zum Lehren und Lernen verwendet werden würde
*   die Platine hatte keine Power-LED (eine Designschwäche)

Man konnte unmöglich wissen, ob die Platine spannungsversorgt war oder nicht (frustrierend/gefährlich in einer Lernumgebung) und ein zusätzlicher, teurer RS232-zu-USB-Konverter war zum Anschluss an einem Computer erforderlich.

Als Geste, um Massimos Programma2003-Projekt zu helfen, schrieb ich ebenfalls etwas, das ich Programma2003 Interface nannte, was im Grunde jegliche serielle Kommunikation zwischen einem Mikrocontroller und einem Computer mit dem Netzwerk über eine Schnittstelle ermöglichte. Dies erweiterte die Prototyping-Werzeugkiste am IDII. Es ermöglichte Studenten die Nutzung von Software wie Adobe Flash (vormals Macromedia), um mit einem Mikrocontroller zu kommunizieren.

<a href="/images/full/Programma2003InterfaceCode.jpg" data-lity><img alt="Programma2003 Interface Code" src="/images/Programma2003InterfaceCode.jpg" width="" height="400px" /></a>
***Programma2003 Interface Code***

* * *

# Warum hat Arduino Wiring nicht besser gewürdigt?

Das weiß ich nicht.

Der Verweis zu Wiring auf der Website Arduino.cc, ist irreführend obwohl er sich mit der Zeit etwas verbessert hat, da er versucht, Wiring auf Programma2003 zurückzuführen.

<a href="/images/full/ArduinoCCCredits-2016-02-23.jpg" data-lity><img alt="Arduino.cc Credits Page Excerpt - 2016-02-23" src="/images/ArduinoCCCredits-2016-02-23.jpg" width="600px" height="" /></a>
***Arduino.cc Website-Version von Arduinos Geschichte von [https://www.arduino.cc/en/Main/Credits](https://www.arduino.cc/en/Main/Credits){: target="_blank"}***

Zur Verwirrung trägt dieses Flickr-Fotoalbum von Massimo Banzi bei:

[https://www.flickr.com/photos/mbanzi/albums/72157633136997919/with/8610131426/](https://www.flickr.com/photos/mbanzi/albums/72157633136997919/with/8610131426/){: target="_blank"}

Es heißt „Teaching: IDII 2004 Strangely Familiar“. Strangely Familiar wurde mit Wiring gelehrt (siehe oben). Dieses Fotoalbum scheint Programma2003 mit der Klasse in Verbindung zu bringen, wurde jedoch nie verwendet. Es ist eigenartig, dass die Wiring-Platinen im Album fehlen, jedoch ist [ein Bild einer Wiring-Platine](https://www.flickr.com/photos/mbanzi/8609019055){: target="_blank"} zu sehen.

Es ist kein Geheimnis, dass die Anerkennung von Wiring in der Vergangenheit sehr begrenzt war. Damals, im Jahr 2013, beim [Open Hardware Summit](http://2013.oshwa.org/schedule/){: target="_blank"} am MIT, während des Forums „Implications of Open Source Business: Forking and Attribution“, erkannte David Mellis erstmals an, dass sich das Arduino-Team bei der Anerkennung von Wiring nicht mit Ruhm bekleckert hatte. Leider ging er nicht ins Detail, warum das so war.

* * *

# Kläger vs. Beklagter

Ich habe lange Zeit zu allem geschwiegen, was mit Arduino passiert ist. Aber jetzt, da Leute in betrügerischer Weise behaupten, dass meine Arbeit ihnen gehöre, habe ich das Bedürfnis mich zur Vergangenheit zu äußern.

Beispielsweise steht im laufenden Prozess zwischen Arduino LLC und Arduino S.R.L. folgende, [Behauptung](https://www.unitedstatescourts.org/federal/mad/167131/1-0.html){: target="_blank"} des Klägers im Raum:

>34\. Banzi ist der Urheber der Programma2003 Entwicklungsplattform, ein Vorläufer der vielen mit der ARDUINO-Marke versehenen Produkte. Siehe: [http://sourceforge.net/projects/programma2003/](http://sourceforge.net/projects/programma2003/){: target="_blank"}.  Banzi war ebenfalls der Betreuer der Masterarbeit von Hernando Barragan, dessen Arbeit zur Wiring-Entwicklungsplattform führte, die Arduino inspirierte.

Hier folgt, was meiner Meinung nach falsch an dieser Behauptung ist:

1.  Programma2003 war keine Entwicklungsplattform, es war nur einfach eine Platine. Es gab keine vom Kläger entwickelte Software, die mit der Platine einherging.
2.  Der Link ist leer, es gibt keine Dateien im Sourceforge-Speicher, warum also einen leeren Speicher als Beweis anbieten?
3.  Die Idee, dass die bloße Tatsache, dass Banzi der Betreuer meiner Masterarbeit war ihm eine Art höheren Anspruch auf die an Wiring geleistete Arbeit gibt, ist, gelinde gesagt, frustrierend zu lesen.

Später:

>39\. Die Gründer, mit der Unterstützung von Nicholas Zambetti, einem weiteren Studenten am IDII, entwickelten und führten ein Projekt durch, in dem sie eine Plattform und Umgebung für Mikrocontroller-Platinen („Platinen“) entwickelten, um das Wiring-Entwicklungsprojekt zu ersetzen. Banzi gab dem Projekt seinen Namen, das ARDUINO-Projekt.

Hier sind die Fragen, die ich „den Gründern“ stellen würde:"

*   Warum musste das „Wiring-Entwicklungsprojekt“ ersetzt werden?
*   Haben Sie den Entwickler gefragt, ob er mit Ihnen zusammenarbeiten würde?
*   Gefiel Ihnen der ursprüngliche Name nicht (Banzi gab dem Projekt schließlich seinen Namen)?

Ich weiß, dass es hin und wieder passiert, aber meiner Meinung nach ist es unethisch und ein schlechtes Beispiel für Akademiker, so etwas mit der Arbeit eines Studenten zu tun. Pädagogen sollten es, mehr als alle anderen, vermeiden, Nutzen aus den Arbeiten ihrer Studenten zu ziehen. In gewisser Hinsicht fühle ich mich von „den Gründern“ noch immer verletzt, meine Arbeit ihre zu nennen.

Es mag zwar legal sein, das Modell, die Philosophie, den Diskurs und die tausenden Arbeitsstunden des Autors eines Open-Source-Software- und Hardware-Projekts zu nehmen, damit einen Markenwechsel durchzuführen und es der Welt als etwas „Neues“ oder „Inspiriertes“ vorzustellen, aber… ist das auch gerecht?

* * *

# Kontinuierlich irreführende Informationen

Jemand hat einmal gesagt:

>„Wenn wir Dinge nicht absolut klarstellen, dann ziehen die Menschen ihre eigenen Schlüsse und die werden zu Tatsachen, selbst, wenn wir nie so etwas gesagt haben.“[^4]

Mir scheint dies allgemein wahr zu sein, und insbesondere, wenn man Menschen mit nur leichten Abänderungen der Wahrheit in die Irre führt, kann man Kontrolle über ihre Schlussfolgerungen erlangen.

Hier sind einige Beispiele irreführender Informationen.

## Das berühmt-berüchtigte Diagramm

<a href="/images/full/InteractionIvreaDiagram.jpg" data-lity><img alt="Interaction Ivrea (Weird) Diagram" src="/images/InteractionIvreaDiagram.jpg" width="600px" height="" /></a>
***[http://blog.experientia.com/uploads/2013/10/Interaction_Ivrea_arduino.pdf](http://blog.experientia.com/uploads/2013/10/Interaction_Ivrea_arduino.pdf){: target="_blank"}***

Dieser Beitrag ist sehr interessant, besonders, wenn man ihn heute, im Jahr 2016 sieht. Ich glaube die Idee, einenDokumentarfilm zu machen ist sehr gut, besonders für ein Projekt mit solch reicher Vergangenheit.

Die in den roten Klecksen vorgestellten Projekte scheinen, obwohl sie mit Wiring durchgeführt wurden, mit Arduino assoziiert zu sein, und das zu einer Zeit als Arduino noch nicht einmal existierte, ja noch nicht einmal annähernd einsatzbereit war, diese durchzuführen.

Einige der Autoren der Projekte erkundigten sich nach dem Fehler und warum ihre Projekte zu Arduino verschoben waren, sie erhielten jedoch keine Antwort.

Trotz der Tatsache, dass in diesem sehr öffentlcihkeitswirksamen Dokument nichts geändert wurde, muss ich mich bei den Studenten, die dies aufzeigten und sich danach erkundigten, für ihre Unterstützung bedanken.

## Der Arduino-Dokumentarfilm

Ein weiterer sehr öffentlichkeitswirksamer Medienbeitrag war 2010 die Arduino-Dokumentation [The Arduino Documentary](https://vimeo.com/18539129){: target="_blank"} (geschrieben und unter der Regie von Raúl Alaejos und Rodrigo Calvo).

Dieser Beitrag ist sehr interessant, besonders, wenn man ihn heute, im Jahr 2016 sieht. Ich glaube die Idee, einenDokumentarfilm zu machen ist sehr gut, besonders für ein Projekt mit solch reicher Vergangenheit.

Hier sind einzelne Ausschnitte, die für einige interessante Widersprüche stehen:

<a href="http://vimeo.com/18539129?#t=1m45s" data-lity>1:45</a> - „Wir wollten, dass es Open-Source ist, sodass jeder kommen, helfen und dazu beitragen kann.“ Hier wird suggeriert, dass Wiring Closed-Source war. Da Teile von Wiring auf Processing basierten und Processing unter GPL-Lizenz quelloffen war, wie auch alle Bibliotheken, mussten Wiring und somit auch Arduino quelloffen sein. Closed-Source war keine Option. Auch die Andeutung, dass sie die Software vereinfacht hätten, ist irreführend, da nichts an der Sprache geändert wurde, welche die Essenz der Einfachheit des Projekts ist.

<a href="http://vimeo.com/18539129?#t=3m20s" data-lity>3:20</a> - David Cuartielles kannte Wiring bereits, da er im Jahr 2005 für die Entwicklung zweier Plug-In-Platinen beim IDII angestellt wurde, wie bereits zuvor in diesem Dokument ausgeführt. David Mellis lernte Physical Computing durch die Benutzung von Wiring als Student am IDII 2004. Interessanterweise kam Gianluca als die Person hinzu, die die Platine selbst entwefen konnte (er war nicht nur ein Auftragnehmer zur Fertigung); er war Teil des „Arduino-Teams“.

<a href="http://vimeo.com/18539129?#t=8m53s" data-lity>8:53</a> - David Cuartielles hält im Juli 2005 einen Vortrag im Media Lab in Madrid: „Arduino ist das jüngste Projekt, ich habe es letzte Woche beendet. Ich habe mit Ivreas technischem Direktor gesprochen und sagte ihm: Wäre es nicht großartig, wenn wir etwas tun könnten, das wir kostenlos anbieten? und er sagt - Kostenlos? – Na klar!“ David wirkt hier wie der Autor eines Projekts, das er „letzte Woche“ beendet hat, und der den „technischen Direktor“ am IDII überzeugt, es kostenlos anzubieten.

<a href="http://vimeo.com/18539129?#t=18m56s" data-lity>18:56</a> - Massimo Banzi:

>Für uns war es zu Anfang eine spezielle Herausforderung: wir wussten, dass das Institut geschlossen werden würde und wir hatten Angst, dass eines Tages Rechtsanwälte auftauchen und sagen würden – Alles hier wird eingepackt und dann vergessen. – Daher dachten wir uns - okay, wenn wir alles hierüber offenlegen, dann können wir die Schließung des Instituts überleben – das war also der erste Schritt.

Dieser Abschnitt ist besonders eigen. Es stellt irreführenderweise die Tatsache, dass Arduino quelloffen ist, als Konsequenz der Schließung des Instituts dar. Das wirft eine Frage auf: Warum sollte ein Trupp Anwälte ein Projekt, das auf anderen Open-Source-Projekten basiert, „einpacken“? Das ist schon fast kindisch. Das Problem ist, dass die Allgemeinheit denken könnte, dass es wahr ist, dass altruistische Gründe das Team dazu veranlasst haben, Arduino Open-Source zu machen.

* * *

# Das Fehlen von Anerkennung außerhalb von Wiring

Es scheint einen Trend zu geben, wie das Arduino-Team über wichtige Parteien hinwegsieht, die zu ihrem Erfolg beigetragen haben.

Im Oktober 2013 schrieb Jan-Christoph Zoels (ein ehemaliges IDII-Fakultätsmitglied) eine Nachricht an die IDII-Community Mailing-Liste, in der er den Artikel vorstellte, der bei Core77 zu den [Intel-Arduino-News bei Wired UK](http://www.wired.co.uk/news/archive/2013-10/03/intel-arduino-galileo){: target="_blank"} veröffentlicht wurde:

>Ein stolzer Moment, Intel auf eine Interaction Ivrea Initiative Bezug nehmen zu sehen.

>Und außerdem eine gute Investition:

>Die Arduino-Entwicklung begann am Interaction Design Institute Ivrea mit einer ursprünglichen Finanzierung von ca. 250.000 €. Es war außerdem eine gute Entscheidung, Arduino zum Ende des Interaction Ivrea im Jahr 2005, vor der Fusion mit Domus, quelloffen zu halten.

Hierauf antwortete Massimo Banzi:

>Ich würde gern unterstreichen, dass wir zu keinem Zeitpunkt eine Finanzierung von Ivrea für Arduino erhalten haben (außer dem Kauf von 50 Stück im letzten Jahr des Instituts)

>250.000 EUR ist lächerlich…

>Dieser Artikel muss jetzt widerrufen werden

>Sorry JC, aber Du hattest nichts damit zu tun... Du kannst wohl kaum versuchen, Anerkennung für etwas zu bekommen, in das du nicht involviert warst

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/JCEmailThread1.jpg" data-lity><img alt="Celebration Email Thread Posting" src="/images/JCEmailThread1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/JCEmailThread2.jpg" data-lity><img alt="Celebration Email Thread Response" src="/images/JCEmailThread2.jpg" width="300px" height="" /></a></span>
</div>

Dennoch war es schön, ein paar Tage später im gleichen E-Mail-Thread folgende Nachricht zu erhalten:

<a href="/images/full/JCEmailThread3.jpg" data-lity><img alt="Celebration Email Thread Follow-up" src="/images/JCEmailThread3.jpg" width="600px" height="" /></a>

* * *

# Verzerrte Information der Öffentlichkeit

In diesem Abschnitt wollte ich nur einen kleinen Teil der vielen verschiedenen Artikel (und anderer Pressemitteilungen) aufzeigen, die über Arduino geschrieben wurden und dessen Geschichte beinhalten, die selten zweimal auf die gleiche Weise erzählt wird.

Daher lesen Sie sie bitte bei Gelgenheit, und bilden Sie sich Ihre eigene Meinung und stellen Sie in jedem Fall Fragen!

## Schlechter Journalismus

Gut recherchierter Journalismus wird in diesen Tagen kaum noch gesehen. Die nachstehenden Artikel sind hervorragende Beispiele für dieses Postulat.

### Wired

In einem [Wired-Interview im Jahr 2008](http://www.wired.com/2008/10/ff-openmanufacturing/){: target="_blank"}, erklärt Banzi, wie er Arduino an einem Wochenende entwickelt hat:

>Die beiden hatten sich entschlossen, ihre eigene Platine zu entwickeln und gewannen einen von Banzis Studenten – David Mellis – zur Mitarbeit, um die Programmiersprache dafür zu schreiben. Innerhalb von zwei Tagen hat Mellis den Code heruntergeschrieben; drei Tage später war die Platine komplett. Sie nannten sie Arduino, nach einem nahegelegenen Pub, und es war ein unmittelbarer Erfolg bei den Studenten.

Dieser Artikel wurde ohne jegliche Überprüfung der Fakten geschrieben. Und es hilft ganz sicherlich nicht, dass der Interviewte ihnen nicht die richtigen Informationen gibt.

### IEEE Spectrum

Hier ist ein [IEEE-Spectrum-Artikel des Jahres 2011](http://spectrum.ieee.org/geek-life/hands-on/the-making-of-arduino){: target="_blank"} mit dem Titel „The Making of Arduino“.

Wieder wird die Geschichte wortgetreu vom Interviewten übernommen. Mit mir wurde kein Kontakt aufgenommen, bevor der Artikel veröffentlicht wurde, obwohl mein Name erwähnt wird. Und ich bezweifle, dass irgendjemand vom IDII kontaktiert wurde.

Nur einer der vielen verwirrenden Teile von Arduinos Geschichte befindet sich in diesem Zitat:

>Da der Zweck war, eine schnell und einfach verfügbare Plattform zu entwickeln, hielten sie es für besser, das Projekt für so viele Leute wie möglich zu öffnen, anstatt es geschlossen zu halten.

Es war niemals geschlossen.

### Circuits Today

[Ein Artikel in Circuits Today aus dem Jahr 2014](http://www.circuitstoday.com/story-and-history-of-development-of-arduino){: target="_blank"} hat einen sehr verwirrenden Anfang:

>Es war im Interactive Design Institute [sic], dass ein kolumbianischer Student namens Hernando Barragan eine Hardware-Masterarbeit für einen Verdrahtungsentwurf beisteuerte. Der Titel der Masterarbeit lautete „Arduino–La rivoluzione dell’open hardware“ („Arduino – Die Revolution der offenen Hardware“). Ja, es klang etwas anders als die gewöhnlichen Masterarbeiten, aber niemand konnte sich vorstellen, dass sie eine Nische im Feld der Elektronik auftun würde.

>Ein Team bestehend aus fünf Entwicklern arbeitete an dieser Masterarbeit und als die neue Verdrahtungsplattform [Anm.: im Original „wiring platform“; evtl. war die Wiring-Plattform gemeint] fertig war, arbeiteten sie daran, sie leichter, preiswerter und für die Open-Source-Community verfügbar zu machen.

Der Titel meiner Masterarbeit ist offensichtlich falsch. Es gab keine fünf „Entwickler“, die an dieser Masterarbeit gearbeitet haben. Und der Code war immer Open-Source.

Nochmals, mit mir wurde sich nicht in Verbindung gesetzt.


### Makezine

In [einem Interview von Dale Dougherty mit Massimo Banzi im Jahr 2013](http://makezine.com/2013/01/29/good-design-gets-out-of-the-way/){: target="_blank"} ändert sich die Geschichte erneut:

>Wiring hatte eine teure Platine, etwa 100 Dollar, weil ein teurer Chip verwendet wurde. Ich mochte das nicht und der studentische Entwickler und ich hatten darüber eine Meinungsverschiedenheit.

In dieser Version der Geschichte von Massimo Banzi entsprang Arduino von Wiring, aber es wird angedeutet, dass ich darauf bestand, eine teure Platine zu haben.

Bezüglich der „Meinungsverschiedenheit“: Ich hatte nie eine Diskussion mit Massimo Banzi, dass die Platine zu teuer sei. Ich wünschte, dass er und ich mehr Diskussionen zu solchen Angelegenheiten geführt hätten, so wie ich sie mit anderen Betreuern und Kollegen hatte, da ich das als sehr bereichernd empfinde. Was einer Meinungsverschiedenheit am Nächsten kam, fand nach einer erfolgreichen Präsentation des aktuellen Fortschritts der Masterarbeit statt, während der sich Massimo mir gegenüber merkwürdig benahm. Da er mein Betreuer war, war ich im Nachteil, aber ich fragte Massimo, warum er sich mir gegenüber schlecht benehmen würde, worauf ich keine Antwort bekam. Ich fühlte mich bedroht und es war sehr unangenehm.

Sein merkwürdiges Verhalten übertrug sich auf jene, die später mit mir an Wiring zusammenarbeiteten.

>Ich entschied, dass wir eine Open-Source-Version von Wiring machen könnten, ganz von vorne beginnen. . Ich fragte Gianluca Martino [jetzt einer der fünf Arduino-Partner], mir bei der Fertigung der ersten Prototypen, den ersten Platinen, zu helfen.

Hier impliziert Massimo wieder, dass Wiring nicht Open-Source gewesen wäre, was es jedoch war. Und außerdem, dass sie die Software „von Grund auf“ gebaut hätten, was sie nicht taten.

## Akademische Fehler

Ich verstehe, wie leicht es ist, Leute mit gutem Erzähltalent und fesselnden Geschichten zu beschäftigen, aber von Akademikern wird erwartet, dass sie ihre Hausaufgaben machen und zumindest die Fakten hinter nicht ausreichend begründeten Aussagen überprüfen.

In diesem Buch: Making Futures: Marginal Notes on Innovation, Design, and Democracy, Hardcover – 31. Oktober 2014 von Pelle Ehn (Herausgeber), Elisabet M. Nilsson (Herausgeberin), Richard Topgaard (Herausgeber):

[Kapitel 8: How Deep is Your Love? On Open-Source Hardware](http://dspace.mah.se/bitstream/handle/2043/17985/MAKING-FUTURES-EHN-ET-AL-2014-CHAPTER-08.pdf?sequence=19&isAllowed=y){: target="_blank"} (David Cuartielles)

>Im Jahr 2005 hatten wir am Interaction Design Institute Ivrea die Vision, dass wir mit einer kleinen Prototyping-Plattform, die sich an Designer richtet, ihnen helfen würden, ein besseres Verständnis für die Technologie zu bekommen.

kommt Wiring in David Cuartielles Version der Geschichte von Arduino nicht einmal vor.

Dieses Buch wurde Kapitel für Kapitel unter Creative Commons veröffentlicht: [http://dspace.mah.se/handle/2043/17985](http://dspace.mah.se/handle/2043/17985){: target="_blank"}


# Mehr Links für Ihre eingehende Prüfung

Wiring als Vorgänger von Arduino:

* [http://ptgmedia.pearsoncmg.com/images/9780321906045/samplepages/9780321906045.pdf](http://ptgmedia.pearsoncmg.com/images/9780321906045/samplepages/9780321906045.pdf){: target="_blank"}

Interview mit Ben Fry und Casey Reas:

* [http://rhizome.org/editorial/2009/sep/23/interview-with-casey-reas-and-ben-fry/](http://rhizome.org/editorial/2009/sep/23/interview-with-casey-reas-and-ben-fry/){: target="_blank"}

Safari Books Online, Casey Reas, Getting Started with Processing, Erstes Kapitel, Familienstammbaum:

* [https://www.safaribooksonline.com/library/view/getting-started-with/9781449379827/ch01.html](https://www.safaribooksonline.com/library/view/getting-started-with/9781449379827/ch01.html){: target="_blank"}

Nicholas Zambettis Arduino-Projektseite:

* [http://www.zambetti.com/projects/arduino/](http://www.zambetti.com/projects/arduino/){: target="_blank"}

(Nicholas hat eine Menge sowohl mit Wiring, als auch Arduino gearbeitet)

## Artikel über Arduino vs. Arduino

**Wired Italien** - Was passiert bei Arduino?

[http://www.wired.it/gadget/computer/2015/02/12/arduino-nel-caos-situazione/](http://www.wired.it/gadget/computer/2015/02/12/arduino-nel-caos-situazione/){: target="_blank"}

**Repubblica Italien** - Massimo Banzi: „Die Gründe für den Krieg um Arduino“

[http://playground.blogautore.repubblica.it/2015/02/11/la-guerra-per-arduino-la-perla-hi-tech-italiana-nel-caos/](http://playground.blogautore.repubblica.it/2015/02/11/la-guerra-per-arduino-la-perla-hi-tech-italiana-nel-caos/){: target="_blank"}

**Makezine** - Massimo Banzi kämpft um Arduino

[http://makezine.com/2015/03/19/massimo-banzi-fighting-for-arduino/](http://makezine.com/2015/03/19/massimo-banzi-fighting-for-arduino/){: target="_blank"}

**Hackaday** - Federico Musto von Arduino SRL diskutiert die rechtliche Situation von Arduino

[http://hackaday.com/2015/07/23/hackaday-interviews-federico-musto-of-arduino-srl/](http://hackaday.com/2015/07/23/hackaday-interviews-federico-musto-of-arduino-srl/){: target="_blank"}

**Hackaday** - Federico Musto von Arduino SRL zeigt uns neue Produkte und neue Richtungen

[http://hackaday.com/2016/01/04/new-products-and-new-directions-an-interview-with-federico-musto-of-arduino-srl/](http://hackaday.com/2016/01/04/new-products-and-new-directions-an-interview-with-federico-musto-of-arduino-srl/){: target="_blank"}

## Video

Massimo geht zu Ted Talk – aufrichtig (2012-08-06)

[https://www.youtube.com/watch?v=tZxY8_CNiCw](https://www.youtube.com/watch?v=tZxY8_CNiCw){: target="_blank"}

Dies ist eine aufrichtige Ansicht von Massimo, direkt vor einem TED Talk. Sie können für sich selbst über den größten Teil des Videos entscheiden, aber meiner Meinung nach ist der interessanteste Kommentar <a href="https://youtu.be/tZxY8_CNiCw?start=232" data-lity>at the end</a>, wenn er sagt:

>... Innovation, ohne um Erlaubnis zu fragen. Daher ermöglicht einem Open-Source in gewisser Hinsicht, innovativ zu sein, ohne um Erlaubnis zu fragen.

* * *

# Vielen Dank!

Vielen Dank, dass Sie sich die Zeit genommen haben, dies zu lesen. Ich finde, dass es sehr wichtig ist, nicht nur in der akademischen Welt, den Ursprung von Dingen ordnungsgemäß anzuerkennen. Wie ich von fantastischen Pädagogen gelernt habe, bereichert dies korrekt zu tun nicht nur Ihre Arbeit, sondern positioniert sie auch besser, um anderen das Nachforschen zu ermöglichen und zu sehen, wo Ihre Ideen herkommen. Möglicherweise finden sie andere Alternativen oder verbessern, was getan wurde und positionieren ihre eigenen Ideen besser.

Es hat mir persönlich viel Befriedigung, Überraschungen, neue Fragen, Ideen, Erkenntnisse und Freundschaften gegeben, die Tragweite dessen in so vielen verschiedenen Zusammenhängen zu sehen, was ich damals im Jahr 2003 entwickelt habe, wie diese Befehle Ideen und Kreationen von Menschen aus aller Welt zum Leben erwecken. Dafür bin ich dankbar.

Ich glaube, dass es wichtig ist, die Vergangenheit zu kennen, um die gleichen Fehler in Zukunft zu vermeiden. Manchmal wünsche ich mir, ich hätte hierüber anders reden können, aus einem anderen Motiv heraus. Stattdessen bin ich viele Male Journalisten und gewöhnlichen Menschen begegnet, die in ihrer Unabhängigkeit beeinträchtigt waren. Entweder hatten sie direkte Geschäfte mit Arduino oder wollten einfach nur Massimo Banzi nicht verärgern. Oder diese engstirnigen Menschen, die einer Sache folgen und es ablehnen, etwas von ihrem eigenen Glauben Abweichendes zu sehen oder zu hören. Und dann gibt es noch die Individuen, die nur Teil der Masse sind, die wiedergibt, was ihr aufgetragen wird wiederzugeben. Für diese anderen ist dieses Dokument eine Einladung, ihrer Neugierde zu vertrauen, zu fragen, tiefer zu bohren in den Bereichen, die Sie interessieren und die ihnen als Person oder als Mitglied einer Community wichtig sind.

Bis bald,

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
