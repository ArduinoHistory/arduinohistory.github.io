---
layout: default
title: La storia non raccontata di Arduino
sidebar: sidebar-it.html
---
[English](/) &middot; [日本語](ja) &middot; [Deutsche](de) &middot; [Français](fr)

[Index](#index)

# Perché hai deciso di scrivere questo articolo?

Salve, mi chiamo Hernando Barragán.

Nel corso degli anni e più recentemente a causa delle vicende intercorse tra [Arduino LLC e Arduino S.R.L.](http://hackaday.com/2015/03/12/arduino-v-arduino-part-ii/){: target="_blank"}, mi sono state poste tantissime domande dalle persone sulla storia di Wiring e, naturalmente, di Arduino.

Mi è stato, inoltre, mostrato [questo sito web dei tribunali federali statunitensi](https://www.courtlistener.com/docket/4275827/arduino-llc-v-arduino-srl/){: target="_blank"}, il quale mostra dei documenti che citano il mio lavoro, per sostenere i reclami dei ricorrenti che, a mio avviso, contribuiscono a distorcere le informazioni che riguardano il mio lavoro.

La storia di Arduino è stata raccontata da molte persone e non c'è storia che corrisponda. Ci tengo a chiarire alcuni fatti sulla storia di Arduino, con adeguati riferimenti e documenti comprovati, per meglio comunicare alle persone interessate le origini di Arduino.

Inoltre, cercherò di correggere alcuni fattori che hanno distorto il mio ruolo o il mio lavoro, mettendo in evidenza gli errori più comuni, le informazioni inesatte ed un giornalismo povero.

In primo luogo espongo una sintesi della storia, in seguito risponderò a una serie di domande che mi sono state poste nel corso degli anni.


* * *

# Perché hai creato Wiring?

Ho ideato Wiring nel 2003 nel mio progetto di tesi di laurea [all'Interaction Design Institute Ivrea (IDII)](https://en.wikipedia.org/wiki/Interaction_Design_Institute_Ivrea){: target="_blank"} in Italia.

L'obiettivo della tesi era quello di semplificare il lavoro con l'elettronica per gli artisti e i designer, astraendo via i dettagli dell'elettronica spesso complicati, in modo da potersi concentrare sui propri obiettivi.

La tesi completa può essere scaricata da questo link: [http://people.interactionivrea.org/h.barragan/thesis/thesis_low_res.pdf](http://people.interactionivrea.org/h.barragan/thesis/thesis_low_res.pdf){: target="_blank"}

Massimo Banzi e [Casey Reas](https://en.wikipedia.org/wiki/C.E.B._Reas){: target="_blank"} (noto per il suo lavoro di [Processing](https://en.wikipedia.org/wiki/Processing_(programming_language)){: target="_blank"}) sono stati i relatori della mia tesi.

Il progetto ricevette moltissima attenzione all'IDII, e venne utilizzato per [diversi](https://web.archive.org/web/20080220010711/http://www.nastypixel.com/instantsoup/website/cover/){: target="_blank"} altri progetti dal 2004, fino alla chiusura della scuola nel 2005.

Grazie alla mia tesi, fui orgoglioso di essermi laureato con la lode; l'unico all'IDII ad essersi laureato con la lode nel 2004. Continuai lo sviluppo di Wiring mentre lavorai presso l'[Universidad de Los Andes](http://www.uniandes.edu.co/){: target="_blank"} in Colombia, in Colombia, dove iniziai ad insegnare come istruttore di progettazione dell'interazione.

Il significato di Wiring e il motivo per il quale è stato creato sono contenuti nel paragrafo astratto della mia tesi di laurea. Tenete presente che correva l'anno 2003, e queste premesse non vanno prese alla leggera. Potreste averle sentite prima di essere state recitate come proclami:

> "... Gli strumenti attuali di prototipazione per l'elettronica e la programmazione sono per lo più mirati all'ingegneria, alla robotica  e ad un pubblico tecnico. Sono difficili da apprendere, e i linguaggi di programmazione sono tutt'altro che utili nei contesti al di fuori di una specifica tecnologia ..."

> "... Può anche essere usato per insegnare e imparare la programmazione del computer e la prototipazione con l'elettronica..."

> "Wiring si basa su Processing..."



Riporto di seguito gli elementi significativi e principali di Wiring:

1.  Ambiente semplice di sviluppo integrato (IDE) (integrated development environment), basato su Processing.org IDE che esegue Microsoft Windows, Mac OS X, e Linux per creare programmi software o "sketch"[^1], con un semplice editor
2.  "linguaggio" semplice o programmazione "framework" per microcontrollori
3.  Integrazione toolchain completa (trasparente per l'utente)
4.  Bootloader per un facile caricamento dei programmi
5.  Monitor di serie per verificare e inviare i dati dal/al microcontrollore
6.  Software open source
7.  Progetti di hardware open source basati su microcontrollori Atmel
8.  Consultazione online completa per i comandi e le librerie, ad esempio, tutorial, forum e una vetrina di progetti realizzati utilizzando Wiring

* * *

# Come è stato creato Wiring?

Leggendo la tesi è possibile comprendere il processo di progettazione che ho seguito. Il notevole impegno in termini di ricerca e i riferimenti al lavoro precedente sono stati utili come base per il mio lavoro. Per illustrare brevemente il processo, fornisco di seguito alcuni punti chiave.

## Il linguaggio

Vi siete mai chiesti da dove vengono questi comandi?

Probabilmente una delle cose più caratteristiche, ampiamente conosciuta e utilizzata oggi dagli utenti Arduino nei loro sketch, è l'insieme dei comandi che ho creato come la definizione del linguaggio per Wiring.

*   `pinMode()`
*   `digitalRead()`
*   `digitalWrite()`
*   `analogRead()`
*   `analogWrite()`
*   `delay()`
*   `millis()`
*   ecc...

L'astrazione dei pin del microcontrollore come numeri è stata, senza dubbio, una decisione importante, in particolar modo perché la sintassi è stata definita prima dell'implementazione in qualsiasi piattaforma hardware. Tutta la denominazione del comando del linguaggio e la sintassi sono stati il risultato di un processo di progettazione completo da me condotto, che includeva il test dell'utente insieme agli studenti, l'osservazione, l'analisi, la regolazione e l'iterazione.

In seguito allo sviluppo dei prototipi hardware, si è sviluppato naturalmente anche il linguaggio. Ciò non si verificò fino a dopo la creazione del prototipo finale, con un linguaggio solido e raffinato.

Se siete ancora curiosi di conoscere il processo di progettazione, leggete la tesi, che include le precedenti fasi di denominazione del comando e la sintassi, le quali sono state successivamente scartate.

## L'Hardware

Dal punto di vista di un designer, questo era probabilmente la parte più difficile da affrontare. Ho richiesto e acquistato schede di valutazione da diversi produttori di microcontrollori.

Elenco qui di seguito alcuni momenti chiave nella progettazione dell'hardware per Wiring.

### Prototipo 1

Il primo prototipo per Wiring utilizzava il microcontrollore [Parallax](https://www.parallax.com/){: target="_blank"} Javelin Stamp. È stata una scelta naturale, dal momento che era stato programmato in un sottoinsieme del linguaggio Java, il quale veniva già utilizzato da Processing.

Problema: come descritto nella tesi a pagina 40, la compilazione, il collegamento e il caricamento dei programmi dell'utente si affidano agli strumenti proprietari di Parallax. Dal momento che Wiring è stato progettato come software open source, Javelin Stamp non era semplicemente una valida opzione.

<a href="/images/full/WiringPrototype1-JavelinStamp.jpg" data-lity><img alt="Wiring Prototype 1 - Javelin Stamp" src="/images/WiringPrototype1-JavelinStamp.jpg" width="600px" height="" /></a>
***Foto di Javelin Stamp utilizzato per il primo prototipo per l'hardware di Wiring.***

Per i successivi prototipi, i microcontrollori venivano scelti sulla base della disponibilità di strumenti open source per la compilazione, il collegamento e il caricamento del codice utente. Ciò ha indotto a eliminare molto presto la più popolare famiglia Microchip PIC di microcontrollori poiché, a quel tempo (circa 2003), Microchip non aveva una toolchain di open source.

### Prototipo 2

Per il secondo prototipo dell'hardware di Wiring, è stato selezionato il microcontollore [Atmel](http://www.atmel.com/){: target="_blank"} ARM-basato su [AT91R40008](http://www.atmel.com/devices/R40008.aspx){: target="_blank"} il quale ha portato degli ottimi risultati. Furono sviluppati i primi esempi di sketch e iniziarono i test di denominazione dei comandi. Ad esempio, `pinWrite()` veniva utilizzato per denominare l'ormai onnipresente `digitalWrite()`.

Durante la mia valutazione delle prestazioni, Atmel R40008 venne selezionato come banco di prova per API digitale di ingresso/uscita e per API di comunicazione seriale. Atmel R40008 era un potentissimo microcontollore, ma era troppo complesso per un approccio "pratico", perché era quasi impossibile saldare a mano su una scheda a circuito stampato.

Per ulteriori informazioni su questo prototipo, consultare la tesi a pagina 42.

<a href="/images/full/WiringPrototype2-AtmelAT91R40008.jpg" data-lity><img alt="Wiring Prototype 2 - Atmel AT91R40008" src="/images/WiringPrototype2-AtmelAT91R40008.jpg" width="600px" height="" /></a>
***Foto di Atmel AT91R40008 utilizzato per il secondo prototipo dell'hardware di Wiring.***

### Prototipo 3

Gli esperimenti precedenti sui prototipi hanno condotto al terzo prototipo, in cui il microcontrollore è stato ridimensionato ad uno ancora potente, ma con la possibilità di regolarlo senza i requisiti di attrezzature specializzate o periferiche supplementari di bordo.

Ho selezionato il microcontrollore Atmel [ATmega128](http://www.atmel.com/devices/ATMEGA128.aspx){: target="_blank"} e ho acquistato una scheda di valutazione Atmel [STK500](http://www.atmel.com/tools/STK500.aspx){: target="_blank"} con una presa speciale per ATmega128.

<a href="/images/full/WiringPrototype3-AtmelATmega128.jpg" data-lity><img alt="Wiring Prototype 3 - Atmel STK500 with ATmega128" src="/images/WiringPrototype3-AtmelATmega128.jpg" width="600px" height="" /></a>
***Foto di Atmel STK500 con espansione ATmega128.***

I test con STK500 hanno riscosso subito successo, così comprai una scheda [MAVRIC](http://www.bdmicro.com/mavric-ib/){: target="_blank"} da [BDMICRO](http://www.bdmicro.com/){: target="_blank"} con ATmega128 saldati. Il lavoro di Brian Dean sulle sue schede MAVRIC erano senza pari in quel momento, e il suo lavoro lo ha spinto a costruire uno strumento software per caricare con facilità nuovi programmi sulla sua scheda. È ancora oggi utilizzato nel software di Arduino, e si chiama "avrdude".

Dato che le porte COM tradizionali stavano scomparendo dai computer, ho selezionato l'hardware [FTDI](http://www.ftdichip.com/){: target="_blank"} per la comunicazione tramite una porta USB sul computer host. FTDI ha fornito i driver per Windows, Mac OS X e Linux, il quale era richiesto per l'ambiente di Wiring per operare su tutte le piattaforme.

<a href="/images/full/BDMICRO-MAVRIC-II.jpg" data-lity><img alt="BDMICRO MAVRIC-II" src="/images/BDMICRO-MAVRIC-II.jpg" width="600px" height="" /></a>
***Foto di BDMICRO MAVRIC-II utilizzato per il terzo prototipo dell'hardware di Wiring.***

<a href="/images/full/FTDI-FT232BM.jpg" data-lity><img alt="FTDI FT232BM Evaluation Board" src="/images/FTDI-FT232BM.jpg" width="600px" height="" /></a>
***Foto di una scheda di valutazione FTDI FT232BM utilizzato nel terzo prototipo di hardware di Wiring.***

La scheda di valutazione FTDI è stata interfacciata con la scheda MAVRIC ed è stata testata con il terzo prototipo di Wiring.

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringPrototype3-BDMICROandFTDI1.jpg" data-lity><img alt="Wiring Prototype 3 - BDMICRO and FTDI - 1" src="/images/WiringPrototype3-BDMICROandFTDI1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringPrototype3-BDMICROandFTDI2.jpg" data-lity><img alt="Wiring Prototype 3 - BDMICRO and FTDI - 2" src="/images/WiringPrototype3-BDMICROandFTDI2.jpg" width="300px" height="" /></a>
</span>
</div>
***Test con la scheda BDMICRO MAVRIC-II e FTDI-FT232BM.***

All'inizio dell'anno 2004, sulla base del prototipo utilizzando la scheda MAVRIC (prototipo 3), ho utilizzato i disegni schematici di Brian Dean e Pascal Stang come riferimento per creare il primo progetto della scheda Wiring. Essa aveva le seguenti caratteristiche:

*   ATmega128
*   FTDI232BM per conversione seriale a USB
*   Un LED di bordo collegato a un pin
*   Un LED di alimentazione e RX/TX LED seriali

Ho utilizzato [Eagle PCB da Cadsoft](http://www.cadsoftusa.com/){: target="_blank"} per la progettazione del circuito schematico e stampato.

<a href="/images/full/Wiring-schematic.png" data-lity><img alt="Wiring board schematic" src="/images/Wiring-schematic.png" width="600px" height="" /></a>
***Schema scheda Wiring.***

<a href="/images/full/Wiring-pcb.png" data-lity><img alt="Wiring board PCB" src="/images/Wiring-pcb.png" width="600px" height="" /></a>
***Struttura scheda circuito stampato di Wiring.***

Insieme al terzo prototipo, la versione finale di API è stata collaudata e perfezionata. Sono stati aggiunti ulteriori esempi e io scrissi il primo esempio del lampeggio dei LED, che viene usato ancora oggi come il primo sketch che un utente esegue su una scheda Arduino per apprendere l'ambiente. Sono stati sviluppati altri esempi per supportare i display a cristalli liquidi (LCD), la comunicazione tramite porta seriale, servomotori, ecc..e anche per interfacciarsi con Wiring e Processing tramite la comunicazione seriale. Per ulteriori dettagli, consultare pagina 50 della tesi.

Nel mese di marzo del 2004, sono stati ordinati e realizzati presso SERP 25 circuiti stampati Wiring, sostenuti da IDII.

Ho saldato a mano queste 25 schede e ho iniziato a condurre test di usabilità con alcuni dei miei compagni di IDII. È stato un momento emozionante!

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
***Foto della prima scheda Wiring***

## Sviluppo successivo

Dopo aver conseguito la laurea pressi IDII nel 2004, mi trasferì di nuovo in Colombia, dove iniziai ad insegnare come insegnante di Interaction Design presso l'Università de Los Andes. Dato che continuai a sviluppare Wiring, IDII decise di stampare e assemblare un lotto di 100 schede Wiring per insegnare physical computing presso IDII alla fine del 2004. [Bill Verplank](http://www.billverplank.com/){: target="_blank"} (un ex membro della facoltà IDII) chiese a Massimo Banzi di inviarmi 10 schede per l'utilizzo nelle mie classi in Colombia.

Nel 2004, l'ex membro [Yaniv Steiner](http://www.nastypixel.com/prototype/people/yaniv-steiner-2){: target="_blank"}, l'ex studente Giorgio Olivero, e il consulente progettista informatico Paolo Sancis iniziarono il progetto [Instant Soup Project](https://web.archive.org/web/20080220010711/http://www.nastypixel.com/instantsoup/website/cover/){: target="_blank"}, basato su Wiring presso IDII.

## Primo grande successo - Strangely Familiar

Nell'autunno del 2004, Wiring venne utilizzato per insegnare physical computing presso IDII attraverso un progetto chiamato Strangely Familiar, composto da 22 studenti, e 11 progetti di successo. Quattro membri della facoltà eseguirono il progetto durato 4 settimane:

*   Massimo Banzi
*   Heather Martin
*   Yaniv Steiner
*   Reto Wettach

Si rivelò un clamoroso successo sia per gli studenti, che per i professori e gli insegnanti. Strangely Familiar dimostrò il potenziale di Wiring come una piattaforma di innovazione per la progettazione dell'interazione.

Il 16 dicembre 2004, Bill Verplank mi inviò una e-mail nel quale mi scrisse:

>[I progetti] sono stati fantastici. Ognuno aveva delle cose su cui lavorare. Cinque dei progetti avevano dei motori! Il più avanzato (progettato da due architetti e matematici laureati presso MIT) ha permesso di elaborare un profilo in Proce55ing e avvertirlo con una ruota/motore azionato da Wiring...

>È chiaro che uno degli elementi di successo è stato l'utilizzo della scheda Wiring.

Elenco di seguito la sintesi del corso:

* [http://wiring.org.co/exhibition/images/brief.pdf](http://wiring.org.co/exhibition/images/brief.pdf){: target="_blank"}

Di seguito un libretto con i progetti risultanti:

* [http://wiring.org.co/exhibition/images/book01.pdf](http://wiring.org.co/exhibition/images/book01.pdf){: target="_blank"}

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TugTug-Testing.jpg" data-lity><img alt="Working on Tug Tug (Haiyan Zhang)" src="/images/TugTug-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TugTug.jpg" data-lity><img alt="Tug Tug" src="/images/TugTug.jpg" width="300px" height="" /></a></span>
</div>
***Telefoni Tug Tug di Haiyan Zhang (con Aram Armstrong)***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/CommitmentRadio-Testing.jpg" data-lity><img alt="Working on Commitment Radio" src="/images/CommitmentRadio-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/CommitmentRadio.jpg" data-lity><img alt="Commitment Radio" src="/images/CommitmentRadio.jpg" width="300px" height="" /></a></span>
</div>
***[Commitment Radio](http://www.d4v3.net/resume/radios.php){: target="_blank"} di David Chiu e Alexandra Deschamps-Sonsino***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/SpeakOut-Testing.jpg" data-lity><img alt="Working on Speak Out" src="/images/SpeakOut-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/SpeakOut.jpg" data-lity><img alt="Speak Out" src="/images/SpeakOut.jpg" width="300px" height="" /></a></span>
</div>
***[Speak Out](http://www.andreeachelaru.com/ThesisOther.htm){: target="_blank"} di Tristam Sparks e Andreea Cherlaru (con Ana Camila Amorim)***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/FeelTheMusicI-Testing.jpg" data-lity><img alt="Working on Feel the Music I" src="/images/FeelTheMusicI-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/FeelTheMusicI.jpg" data-lity><img alt="Feel the Music I" src="/images/FeelTheMusicI.jpg" width="300px" height="" /></a></span>
</div>
***Feel the Music I di James Tichenor e David A. Mellis***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TheAmazingAllBandRadio-Testing.jpg" data-lity><img alt="Working on The Amazing All Band Radio" src="/images/TheAmazingAllBandRadio-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TheAmazingAllBandRadio.jpg" data-lity><img alt="The Amazing All Band Radio" src="/images/TheAmazingAllBandRadio.jpg" width="300px" height="" /></a></span>
</div>
***[The Amazing All Band Radio](http://neighbourhoodsatellites.com/project/the-amazing-all-band-radio/){: target="_blank"} di Oren Horev & Myriel Milicevic (con Marcos Weskamp)***

## Il resto del mondo

Nel mese di maggio del 2005, contrattai [Advanced Circuits](http://www.4pcb.com/){: target="_blank"} negli Stati Uniti per stampare le prime 200 schede di circuito stampate al di fuori di IDII, e le assemblai in Colombia. Iniziai a vendere e a spedire le schede a varie scuole e università, ed entro la fine del 2005 Wiring venne utilizzato in tutto il mondo.

<a href="/images/full/WiringsReachBy2005.png" data-lity><img alt="Wiring's Reach by 2005" src="/images/WiringsReachBy2005.png" width="600px" height="" /></a>
***"Grafico “Wiring’s Reach by 2005”, fornito da [Collin Reisdorf](https://twitter.com/nillocr){: target="_blank"}***

* * *

# Quando venne avviato Arduino e perché non eri un membro del team di Arduino?

## La formazione di Arduino

Quando IDII produsse la prima serie delle schede Wiring, il costo si aggirava probabilmente attorno ai 50 $ statunitensi per ciascuna scheda. (non so quale sia stato il costo effettivo, poiché non sono stato coinvolto nel processo. Tuttavia, vendetti le schede dalla Colombia per circa 60$). Ciò rappresentò un notevole calo di prezzo delle schede che erano attualmente disponibili, ma fu un costo significativo per la maggior parte delle persone.

Nel 2005, Massimo Banzi, insieme a David Mellis (a quel tempo uno studente di IDII) e David Cuartielles, aggiunsero un supporto più conveniente per il microcontrollare ATmega8 per Wiring. Essi copiarono, in seguito, il codice sorgente di Wiring e iniziarono a metterlo in funzione come un progetto separato, chiamato Arduino.

Non vi fu necessità di creare un progetto separato, poiché li avrei aiutati volentieri e avrei sviluppato un supporto per ATmega8 e altri microcontrollori. Programmai di farlo tutto insieme.

<a href="/images/full/FuturePlansForWiring.png" data-lity><img alt="Future Plans for Wiring" src="/images/FuturePlansForWiring.png" width="600px" height="" /></a>
***Scattai inavvertitamente una foto di alcune note circa i miei progetti per Wiring, nella foto di Karmen Franinovic (ex studente IDII dal 2002 al 2004) che sta testando un sensore di allungamento per una lampada, marzo 2004.***

Wiring e Arduino condivisero molte delle prime fasi di sviluppo realizzate da [Nicholas Zambetti](http://www.zambetti.com/projects/arduino/){: target="_blank"}, un ex studente IDII nella stessa classe di David Mellis. Per un breve periodo Nicholas venne considerato un membro del Team di Arduino.

Durante lo stesso periodo, Gianluca Martino (consulente di SERP, la fabbrica di circuito stampato presso Ivrea, dove sono state create le mie schede Wiring), si unì al team di Arduino per supportare la produzione e lo sviluppo dell'hardware. Quindi, per ridurre il costo delle loro schede, Gianluca, con l'aiuto di David Cuartielles, sviluppò degli hardware più economici utilizzando ATmega8.

<a href="/images/full/ArduinoPrototype1.jpg" data-lity><img alt="Arduino's First Prototype: Wiring Lite" src="/images/ArduinoPrototype1.jpg" width="600px" height="" /></a>
***Sembra che questo sia [il primo prototipo di “Arduino”](https://www.flickr.com/photos/mbanzi/172472136/in/album-72157594173657338/){: target="_blank"} - Wiring Lite doppiato. Credo che Massimo Banzi abbia progettato questo, ma non ne sono sicuro.***

<a href="/images/full/ArduinoExtremeV2.jpg" data-lity><img alt="Arduino Extreme v2" src="/images/ArduinoExtremeV2.jpg" width="600px" height="" /></a>
***[Arduino Extreme v2](https://www.flickr.com/photos/mbanzi/172471940/in/album-72157594173657338/){: target="_blank"} - "Versione seconda produzione delle schede USB di Arduino, correttamente progettate da Gianluca Martino."***

Tom Igoe (un docente presso la ITP di NYU[^2]) venne invitato da Massimo Banzi presso IDII per un seminario, in seguito al quale iniziò a far parte del Team di Arduino.

Fino ad oggi, non so esattamente il motivo per cui il Team di Arduino abbia separato il codice da Wiring. Fu anche sconcertante il motivo per cui non abbiamo lavorato insieme. Quindi, rispondendo alla domanda, non mi venne mai chiesto di diventare un membro del Team di Arduino.

Anche se fui perplesso sulla separazione del codice da parte del Team di Arduino, continuai lo sviluppo di Wiring, e quasi tutti i miglioramenti apportati a Wiring da me e da tanti contribuenti, vennero fusi nel codice sorgente di Arduino. Cercai di ignorare il fatto che loro si stavano ancora impossessando del mio lavoro e rimasi sorpreso sulla ridondanza e lo spreco delle risorse duplicando gli sforzi.

Alla fine del 2005, iniziai a lavorare con Casey Reas su un capitolo per il libro "[Processing: A Programming Handbook for Visual Artists and Designers](http://www.amazon.com/Processing-Programming-Handbook-Designers-Artists/dp/0262182629){: target="_blank"}."  [Il capitolo](https://processing.org/tutorials/electronics/){: target="_blank"} capitolo presenta una breve storia dell'elettronica nelle arti ed include esempi per interfacciarsi con Processing, Wiring e Arduino. Presentai questi esempi in entrambe le piattaforme e feci in modo che gli esempi inclusi lavorassero sia per Wiring che per Arduino.

Il libro pubblicò una seconda edizione nel 2013 e il capitolo fu rivisto ancora una volta da Casey e da me, e [l'estensione](https://processing.org/tutorials/electronics/){: target="_blank"} venne reso disponibile online a partire dal 2014.

* * *

# Il Team di Arduino lavorò con Wiring prima della nascita di Arduino?

Sì, ognuno di loro aveva maturato un'esperienza con Wiring prima di creare Arduino.

Massimo Banzi insegnò con Wiring presso IDII dal 2004.

<a href="/images/full/WiringBoardsWithMassimo.jpg" data-lity><img alt="Massimo Banzi Teaching with Wiring" src="/images/WiringBoardsWithMassimo.jpg" width="600px" height="" /></a>
***Massimo Banzi mentre insegna la progettazione dell'interazione presso IDII con schede Wiring nel 2004.***

David Mellis fu uno studente presso IDII dal 2004 al 2005.

<a href="/images/full/DavidMellisAtIDII.jpg" data-lity><img alt="David Mellis at IDII" src="/images/DavidMellisAtIDII.jpg" width="600px" height="" /></a>
***Una versione sfocata di David Mellis mentre apprende physical computing con Wiring nel 2004.***

Nel gennaio 2005, IDII ingaggiò David Cuartielles per sviluppare una coppia di schede plug-in per la scheda Wiring, per il controllo del motore e la connettività bluetooth.

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBluetoothPlugin.jpg" data-lity><img alt="Wiring Bluetooth Plugin" src="/images/WiringBluetoothPlugin.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringMotorControllerPlugin.jpg" data-lity><img alt="Wiring Motor Controller Plugin" src="/images/WiringMotorControllerPlugin.jpg" width="300px" height="" /></a></span>
</div>
***Due schede plug-in sviluppate presso IDII da David Cuartielles e suo fratello. Bluetooth protetto sulla sinistra, e un controllo motore protetto sulla destra.***

Mostrai le prime versioni di Wiring a Tom Igoe durante una visita a ITP a New York nel 2003. A quel tempo egli non aveva alcuna esperienza con l'hardware Atmel, dato che Tom stava utilizzando microcontrollori PIC all' ITP come alternativa alle piattaforme costose come Parallax Basic Stamp o Basic X. Una delle raccomandazioni di Tom in questa visita fu: "beh, fallo per PIC, perché questo è quello che usiamo qui."

Anni dopo, nel 2007, Tom Igoe rilasciò la prima edizione del libro "Making Things Talk" pubblicato da O'Reilly3, il quale presentò l'uso di Wiring e Arduino.

Gianluca Martino lavorò inizialmente per SERP (la fabbrica che produsse le prime 25 schede di circuito Wiring) e più tardi fondò Smart Projects SRL (1 aprile, 2004). Smart Projects creò il primo lotto di 100 schede Wiring per IDII per insegnare physical computing nel 2004.

* * *

# Che cos'è Programma2003 e in che modo si collega all'utente o a Wiring?

Programma2003 era una scheda di microncontrollore [Microchip](http://www.microchip.com/){: target="_blank"} PIC sviluppato da Massimo Banzi nel 2003. Dopo aver utilizzato BasicX per insegnare Physical computing nell'inverno del 2002, Massimo decise di creare una scheda utilizzando il chip di PIC nel 2003. Il problema con i microcontrollori PIC era che a quel tempo non c'era una toolchain di open source disponibile, per usare un linguaggio come C per programmarli.

<a href="/images/full/Programma2003.jpg" data-lity><img alt="Programma2003" src="/images/Programma2003.jpg" width="600px" height="" /></a>
***Scheda [Programma2003](https://www.flickr.com/photos/mbanzi/8610131426/in/album-72157633136997919/){: target="_blank"} progettato da Massimo Banzi nel 2003***

A causa della mancanza di una toolchain di open source, Massimo decise di utilizzare un ambiente denominato [JAL](http://justanotherlanguage.org/){: target="_blank"} (Just Another Language) per programmare il microcontrollore PIC. JAL venne creato da Wouter van Ooijen.

Si trattava del compilatore, linker, uploader, bootloader JAL ed esempi per PIC. Il software, tuttavia, veniva eseguito solo su Windows.

Al fine di facilitare l'utilizzo di JAL, Massimo utilizzò gli esempi di base da JAL e semplificò alcuni di loro per il pacchetto di distribuzione per IDII.

Tuttavia, nel 2003 la maggior parte degli studenti di IDII utilizzarono Mac computers. Così mi ofrii volontario per aiutare Massimo a creare un ambiente piccolo e semplice per Mac OS X, in modo che anche gli studenti con un Mac potessero utilizzarlo.

Nella mia tesi, definì Programma2003 come un modello non vitale da seguire, dal momento che altri strumenti più completi erano già disponibili sul mercato. I problemi principali furono i seguenti:

*   il linguaggio è tutt'altro che utile in qualsiasi altro contesto (ad esempio, non è possibile programmare il computer utilizzando JAL)
*   la sintassi arcana e il design dell'hardware hanno reso altamente improbabile il fatto di doversi trasferire in futuro per insegnare o imparare
*   la scheda non aveva un LED di alimentazione (un difetto di progettazione)

Era impossibile sapere se era alimentato o meno (frustrante/pericoloso in un ambiente di apprendimento) ed era richiesto un ulteriore RS232 al convertitore USB costoso per collegarlo ad un computer.

Come gesto per aiutare Massimo nel progetto Programma2003, scrissi anche qualcosa che chiamai Interfaccia del Programma2003, che sostanzialmente interfacciò qualsiasi comunicazione seriale tra un microcontrollore e un computer con la rete. Ciò ampliò la casella degli strumenti di prototipazione presso IDII e permise agli studenti di utilizzare il software come Adobe Flash (in precedenza Macromedia) per comunicare con un microcontrollore.

<a href="/images/full/Programma2003InterfaceCode.jpg" data-lity><img alt="Programma2003 Interface Code" src="/images/Programma2003InterfaceCode.jpg" width="" height="400px" /></a>
***Codice di interfaccia Programma2003***

* * *

# Perché Arduino non ha riconosciuto Wiring in maniera migliore?

Non lo so.

Il riferimento a Wiring sul sito di Arduino.cc, sebbene sia stato migliorato di poco nel corso del tempo, è fuorviante poiché tenta di attribuire Wiring a Programma2003.

<a href="/images/full/ArduinoCCCredits-2016-02-23.jpg" data-lity><img alt="Arduino.cc Credits Page Excerpt - 2016-02-23" src="/images/ArduinoCCCredits-2016-02-23.jpg" width="600px" height="" /></a>
***La versione del sito web di Arduino.cc della storia di Arduino da [https://www.arduino.cc/en/Main/Credits](https://www.arduino.cc/en/Main/Credits){: target="_blank"}***

Si aggiunge alla confusione questo album fotografico Flickr di Massimo Banzi:

[https://www.flickr.com/photos/mbanzi/albums/72157633136997919/with/8610131426/](https://www.flickr.com/photos/mbanzi/albums/72157633136997919/with/8610131426/){: target="_blank"}

Viene denominato “Teaching: IDII 2004 Strangely Familiar”. Strangely Familiar venne insegnato mediante Wiring (vedi sopra). Questo album fotografico sembra associare Programma2003 alla classe, ma non venne in realtà mai utilizzato. È alquanto strano che le schede Wiring non siano presenti nell'album, tuttavia è presente [un'immagine della scheda Wiring](https://www.flickr.com/photos/mbanzi/8609019055){: target="_blank"}.

Non è un segreto che il riconoscimento di Wiring sia stato molto limitato in passato. Già nel 2013 [all'Open Hardware Summit](http://2013.oshwa.org/schedule/){: target="_blank"} presso MIT, durante il pannello "implicazioni di Open source business: fork e attribuzione", David Mellis riconosce, per la prima volta, che il team di Arduino non aveva fatto un ottimo lavoro nel processo di riconoscimento di Wiring. Purtroppo non erano entrati nei dettagli perché non ne avevano.

* * *

# Il ricorrente vs l'accusato

Ero tranquillo riguardo a tutto quello che era successo con Arduino per un lungo periodo di tempo. Ma ora che le persone affermano in maniera fraudolenta che il mio lavoro è il loro lavoro, sento di avere il bisogno di parlare del mio passato.

Ad esempio, nel caso in corso tra Arduino LLC e Arduino S.R.L., vi è [un reclamo](https://www.unitedstatescourts.org/federal/mad/167131/1-0.html){: target="_blank"}, sollevato dal ricorrente che mostro qui di seguito:

>34\. Banzi è il creatore della piattaforma di sviluppo Programma2003, un precursore dei tanti prodotti del marchio ARDUINO. Vedi: [http://sourceforge.net/projects/programma2003/](http://sourceforge.net/projects/programma2003/){: target="_blank"}.  Banzi è stato anche il relatore della tesi di laurea di Hernando Barragan, il cui lavoro potrebbe realizzarsi nella piattaforma di sviluppo di Wiring che ha ispirato Arduino.

Ecco quello che, a mio avviso, sono affermazioni sbagliate esposte nel reclamo:

1.  Programma2003 non era una piattaforma di sviluppo, era semplicemente una scheda. Non vi era alcun software sviluppato dal ricorrente per accompagnare quella scheda.
2.  Il collegamento è vuoto, non ci sono file in quel deposito Sourceforge, quindi perché presentare un deposito vuoto come prova?
3.  L'idea che il semplice fatto che Banzi sia stato il mio relatore di tesi, gli dà una sorta di maggior potere sul lavoro fatto su Wiring ed è, a dir poco, frustrante da leggere.

Andando avanti:

>39\. I fondatori, assistiti da Nicholas Zambetti, un altro studente di IDII, intrapresero e svilupparono un progetto in cui realizzarono una piattaforma e un ambiente per schede di microcontrollori ("Schede") per sostituire il progetto di sviluppo Wiring. Banzi diede al progetto il suo nome, il progetto di ARDUINO.

Qui di seguito elenco le domande che io posi ai "Fondatori:"

*   Perché il "Progetto di Sviluppo Wiring" deve essere sostituito?
*   Avete chiesto allo sviluppatore se volesse collaborare con voi?
*   Non vi piace il nome originale? (dopo tutto Banzi diede al progetto il suo nome)

So che potrebbe essere fatto di tanto in tanto ma, a mio parere, non è etico ed è un cattivo esempio per gli accademici fare qualcosa di simile con il lavoro di uno studente. Gli educatori, più di chiunque altro, devono evitare di trarre vantaggio sul lavoro dei propri studenti. In un certo senso, mi sento ancora violato dai "Fondatori" per aver chiamato il mio lavoro, il loro lavoro.

Potrebbe essere legale prendere un software open source e il modello, la filosofia, il discorso del progetto hardware, e le migliaia di ore di lavoro effettuate dal suo autore, effettuare un esercizio di branding su di esso, e rilasciarlo per il mondo come qualcosa di "nuovo" o "ispirato" ma... sarebbe corretto?

* * *

# Continue informazioni fuorvianti

Una volta, qualcuno disse:

>"Se non facciamo le cose con estrema chiarezza, le persone traggono le proprie conclusioni e diventano fatti, anche se non abbiamo affermato mai nulla di simile."[^4]

Sembra che questo sia universalmente vero e, in particolare, se si induce in errore le persone con soltanto alcune alterazioni della verità, si può avere il controllo sulle proprie conclusioni.

Riporto un paio di esempi principali di informazioni fuorvianti.

## The Infamous Diagram

<a href="/images/full/InteractionIvreaDiagram.jpg" data-lity><img alt="Interaction Ivrea (Weird) Diagram" src="/images/InteractionIvreaDiagram.jpg" width="600px" height="" /></a>
***[http://blog.experientia.com/uploads/2013/10/Interaction_Ivrea_arduino.pdf](http://blog.experientia.com/uploads/2013/10/Interaction_Ivrea_arduino.pdf){: target="_blank"}***

Questo diagramma è stato prodotto per raccontare la storia degli strumenti di prototipazione sviluppati presso IDII. È stato ben realizzato da Giorgio Olivero, in cui ha utilizzato il contenuto fornito dalla scuola nel 2005, ed è stato pubblicato nel 2006.

I progetti presentati nelle macchie rosse, sebbene siano stati fatti con Wiring, sembrano essere associati ad Arduino, in un tempo *in cui Arduino non esisteva nemmeno*, né era quasi pronto per essere progettato.

Alcuni degli autori dei progetti posero delle domande sull'errore e sul motivo per cui i loro progetti fossero stati trasferiti ad Arduino, ma non riceverono alcuna risposta.

Nonostante il fatto che nulla sia stato cambiato in questo documento estremamente pubblico, devo ringraziare il supporto degli studenti che indicarono questo fatto e posero delle domande su quanto accaduto.

## Il documentario di Arduino

Un altro pezzo molto pubblico dei media dal 2010 è stato [Il documentario di Arduino](https://vimeo.com/18539129){: target="_blank"} (scritto e diretto da Raúl Alaejos, Rodrigo Calvo).

Questo documentario è molto interessante, soprattutto vedendolo oggi nel 2016. Credo che l'idea di realizzare un documentario sia molto buono, soprattutto per un progetto con una storia così ricca.

Riporto alcune parti che presentano alcune contraddizioni interessanti:

<a href="http://vimeo.com/18539129?#t=1m45s" data-lity>1:45</a> - "Abbiamo voluto che fosse un open source, in modo che tutti potessero aiutarci e dare un contributo." Si riporta che Wiring fosse una closed source, perché parte di Wiring si basava su Processing, e Processing era GPL open source, così come tutte le librerie, Wiring e quindi Arduino, dovevano essere un open source. Non era un'opzione per farlo diventare closed source. Inoltre, l'insinuazione che essi hanno reso il software più semplice è fuorviante, dal momento che non è cambiato nulla nel linguaggio, che è l'essenza della semplicità del progetto.

<a href="http://vimeo.com/18539129?#t=3m20s" data-lity>3:20</a> - David Cuartielles già era a conoscenza di Wiring, poiché era stato assunto per progettare due schede plug-in da IDII nel 2005, come sottolineato in precedenza nel presente documento. David Mellis apprese physical computing utilizzando Wiring come studente presso IDII nel 2004. È interessante notare che Gianluca si inserì come la persona che era in grado di progettare la scheda stessa (egli non era solo un contraente per la produzione); egli era parte del "Team di Arduino”.

<a href="http://vimeo.com/18539129?#t=8m53s" data-lity>8:53</a> - David Cuartielles affermò presso Media Lab a Madrid, nel luglio 2005: "Arduino è l'ultimo progetto, e l'ho completato la settimana scorsa. Ho parlato con il direttore tecnico di Ivrea dicendogli: non sarebbe bello se potessimo fare qualcosa da offrire gratuitamente? Egli disse - Gratis? - Sì! David si imbattè come l'autore di un progetto che egli ha completato "la settimana scorsa", convincendo il "direttore tecnico" di IDII di offrirlo gratuitamente.

<a href="http://vimeo.com/18539129?#t=18m56s" data-lity>18:56</a> - Massimo Banzi:

>All'inizio era una necessità specifica per noi: sapevamo che la scuola stava chiudendo e avevamo paura che gli avvocati si sarebbero presentati un giorno dicendo - Tutto quello che è presente qui deve essere chiuso in una scatola e deve essere dimenticato. - Così abbiamo pensato - Bene, se invece aprissimo tutto, potremmo sopravvivere alla chiusura della scuola - e questo fu il primo passo.

Questo è molto speciale e presenta erroneamente il fatto di rendere Arduino un open source come conseguenza della chiusura della scuola. Ciò pone una domanda: perché un gruppo di avvocati "chiudono in una scatola" un progetto basato su altri progetti open source? è davvero quasi puerile. Il problema è che la gente comune potrebbe pensare che questo sia vero, formando ragioni altruistiche per il team per rendere Arduino un open source.

* * *

# Assenza di riconoscimento oltre Wiring

Sembra che ci sia una tendenza sul fatto che il team di Arduino non riesca a riconoscere soggetti rilevanti che hanno contribuito al loro successo.

Nel mese di ottobre del 2013, Jan-Christoph Zoels (un ex membro della facoltà IDII) scrisse alla mail list della community di IDII, un messaggio che presenta l'articolo pubblicato in Core77 sulle [Intel-Arduino news on Wired UK](http://www.wired.co.uk/news/archive/2013-10/03/intel-arduino-galileo){: target="_blank"}:

>Un momento di orgoglio per vedere Intel rifarsina un'iniziativa di interazione Ivrea.

>E, inoltre, un buon investimento:

>Lo sviluppo di Arduino è stato avviato e sviluppato presso Interaction Design Institute Ivrea con un finanziamento iniziale di circa 250.000€. Un'altra buona decisione era quella di mantenere Arduino come un open source al termine di Interaction Ivrea nel 2005, prima di fondersi con Domus.

Massimo Banzi rispose:

>Vorrei sottolineare che non abbiamo mai avuto alcun finanziamento da Ivrea per Arduino (a parte l'acquisto di 50 di loro nel corso dell'ultimo anno dell'istituto)

>250.000 EUR è ridicolo…

>L'articolo deve essere ritirato ora

>Ci dispiace JC ma non avevamo niente a che fare con questo....Non puoi cercare di ottenere credito per qualcosa in cui non sei stato coinvolto

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/JCEmailThread1.jpg" data-lity><img alt="Celebration Email Thread Posting" src="/images/JCEmailThread1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/JCEmailThread2.jpg" data-lity><img alt="Celebration Email Thread Response" src="/images/JCEmailThread2.jpg" width="300px" height="" /></a></span>
</div>

Tuttavia, è stato bello aver ricevuto questo pochi giorni dopo nella stessa e-mail:

<a href="/images/full/JCEmailThread3.jpg" data-lity><img alt="Celebration Email Thread Follow-up" src="/images/JCEmailThread3.jpg" width="600px" height="" /></a>

* * *

# Informazione pubblica distorta

In questa sezione vorrei solo mostrare una frazione di molti articoli differenti (e altre stampe) che sono stati scritti su Arduino, che includono la sua storia e che raramente viene raccontata due volte nello stesso modo.

Leggetele a vostro piacimento e create le vostre opinioni e, ovviamente, fate domande!

## Giornalismo povero

È raro vedere un giornalismo ben documentato al giorno d'oggi. Gli articoli che seguono sono esempi eccellenti di quel postulato.

### Wired

In [un'intervista di Wired nel 2008](http://www.wired.com/2008/10/ff-openmanufacturing/){: target="_blank"}, Banzi spiega come ha creato Arduino in una settimana:

>I due hanno deciso di progettare la propria scheda, arruolando uno degli studenti di Banzi - David Mellis - per scrivere il linguaggio di programmazione. **In due giorni, Mellis creò il codice**; tre giorni dopo la scheda era completa. Lo chiamarono Arduino, prendendo spunto da un pub nelle vicinanze, e fu un successo immediato con gli studenti.

Questo articolo è stato scritto senza aver effettuato alcun controllo. Certamente non aiuta il fatto che l'intervistato non stia raccontando a loro le informazioni corrette.

### IEEE Spectrum

Riporto qui di seguito un [articolo 2011 IEEE Spectrum](http://spectrum.ieee.org/geek-life/hands-on/the-making-of-arduino){: target="_blank"}, intitolato “The Making of Arduino” (la creazione di Arduino).

Anche in questo caso, la storia è stata ripresa pari pari dall'intervistato. Non sono stato contattato prima che l'articolo venisse pubblicato, anche se sono stato menzionato. E dubito che qualcuno di IDII sia stato contattato.

Solo una delle tanti parti confuse della storia di Arduino viene riportata in questa citazione:

>Poiché lo scopo era quello di creare una piattaforma rapida e facilmente accessibile, sentivano che avrebbero fatto meglio ad aprire il progetto a quante più persone possibili, piuttosto che tenerlo chiuso.

Non è stato mai chiuso.

### Circuits Today

[Un articolo del 2014 dal Circuits Today](http://www.circuitstoday.com/story-and-history-of-development-of-arduino){: target="_blank"} ha un'apertura molto confusa:

>L'Interactive Design Institute [sic] ha avuto un contributo con una tesi sull'hardware per un progetto di cablaggio da parte di uno studente colombiano di nome Hernando Barragan. Il titolo della tesi era "Arduino-La rivoluzione dell'open hardware" ("Arduino - The Revolution of Open Hardware"). Sì, sembrava un po' diverso dalla solita tesi, ma nessuno avrebbe mai immaginato che avrebbe ritagliato una nicchia nel campo dell'elettronica.

>Un team di cinque sviluppatori hanno lavorato su questa tesi e quando la nuova piattaforma di cablaggio era completa, essi hanno contribuito per renderla più leggera, meno costosa, e a disposizione della community di open source.

Il titolo della mia tesi è ovviamente sbagliato. Non c'erano cinque "sviluppatori" che hanno lavorato sulla mia tesi. E il codice era sempre open source.

Anche in questo caso, non sono stato contattato per riferimento.


### Makezine

[In un'intervista del 2013 di Dale Dougherty con Massimo Banzi](http://makezine.com/2013/01/29/good-design-gets-out-of-the-way/){: target="_blank"}, la storia cambiò ancora una volta:

>Wiring era composta da una scheda costosa, del valore di circa $100, perché utilizzava un chip costoso. Non mi piaceva, e lo sviluppatore studente ed io non eravamo d'accordo.

In questa versione della storia di Massimo Banzi, Arduino ha origine da Wiring, ma è implicito che ero insistente sul fatto di avere una scheda costosa.

Per quanto riguarda il "disaccordo". Non ho mai avuto una discussione con Massimo Banzi sul fatto che la scheda fosse troppo costosa. Avrei desiderato aprire più discussioni su tali argomenti, come li ho avuti con altri consulenti e colleghi, poiché lo trovo molto arricchente. La cosa più vicina ad un disaccordo ha avuto luogo in seguito a una presentazione di successo di una tesi, in cui Massimo ha mostrato qualche strano comportamento nei miei confronti. Dato che lui era il mio relatore, io ero in svantaggio, ma chiesi a Massimo il motivo per cui si stava comportando male nei miei confronti, ma non ricevetti alcuna risposta. Mi sono sentito minacciato, ed è stato molto imbarazzante.

Il suo strano comportamento si estese a coloro che collaborarono con me successivamente su Wiring.

>Ho deciso che potremmo creare una versione di open source di Wiring, partendo da zero. Ho chiesto a Gianluca Martino [nessuno dei cinque collaboratori di Arduino] di aiutarmi a produrre i primi prototipi, le prime schede.

Ancora una volta Massimo implica che Wiring non era open source, mentre invece lo era. E, aggiunse, che avrebbero costruito un software da "zero", ma non lo fecero.

## Errori accademici

Capisco quanto sia facile coinvolgere le persone con una buona narrazione e storie avvincenti, ma gli accademici tengono a svolgere i propri compiti, e a verificare almeno i fatti che stanno dietro alle dichiarazioni infondate.

In questo libro, Making Futures: Marginal Notes on Innovation, Design, and Democracy Hardcover – October 31, 2014 by Pelle Ehn (Editor), Elisabet M. Nilsson (Editor), Richard Topgaard (Editor):

[Capitolo 8: How Deep is Your Love? On Open-Source Hardware](http://dspace.mah.se/bitstream/handle/2043/17985/MAKING-FUTURES-EHN-ET-AL-2014-CHAPTER-08.pdf?sequence=19&isAllowed=y){: target="_blank"} (David Cuartielles)

>Nel 2005, presso l'Interaction Design Institute Ivrea, abbiamo avuto la visione sulla creazione di una piccola piattaforma di prototipazione rivolto a progettisti, la quale potrebbe aiutarli a comprendere meglio la tecnologia.

La versione di David Cuartielles sulla storia di Arduino non include Wiring.

Questo libro è stato rilasciato capitolo dopo capitolo da: [http://dspace.mah.se/handle/2043/17985](http://dspace.mah.se/handle/2043/17985){: target="_blank"}


# Ulteriori link per la vostra verifica

Wiring come predecessore di Arduino:

* [http://ptgmedia.pearsoncmg.com/images/9780321906045/samplepages/9780321906045.pdf](http://ptgmedia.pearsoncmg.com/images/9780321906045/samplepages/9780321906045.pdf){: target="_blank"}

Intervista con Ben Fry e Casey Reas:

* [http://rhizome.org/editorial/2009/sep/23/interview-with-casey-reas-and-ben-fry/](http://rhizome.org/editorial/2009/sep/23/interview-with-casey-reas-and-ben-fry/){: target="_blank"}

Safari Books Online, Casey Reas, Getting Started with Processing, capitolo uno, Family Tree:

* [https://www.safaribooksonline.com/library/view/getting-started-with/9781449379827/ch01.html](https://www.safaribooksonline.com/library/view/getting-started-with/9781449379827/ch01.html){: target="_blank"}

Pagina sul progetto di Nicholas Zambetti Arduino:

* [http://www.zambetti.com/projects/arduino/](http://www.zambetti.com/projects/arduino/){: target="_blank"}

(Nicholas ha eseguito molte attività sia con Wiring che con Arduino)

## Articoli su Arduino vs. Arduino

**Wired Italy** - Cosa sta accadendo in Arduino?

[http://www.wired.it/gadget/computer/2015/02/12/arduino-nel-caos-situazione/](http://www.wired.it/gadget/computer/2015/02/12/arduino-nel-caos-situazione/){: target="_blank"}

**Repubblica Italy** - Massimo Banzi: "La ragione della guerra per Arduino"

[http://playground.blogautore.repubblica.it/2015/02/11/la-guerra-per-arduino-la-perla-hi-tech-italiana-nel-caos/](http://playground.blogautore.repubblica.it/2015/02/11/la-guerra-per-arduino-la-perla-hi-tech-italiana-nel-caos/){: target="_blank"}

**Makezine** - Massimo Banzi che lotta per Arduino

[http://makezine.com/2015/03/19/massimo-banzi-fighting-for-arduino/](http://makezine.com/2015/03/19/massimo-banzi-fighting-for-arduino/){: target="_blank"}

**Hackaday** - Federico Musto di Arduino SRL discute la situazione giuridica di Arduino

[http://hackaday.com/2015/07/23/hackaday-interviews-federico-musto-of-arduino-srl/](http://hackaday.com/2015/07/23/hackaday-interviews-federico-musto-of-arduino-srl/){: target="_blank"}

**Hackaday** - Federico Musto di Arduino SRL ci mostra nuovi prodotti e nuove direzioni

[http://hackaday.com/2016/01/04/new-products-and-new-directions-an-interview-with-federico-musto-of-arduino-srl/](http://hackaday.com/2016/01/04/new-products-and-new-directions-an-interview-with-federico-musto-of-arduino-srl/){: target="_blank"}

## Video

Massimo a Ted Talk -- candid (2012-08-06)

[https://www.youtube.com/watch?v=tZxY8_CNiCw](https://www.youtube.com/watch?v=tZxY8_CNiCw){: target="_blank"}

Questa è una visione candida di Massimo poco prima del suo show ad un TED Talk. Potete farvi la vostra opinione sulla maggior parte dei video, tuttavia, il commento più interessante, secondo me, è <a href="https://youtu.be/tZxY8_CNiCw?start=232" data-lity>at the end</a>, in cui egli afferma:

>... L'innovazione senza chiedere il permesso. Quindi, in un certo senso, Open Source consente  di essere innovativi senza dover chiedere il permesso.

* * *

# Grazie!

Grazie per dedicare del tempo a leggere questo articolo. Credo sia molto importante riconoscere correttamente le origini delle cose, non solo nel mondo accademico. Così come ho appreso da educatori fantastici, svolgere tutto questo in maniera corretta non solo arricchisce il proprio lavoro, ma consente di affermarsi in modo migliore, permettendo agli altri di indagare e osservare le origini delle idee. Forse essi troveranno altre alternative o migliorano quello che è stato fatto, imponendo le proprie idee.

Personalmente, osservare il raggio d'azione di quello che ho creato nel 2003 in molti contesti differenti, vedere quei comandi che hanno portato a idee e creazioni di vita delle persone di tutto il mondo, mi ha portato così tante soddisfazioni, sorprese, nuove domande, idee, consapevolezza e amicizie. Sono grato per tutto questo.

Credo che sia importante conoscere il passato per evitare di commettere gli stessi errori in futuro. A volte avrei voluto avere una possibilità per discutere di tutto questo in maniera diversa, per un motivo differente. Invece, molte volte mi sono imbattuto con giornalisti e gente comune compromessi nella loro indipendenza. In entrambi i casi hanno avuto un business diretto con Arduino, o semplicemente volevano evitare di sconvolgere Massimo Banzi. Oppure ci sono gli individui con una mente chiusa a seguito di una causa e che rifiutano di vedere o sentire qualsiasi cosa di diverso da quello in cui credono. E poi ci sono quelle persone che sono solo una parte della folla che riproduce tutto ciò che vien loro riprodotto. Per quegli altri, questo documento rappresenta un invito a fidarsi della propria curiosità, a mettere in discussione, a scavare più a fondo qualsiasi interesse che sia ritenuto importante per l'individuo o per il membro della comunità.

Ci vediamo presto,

Hernando.

* * *

# Index {#index}

* TOC
{:toc}


* * *

[^1]: La nozione di uno "sketch" nel contesto di programmi di scrittura ha origine da Processing e in precedenza da [Design by Numbers](http://www.maedastudio.com/1999/dbn/index.php){: target="_blank"} (DBN). È stato esteso da Wiring all'interno del contesto di prototipazione con l'elettronica o "sketch" con l'hardware.

[^2]: Programma di telecomunicazioni interattive presso l'Università di New York

[^3]: Pagina 34, ISBN-13: 978-0596510510 ISBN-10: 0596510519, [http://www.amazon.com/Making-Things-Talk-Practical-Connecting/dp/0596510519/ref=sr_1_2?ie=UTF8&sr=8-2&keywords=Making+Things+Talk](http://www.amazon.com/Making-Things-Talk-Practical-Connecting/dp/0596510519/ref=sr_1_2?ie=UTF8&sr=8-2&keywords=Making+Things+Talk){: target="_blank"}

[^4]: [https://groups.google.com/a/arduino.cc/d/msg/developers/HEKecd0qhS4/nADS2jW6DgAJ](https://groups.google.com/a/arduino.cc/d/msg/developers/HEKecd0qhS4/nADS2jW6DgAJ){: target="_blank"}
