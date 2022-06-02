---
layout: default
title: Arduinoの語られざる歴史
sidebar: sidebar-ja.html
---
[English](/) &middot; [italiano](it) &middot; [Deutsche](de) &middot; [Français](fr)

[Index](#index)

これは参考訳です。正確な理解には[原文](.)を読んでください。

# なぜこれを書いているのか

こんにちは。私はHernando Barragánです。

何年にもわたって、特に最近は例の[Arduino LLCとArduino S.R.L.の訴訟](http://hackaday.com/2015/03/12/arduino-v-arduino-part-ii/){: target="_blank"}のせいで、数多くの人々からWiringと、もちろんArduinoの歴史について質問をもらっています。

この[アメリカ合衆国連邦裁判所のウェブサイト](https://www.unitedstatescourts.org/federal/mad/167131/){: target="_blank"}を見せられました。ここでは、原告の主張の裏付けとして私の研究に触れられていますが、これは私の研究をとりまく事柄を歪めるものだと私は思います。

Arduinoの歴史は数多くの人々が語りますが、みんな違う事を言っています。Arduinoの起源について興味を持つ方々とより良い対話をするため、適切な参考文献を示しながら、Arduinoの歴史についてのいくつかの事実を解明して行きたいと思います。

同時に、よくある間違いや、紛らわしい情報、不適切な報道を指摘する事によって、私の役割や研究に対する誤解を修正して行きます。

最初に歴史をひとめぐりしてから、この何年かいつも聞かれてきた質問に答えて行きます。

* * *

# Wiringを作ったのはなぜなのか

2003年に、イタリアの[Interaction Design Institute Ivrea (IDII)](https://en.wikipedia.org/wiki/Interaction_Design_Institute_Ivrea){: target="_blank"}での修士論文のプロジェクトとして、Wiringを始めました。

この論文の目的は、電子工学の原理の部分を抽象化して隠してしまう事により、アーティストやデザイナーが電子回路を扱うのを簡単にし、彼らの本来の目的に集中できるようにする事でした。

この論文の全文は、ここからダウンロードできます：[http://people.interactionivrea.org/h.barragan/thesis/thesis_low_res.pdf](http://people.interactionivrea.org/h.barragan/thesis/thesis_low_res.pdf){: target="_blank"}

Massimo Banziと[Casey Reas](https://en.wikipedia.org/wiki/C.E.B._Reas){: target="_blank"}（[Processing](https://en.wikipedia.org/wiki/Processing_(programming_language)){: target="_blank"}で知られています）は、この論文での指導教官でした。

このプロジェクトは、IDIIで大きな注目を集め、2004年からIDIIが閉鎖される2005年までの間、[いくつかの](http://www.nastypixel.com/instantsoup){: target="_blank"}プロジェクトで使われました。

この論文により、IDIIで2004年に個人として唯一の表彰を受けて卒業しました。このあと、コロンビアの[Universidad de Los Andes](http://www.uniandes.edu.co/){: target="_blank"}に講師の職を得て、インタラクションデザインを教えるかたわら、Wiringの開発を続けました。

Wiringとは何なのか、Wiringがなぜ作られたのかは、この論文の要旨の項から読み取れるはずです。これが書かれたのが2003年である事、この前提は簡単には排除できないという事に注意してください。つぎのような言葉を聞いたことがあるでしょう：

> "... 現在の、電子回路およびプログラミングのプロトタイピングツールは、おおむね、エンジニアリング、ロボット工学、技術といった人々に向けて作られている。学ぶのが難しく、プログラミング言語は特定の技術分野以外では使いやすいとはとても言えない。 ..."

> "... コンピュータのプログラミングと、電子回路のプロトタイピングを教え、学ぶのにも使える。 ..."

> "WiringはProcessingを元にして作られた..."



Wiringの特徴は以下の通りです：

1.  Processing.orgのIDEを元にして作られ、ウィンドウズ、Mac OSX、Linuxで動作し、シンプルなエディタでプログラムないし「スケッチ」[^1]を作る事のできる、シンプルな統合開発環境（IDE）
2.  マイクロコントローラのための、シンプルな「言語」ないしプログラミング「フレームワーク」
3.  完全なツールチェーンを統合（ユーザには透過的）
4.  プログラムを簡単に書き込むためのブートローダー
5.  マイクロコントローラとの間でデータの送受信を行うシリアルモニター
6.  オープンソース・ソフトウェア
7.  Atmel社のマイクロコントローラを使用した、オープンソースなハードウェア設計
8.  コマンドおよびライブラリの詳しいオンラインリファレンス、プログラム例、チュートリアル、フォーラム、Wiringを使用したプロジェクトのショーケース

* * *

# なぜWiringは作られたのか？

この論文を読めば、私が経験した設計の過程を知る事ができるでしょう。私の研究の前提とした研究に対する考察および参照を、たくさん明記してあります。設計の過程を概観するため、いくつかの重要な点を以下に記します。

## プログラミング言語

プログラミング言語の命令がどこから来るか考えたことがありますか？

現在、Arduinoの利用者に最も知られ、スケッチを書く際に使われる、最も特色のある物は、私がWiring用のプログラミング言語として定めた、以下のような命令群です。

*   `pinMode()`
*   `digitalRead()`
*   `digitalWrite()`
*   `analogRead()`
*   `analogWrite()`
*   `delay()`
*   `millis()`
*   など...

マイクロコントローラのピンを番号として抽象化する事は、疑いなく、どんなハードウェアプラットフォームであったとしても、言語の実装を行う前に文法を定める事によって可能になった、重要な判断です。ArduinoおよびWiringのプログラミング言語の、すべての命令の名前と文法とは、学生に対するユーザテスト、観察、分析、調整とその繰り返しという、私が遂行した徹底した設計作業の結果です。

ハードウェアのプロトタイプを開発するのと平行して、プログラミング言語の開発も自然と進められました。プログラミング言語の仕様が固まり、洗練されたのは、ハードウェアのプロトタイプが完成するよりも前でした。

設計の過程の詳細に興味をお持ちの方は、上記の論文を読んでいただけば、たとえば最終的に採用しなかった命令の名前や文法についてもわかります。

## ハードウェア

設計者の視点で見ると、おそらく、これが最も取り組むのが難しい問題でした。様々なマイコンメーカーから評価ボードをもらったり、購入したりしました。

Wiringのハードウェア設計に関して、いくつかの鍵となる時期を紹介します。

### 試作1号

Wiringの最初の試作では、[Parallax](https://www.parallax.com/){: target="_blank"}のJavelin Stampを使いました。これはJavaのサブセットでプログラムするのですが、JavaはProcessingで使用していたので、これはとても自然な選択でした。 

問題点：論文の40ページ目に記した通り、コンパイルやリンク、ユーザーのプログラムのアップロードにParallaxの商用ツールを使用しなければならないことです。Wiringはオープンソースソフトウェアにしたかったので、Javelin Stampは選択肢から外れました。

<a href="/images/full/WiringPrototype1-JavelinStamp.jpg" data-lity><img alt="Wiringのプロトタイプ1号 - Javelin Stamp" src="/images/WiringPrototype1-JavelinStamp.jpg" width="600px" height="" /></a>
***Wiringのハードウェアの試作第1号に使った、Javelin Stampの写真***

次の試作では、コンパイル、リンク、ユーザープログラムの書き込みにオープンソースのツールを使えるマイクロコントローラーを選ぶことにしました。この事によって、とてもポピュラーなマイコン、MirochipのPICファミリは早々に除外されました。2003年頃の当時、Microchipはオープンソースのツールチェーンを持っていなかったのです。

### 試作2号

二番目のWiringハードウェアの試作機は、[Atmel](http://www.atmel.com/){: target="_blank"}のARMベースの[AT91R40008](http://www.atmel.com/devices/R40008.aspx){: target="_blank"}を選択しました。これは素晴らしい結果を残しました。最初のサンプルスケッチを開発し、コマンドに名前を付けるテストを始めました。例えば、現在の`digitalWrite()`は、`pinWrite()`という名前でした。

私が可能性を評価する間、デジタル入出力APIとシリアル通信APIのテストベッドとして、Atmel R40008を使っていました。Atmel R40008は、とてもパワフルなマイコンでしたが、手作業をするにはあまりにも面倒でした。基板に手ではんだづけすることは、ほぼ不可能だったからです。

この試作についての詳細は、論文の42ページ目を参照してください。

<a href="/images/full/WiringPrototype2-AtmelAT91R40008.jpg" data-lity><img alt="Wiringのプロトタイプ2号 - Atmel AT91R40008" src="/images/WiringPrototype2-AtmelAT91R40008.jpg" width="600px" height="" /></a>
***Wiringの試作2号に使った、Atmel AT91R40008の写真***

### 試作3号

これまでの試作を通じて学んだことは、試作3号に活かされました。マイコンを、そこそこパワフルで、特別なツールや基板上の追加部品を必要としない、工作に向いたものにダウンスケールすることにしました。

私はAtmel [ATmega128](http://www.atmel.com/devices/ATMEGA128.aspx){: target="_blank"}マイクロコントローラーを選択し、ATmega128用の特別なソケットが付いている、Atmel [STK500](http://www.atmel.com/tools/STK500.aspx){: target="_blank"}を購入しました。

<a href="/images/full/WiringPrototype3-AtmelATmega128.jpg" data-lity><img alt="Wiringのプロトタイプ3号 - Atmel STK500 with ATmega128" src="/images/WiringPrototype3-AtmelATmega128.jpg" width="600px" height="" /></a>
***ATmega128拡張付きの、Atmel STK500の写真***

STK500で行ったテストは、成功でした。そこで、私は[BDMICRO](http://www.bdmicro.com/){: target="_blank"}から、ATmega128がはんだづけされている[MAVRIC](http://www.bdmicro.com/mavric-ib/){: target="_blank"}ボードを購入しました。Brian DeanによるMAVRICボードの開発は、当時は無類のものでした。これが彼を、新しいプログラムをボードに手軽に書き込むソフトウェアツールの開発に駆り立てていました。これは今でもArduinoのソフトウェアで使われていて、「avrdude」と呼ばれています。

古くからあったCOMポートは、コンピューターから消えつつありました。ホストのコンピューターとマイコンボードとがUSBポートを使って通信を行うため、[FTDI](http://www.ftdichip.com/){: target="_blank"}チップを使う事にしました。Wiringの環境を動作させたいと考えていた、Windows、Mac OS X、Linuxのためのドライバを、FTDIは完備していたのです。

<a href="/images/full/BDMICRO-MAVRIC-II.jpg" data-lity><img alt="BDMICRO MAVRIC-II" src="/images/BDMICRO-MAVRIC-II.jpg" width="600px" height="" /></a>
***三番目のWiringのハードウェア試作に用いた、BDMICRO MAVRIC-IIの写真***

<a href="/images/full/FTDI-FT232BM.jpg" data-lity><img alt="FTDI FT232BM評価ボード" src="/images/FTDI-FT232BM.jpg" width="600px" height="" /></a>
***三番目のWiringのハードウェア試作に用いた、FTDI FT232BM評価ボードの写真***

FTDI評価ボードをMAVRICボードに接続して、三番目のWiring試作機としてテストをしました。

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringPrototype3-BDMICROandFTDI1.jpg" data-lity><img alt="Wiringのプロトタイプ3号 - BDMICRO and FTDI - 1" src="/images/WiringPrototype3-BDMICROandFTDI1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringPrototype3-BDMICROandFTDI2.jpg" data-lity><img alt="Wiringのプロトタイプ3号 - BDMICRO and FTDI - 2" src="/images/WiringPrototype3-BDMICROandFTDI2.jpg" width="300px" height="" /></a>
</span>
</div>
***BDMICRO MAVRIC-IIボードと、FTDI-FT232BMを使ってのテスト***

2004年の始め、MAVRICボードを使った試作品（試作3号）に基づき、Brian DeanとPascal Stangによる回路を参考にして、最初のWiringボードを作りました。このボードは、次の機能を備えていました。

*   ATmega128
*   シリアルとUSBの変換用に、FTDI232BM
*   ピンに接続された、オンボードのLED
*   電源と、シリアルRX、TXのLEDインジケーター

私は、[CadsoftのEagle PCB](http://www.cadsoftusa.com/){: target="_blank"}を回路と基板のデザインに使用しました。

<a href="/images/full/Wiring-schematic.png" data-lity><img alt="Wiringボードの回路図" src="/images/Wiring-schematic.png" width="600px" height="" /></a>
***Wiringボードの回路図***

<a href="/images/full/Wiring-pcb.png" data-lity><img alt="Wiringボードの基板図" src="/images/Wiring-pcb.png" width="600px" height="" /></a>
***Wiringボードの基板図***

三番目の試作機を使い、APIの最終バージョンをテストし、改良しました。ユーザーがこの開発環境を知るために最初にボード上で実行する、*今でも使われている*、LEDを点滅させるスケッチを含む、数多くのサンプルスケッチを追加しました。液晶（LCD）、シリアルポート通信、サーボモーターなどなど、そしてWiringをシリアル通信を使ってProcessingに接続するサンプルスケッチも開発しました。詳細については、論文の50ページ目に記してあります。

2004年の3月、25枚のWiring基板が、IDIIの費用負担のもと、[SERP](http://www.serp.it/){: target="_blank"}に発注され、製造されました。

私は、この25枚の基板を手はんだで組みたて、IDIIのクラスメイトによるユーザビリティテストを行いました。とてもエキサイティングな時間でした！

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBoard-Assembled.jpg" data-lity><img alt="Wiringの最初の基板" src="/images/WiringBoard-Assembled.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBoard-ShowingOff.jpg" data-lity><img alt="Wiringボードを見せている" src="/images/WiringBoard-ShowingOff.jpg" width="300px" height="" /></a></span>
</div>
<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WorkingWithFirstWiring-1.jpg" data-lity><img alt="最初のWiringボードを使っている" src="/images/WorkingWithFirstWiring-1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WorkingWithFirstWiring-2.jpg" data-lity><img alt="最初のWiringボードを使っている" src="/images/WorkingWithFirstWiring-2.jpg" width="300px" height="" /></a></span>
</div>
***最初のWiringボードの写真***

## 開発の継続

2004年にIDIIを卒業したあと、私はコロンビアに戻り、Universidad de Los Andesでインタラクションデザインをインストラクターとして教え始めました。Wiringの開発を継続していたことから、2004年の後期にフィジカルコンピューティングを教えるために、IDIIは100台のWiringボードを作ることを決断しました。IDIIの職員だった[Bill Verplank](http://www.billverplank.com/){: target="_blank"}はMassimo Banziに、コロンビアの私のクラスで使えるよう、私にボードを10枚送るように依頼しました。

2004年、職員であった[Yaniv Steiner](http://www.nastypixel.com/prototype/people/yaniv-steiner-2){: target="_blank"}、学生であったGiorgio OliveroとPaolo Sancisは、IDIIでWiringを使った[Instant Soup Project](http://www.nastypixel.com/instantsoup/website/cover/){: target="_blank"}というプロジェクトを始めました。

## 最初の大きな成功ーStrangely Familiar

2004年の秋、Wiringは、IDIIでフィジカルコンピューティングを教えるため、Strangely Familiarと呼ばれるプロジェクトを通じて使用されました。22名の学生が参加し、11個のプロジェクトが成功しました。この4週間のプロジェクトを実施したのは、次の4名の職員です。

*   Massimo Banzi
*   Heather Martin
*   Yaniv Steiner
*   Reto Wettach

学生と教授、教員双方にとって、決定的な成功であることが分かりました。Strangely Familiarは、Wiringの、インタラクションデザインにとってイノベーティブなプラットフォームである可能性を示しました。

2004年の12月16日、Bill Verplankは次のメールを私に送ってくれました。

>[あのプロジェクト]は素晴らしかった。皆が動かすことに成功した。プロジェクトのうち5つがモーターを使っていた！最も素晴らしかったのは、MITの卒業生2名（建築および数学）による、Proce55ingで輪郭を描くと、Wiringで駆動されるホイールとモーターで形を感じ取れる物だった。

>Wiringボードを使った[こと]が、成功の要素の一つであることは明確だ。

これが、コースの概略です。

* [http://wiring.org.co/exhibition/images/brief.pdf](http://wiring.org.co/exhibition/images/brief.pdf){: target="_blank"}

これが、プロジェクトの結果のブックレットです。

* [http://wiring.org.co/exhibition/images/book01.pdf](http://wiring.org.co/exhibition/images/book01.pdf){: target="_blank"}

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TugTug-Testing.jpg" data-lity><img alt="Tug Tugの開発（Haiyan Zhang）" src="/images/TugTug-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TugTug.jpg" data-lity><img alt="Tug Tug" src="/images/TugTug.jpg" width="300px" height="" /></a></span>
</div>
***Haiyan ZhangによるTug Tugフォン（Aram Armstrongが協力）***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/CommitmentRadio-Testing.jpg" data-lity><img alt="Commitment Radioの開発" src="/images/CommitmentRadio-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/CommitmentRadio.jpg" data-lity><img alt="Commitment Radio" src="/images/CommitmentRadio.jpg" width="300px" height="" /></a></span>
</div>
***David ChiuおよびAlexandra Deschamps-Sonsinoによる[Commitment Radio](http://www.d4v3.net/resume/radios.php){: target="_blank"}***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/SpeakOut-Testing.jpg" data-lity><img alt="Speak Outの開発" src="/images/SpeakOut-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/SpeakOut.jpg" data-lity><img alt="Speak Out" src="/images/SpeakOut.jpg" width="300px" height="" /></a></span>
</div>
***Tristam SparksおよびAndreea Cherlaruによる[Speak Out](http://www.andreeachelaru.com/ThesisOther.htm){: target="_blank"}（Ana Camila Amorimが協力）***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/FeelTheMusicI-Testing.jpg" data-lity><img alt="Feel the Music Iの開発" src="/images/FeelTheMusicI-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/FeelTheMusicI.jpg" data-lity><img alt="Feel the Music I" src="/images/FeelTheMusicI.jpg" width="300px" height="" /></a></span>
</div>
***James TichenorおよびDavid A. MellisによるFeel the Music I***

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TheAmazingAllBandRadio-Testing.jpg" data-lity><img alt="The Amazing All Band Radioの開発" src="/images/TheAmazingAllBandRadio-Testing.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/TheAmazingAllBandRadio.jpg" data-lity><img alt="The Amazing All Band Radio" src="/images/TheAmazingAllBandRadio.jpg" width="300px" height="" /></a></span>
</div>
***Oren HorevおよびMyriel Milicevicによる[The Amazing All Band Radio](http://neighbourhoodsatellites.com/project/the-amazing-all-band-radio/){: target="_blank"}（Marcos Weskampが協力）***

## 他の国

2005年5月、私はアメリカの[Advanced Circuits](http://www.4pcb.com/){: target="_blank"}に、IDIIの外では始めての製造である200枚の基板を注文し、コロンビアで組みたてをしました。私は、学校や大学などにボードを売り、発送することをはじめました。そして、2005年末、Wiringは世界中で使われるようになりました。

<a href="/images/full/WiringsReachBy2005.png" data-lity><img alt="2005年までのWiringの普及" src="/images/WiringsReachBy2005.png" width="600px" height="" /></a>
***2005年までのWiringの普及。作：[Collin Reisdorf](https://twitter.com/nillocr){: target="_blank"}***

* * *

# Arduinoはいつはじまったのか、なぜArduinoチームのメンバーでないのか

## Arduinoの形成

IDIIがはじめてWiringボードを製造したとき、おそらくコストは50米ドルくらいだったでしょう。（私は参加していなかったので、実際の額を知りません。しかし、私はボードをコロンビアから60米ドルくらいで販売していました。）これは、同時あったボードからすれば、かなりの低価格化でしたが、それでもなお多くの人々にとっては相当な価格だったでしょう。

2005年、Massimo BanziとDavid Mellis（当時はIDIIの学生でした）そしてDavid Cuartiellesが、より安価なATmega8マイクロコントローラーのサポートをWiringに加えました。そして、彼らはWiringのソースコードをフォーク（またはコピー）して、Arduinoという別のプロジェクトとして活動を始めました。

別のプロジェクトを作る必要など無かったはずです。私は喜んでを手伝い、ATmega8や他のマイクロコントローラーをサポートするための開発を行ったでしょう。私には、そうする考えも実際にありました。

<a href="/images/full/FuturePlansForWiring.png" data-lity><img alt="Wiringの将来計画" src="/images/FuturePlansForWiring.png" width="600px" height="" /></a>
***Wiringに関する計画を記したノートが写っている写真がいくつかあります。Karmen Franinovic（2002年から2004年までIDIIの学生）が、2004年3月にランプのために引っ張りセンサをテストしているところ。***

WiringとArduinoは、IDIIの学生でDavid Mellisと同じクラスだった[Nicholas Zambetti](http://www.zambetti.com/projects/arduino/){: target="_blank"}によって行われた初期の開発を共有しています。短い間、NicholasはArduinoチームのメンバになるかを考えていました。

同じ頃、Gianluca Martino（彼は、イブレアにあって最初のWiringボードを作ったプリント基板工場、SERPのコンサルタントでした。）が、製造とハードウェアの開発を手伝うためにArduinoチームに加わりました。そして、彼らのボードのコストを下げるために、GianlucaはDavid Cuartiellesの手伝いと共に、ATmega8を使った低価格なハードウェアを開発しました。

<a href="/images/full/ArduinoPrototype1.jpg" data-lity><img alt="Arduinoの最初のプロトタイプ：Wiring Lite" src="/images/ArduinoPrototype1.jpg" width="600px" height="" /></a>
***どうやら、これがWiring Liteとあだ名を付けられた[最初の「Arduino」のプロトタイプ](https://www.flickr.com/photos/mbanzi/172472136/in/album-72157594173657338/){: target="_blank"}らしい。私はMassimo Banziがこれをデザインしたと思うが、自信はない。***

<a href="/images/full/ArduinoExtremeV2.jpg" data-lity><img alt="Arduino Extreme v2" src="/images/ArduinoExtremeV2.jpg" width="600px" height="" /></a>
***[Arduino Extreme v2](https://www.flickr.com/photos/mbanzi/172471940/in/album-72157594173657338/){: target="_blank"} 「2番目に製造されたArduino USBボード。これはGianluca Martinoによる巧みな仕事だ。」***

Tom Igoe（NYUのITP職員だった[^2]）は、Massimo BanziによってワークショップのためにIDIIに招かれ、Arduinoチームの一員になった。

今日に至るまで、なぜArduinoチームがWiringからコードをフォーク（分岐）させたのか正確なところは分からない。なぜ私たちは一緒にやってこなかったのかと当惑している。だから、質問に答えると、私はArduinoチームの一員にならないかと尋ねられたことは一度も無い。

Arduinoチームがコードをフォークしたことによって私は困惑させられたが、Wiringの開発は続けた。そして、私や協力者によるWiringにもたらされた概ね全ての改良は、Arduinoのソースコードにマージ（取り込み）された。私は、自分の成果を彼らが取っていき、冗長であることや努力の写しを作るという資源の無駄遣いに当惑することを無視しようと試みました。

2005年の末まで、私はCasey Reasと共に、「[Processing: A Programming Handbook for Visual Artists and Designers](http://www.amazon.com/Processing-Programming-Handbook-Designers-Artists/dp/0262182629){: target="_blank"}」という本の章に取り組んでいました。[この章](https://processing.org/tutorials/electronics/){: target="_blank"}は、アートにおけるエレクトロニクスに関する歴史を簡単に記したものです。これにはWiringやArduinoをProcessingと繋ぐサンプルスケッチが含まれています。私は、このサンプルスケッチをWiringとArduinoの両方に向けて用意し、両方で動くことを確認しました。

この本は、2013年に第二版になり、この章はCaseyと私によって見直されました。そして、[この拡張](https://processing.org/tutorials/electronics/){: target="_blank"}は2014年から現在に至るまでオンラインにあります。

* * *

# Arduinoチームは、Arduinoの前にWiringと一緒に仕事をしたのか

はい、彼らはそれぞれ、Arduinoを作る前にWiringを経験しています。

Massimo Banziは2004年からWiringを使って授業をしていました。

<a href="/images/full/WiringBoardsWithMassimo.jpg" data-lity><img alt="Massimo BanziはWiringを使って授業をしていた" src="/images/WiringBoardsWithMassimo.jpg" width="600px" height="" /></a>
***2004年、IDIIでWiringを使ってインタラクションデザインを教えるMassimo Banzi***

2004年から2005年の間、David MellisはIDIIの学生でした。

<a href="/images/full/DavidMellisAtIDII.jpg" data-lity><img alt="IDIIでのDavid Mellis" src="/images/DavidMellisAtIDII.jpg" width="600px" height="" /></a>
***2004年、David MellisがWiringでフィジカルコンピューティングを学んでいるぼやけた写真***

2005年1月、モーターの制御とBluetooth接続のWiring向け拡張基板を開発するために、IDIIはDavid Cuartiellesを雇いました。

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringBluetoothPlugin.jpg" data-lity><img alt="Wiring Bluetoothプラグイン" src="/images/WiringBluetoothPlugin.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/WiringMotorControllerPlugin.jpg" data-lity><img alt="Wiringモーターコントローラープラグイン" src="/images/WiringMotorControllerPlugin.jpg" width="300px" height="" /></a></span>
</div>
***David Cuartiellesと彼の兄弟によってIDIIで開発された2種類の拡張基板。左はBluetoothシールド、右はモーターコントローラーシールド***

私はWiringの初期バージョンを、2003年にニューヨークのITPを尋ねたときにTom Igoeに見せました。そのときTomは、Parallax Basic StampやBasic Xのような高価なプラットフォームの代替として、ITPでPICマイクロコントローラーをを使っていました。このため、彼はAtmelのハードウェアの経験がありませんでした。この訪問の際のTomの助言のひとつは、「これをPICのためにやりなさい、なぜなら私たちはこれをここで使っているから。」でした。

数年後の2007年、Tom Igoeは、O'Reillyの「Making Things Talk」[^3]というWiringとArduinoの使い方の本を出版しました。

Gianluca Martinoは、SERP（最初の25枚のWiringプリント基板を作った工場）で働いていましたが、後に彼はSmart Projects SRLを起業しました。（2004年4月1日）Smart Projectsは、2004年にフィジカルコンピューティングを教えるための最初のロット、100枚のWiring基板をIDIIのために作っています。

* * *

# Programma2003とは何か、私やWiringとの関わり

Programma2003は、[Microchip](http://www.microchip.com/){: target="_blank"}のPICマイクロコントローラーのボードで、2003年にMassimo Banziによって開発されました。2002年の冬に、BasicXを使ってフィジカルコンピューティングを教えてみて、Massimoは、2003年にPICを使ったボードを作ることに決めました。PICマイクロコントローラーの問題は、C言語のようなプログラミング言語を使うときに、オープンソースのツールチェーンが当時は存在しなかった事です。

<a href="/images/full/Programma2003.jpg" data-lity><img alt="Programma2003" src="/images/Programma2003.jpg" width="600px" height="" /></a>
***2003年、Massimo Banziによって設計された[Programma2003](https://www.flickr.com/photos/mbanzi/8610131426/in/album-72157633136997919/){: target="_blank"}ボード***

オープンソースのツールチェーンが存在しないため、Massimoは[JAL](http://justanotherlanguage.org/){: target="_blank"}（Just Another Language）という環境を使ってPICマイクロコントローラーをプログラムする事を決定しました。JALは、Wouter van Ooijenによって作られたものです。

これは、JALコンパイラ、リンカ、アップローダー、ブートローダー、そしてサンプルから成ります。しかしながら、これらのソフトウェアはWindowsでのみ動きました。

JALを手軽に使えるように、MassimoはJALの基本的なサンプルを使い、いくつかをシンプルにしてIDIIでの配布パッケージにしていました。

しかしながら、2003年当時、IDIIの多くの学生はMacを使っていました。そのため、Massimoのためのボランティアとして、Mac OSX向けのちょっとしたシンプルな環境を作りました。こうして、Macを使う学生達も使う事ができるようになりました。

私の論文では、Programma2003は、推し進めていくのはうまくいかないと指摘しています。市場には、網羅的なツールが既に存在していたのです。主な問題は次の通りです：

*   プログラミング言語は、他の用途では全く使いづらい（例えば、JALでパソコンをプログラムする事はできません）
*   不可解な構文とハードウェア設計により、教えたり学んだりしているときに目的を見失いそうになる。
*   ボードには、電源のLEDが付いていない。（設計の欠陥）

電源が入っているのか入っていないのか分からない（学習用の環境では、もどかしく危険ですらある）上に、コンピューターにつなぐには、高価なRS-232C〜USB変換機を別途購入する必要がありました。

MassimoのProgramma2003プロジェクトを手伝うため、私は、ネットワークに繋がったコンピューターとマイクロコントローラーの間をシリアル通信で接続する、私がProgramma2003インターフェースと呼ぶ物を書きました。これにより、IDIIのプロトタイプ用ツール群を発展させることができました。学生達はAdobe Flash（以前はMacromediaでした）などのソフトウェアをマイクロコントローラーと通信させることができるようになりました。

<a href="/images/full/Programma2003InterfaceCode.jpg" data-lity><img alt="Programma2003 Interfaceのプログラム" src="/images/Programma2003InterfaceCode.jpg" width="" height="400px" /></a>
***Programma2003インターフェースのプログラム***

* * *

# なぜArduinoはWiringをもっと認めてこなかったのですか？

分かりません。

Arduino.ccのウェブサイトにおけるWiringへの言及は、少しずつ改善されているものの、WiringがProgramma2003を元にしているかのように見せようとしています。

<a href="/images/full/ArduinoCCCredits-2016-02-23.jpg" data-lity><img alt="Arduino.ccのクレジットのページの一部分 - 2016-02-23" src="/images/ArduinoCCCredits-2016-02-23.jpg" width="600px" height="" /></a>
***[https://www.arduino.cc/en/Main/Credits](https://www.arduino.cc/en/Main/Credits){: target="_blank"}に記されている、Arduinoの歴史Arduino.cc版***

このMassimo BanziによるFlickrフォトアルバムは、より混乱をもたらします。

[https://www.flickr.com/photos/mbanzi/albums/72157633136997919/with/8610131426/](https://www.flickr.com/photos/mbanzi/albums/72157633136997919/with/8610131426/){: target="_blank"}

このアルバムは、「Teaching: IDII 2004 Strangely Familiar」と名前が付いています。Strangely Familiarは、Wiringを使って行われました。（以下参照）この写真アルバムでは、あたかもProgramma2003をクラスで使ったように見えますが、実際は全く使っていません。Wiringボードがアルバムに無いのは、奇妙なことです。しかしながら、[一枚だけWiringボードの写真](https://www.flickr.com/photos/mbanzi/8609019055){: target="_blank"}がありました。

過去、Wiringへの言及がとても少なかったことは秘密でもなんでもありませんでした。2013年に遡れば、MITで行われた[Open Hardware Summit](http://2013.oshwa.org/schedule/){: target="_blank"}のパネル「Implications of Open Source Business: Forking and Attribution」でDavid Mellisは、はじめて、ArduinoチームはWiringへの言及を十分に行ってこなかった旨を認めました。残念ながら彼は、なぜそうしなかったのかについて語りませんでした。

* * *

# 原告と被告

私はArduinoに関して起きた様々なことについて、今までずっと沈黙を通してきました。でもあの人達が私の成果を、自分がやったと偽っているのを見ると、過去のことを話す必要があると感じます。

たとえば、現在起きているArduino LLCとArduino S.R.L.の訴訟についてとりあげると、原告の[主張](https://www.unitedstatescourts.org/federal/mad/167131/1-0.html){: target="_blank"}にはこんなことが書かれています。

>34\. BanziはProgramma2003開発プラットフォームの開発者であり、多くのARDUINOブランド製品の先駆者です。See: [http://sourceforge.net/projects/programma2003/](http://sourceforge.net/projects/programma2003/){: target="_blank"} BanziはArduinoの着想の元となったWiring開発プラットフォームを作ったHernando Barraganの修士論文のアドバイザーでした。

私の見解ではこの主張には間違いがあります。

1.  Programma2003は開発プラットフォームでなく単なる基板でした。原告によって開発されたこの基板用のソフトウェアは存在しません。
2.  リンク先は空っぽです。Sourceforgeのリポジトリにはファイルがありません。なぜ空のリポジトリを証拠として示しているのでしょうか。
3.  Banziが私の論文のアドバイザーであったという事実は、彼がWiringに関してなんらかの大きな貢献をしたという印象を与えてしまうため、私にとっては、控えめに言っても読むのはいらいらすることです。

さらに

>39\. 創設者達は、IDIIの生徒であるNicholas Zambettiの協力と共に、Wiringの開発プロジェクトに取って代わる開発プラットフォームとマイクロコントローラー基板（"Boards"）の開発に着手し、開発を行いました。BanziはそのプロジェクトをARDUINOプロジェクトと名付けました。

私はその「創設者達」に質問があります。

* なぜ「Wiringの開発プロジェクト」は取って代わられる必要があったのでしょうか。
* なぜその開発者にあなた方と一緒にやらないか聞かなかったのでしょうか。
* 元の名前が好きではなかったですか。（最終的にBanziがプロジェクトに名前を付けた。）

そういったことは今でも繰り返し起こりうることだと思いますが、私の考えでは、生徒の成果をそんな風にすることは、学問の世界において倫理に反する正しくない事だと思います。よりによって教育者の立場にある者が生徒の成果を利用するべきではありません。この「創設者達」が私の成果を自分達の成果だと語ったことで、私は今でもある意味で汚された感じがしています。

オープンソースのソフトウエアやハードウエアのモデルや哲学、議論、そして作者の費やした何千時間が、利用され、別の「新しい」何かだとか「着想を得た」ものとしてブランディングされて世の中に出て行くことは、合法的かもしれませんが正しいことでしょうか。

* * *

# 誤解させる情報の継続

誰かが言いました：

>「もし私たちが事実をとても明らかにしなかったら、人々はそれぞれ勝手な結論を導き出すだろう。そして、私たちが言っていないことも事実にされてしまうだろう」[^4]

これは私にとって、普遍的に正しく思えます。人々をミスリードするには、真実を少しだけ手直しするだけで、皆の結論をコントロールすることができます。

以下は、誤解させる情報の主な事例です。

## 不名誉な図解

<a href="/images/full/InteractionIvreaDiagram.jpg" data-lity><img alt="Interaction Ivrea (Weird) Diagram" src="/images/InteractionIvreaDiagram.jpg" width="600px" height="" /></a>
***[http://blog.experientia.com/uploads/2013/10/Interaction_Ivrea_arduino.pdf](http://blog.experientia.com/uploads/2013/10/Interaction_Ivrea_arduino.pdf){: target="_blank"}***

この図は、IDIIにおけるプロトタイピングツール開発の概要を伝えるために描かれたものです。これはGiorgio Oliveroによって、2005年に学校から提供されたコンテンツを使い、2006年に公開されました。

赤い固まりの中に記されているプロジェクトは、Wiringで作られたにも関わらず、Arduinoがまだ影も形も無かったのにも関わらず、Arduinoに関連づけて記されています。

プロジェクトの作者のうち数人が、この誤りについて、なぜ彼らのプロジェクトがArduinoに関連付けられているのか尋ねましたが、何も回答を得ていません。

公開文章に訂正は加えられていませんが、私は問い合わせをしてくれた学生達の支援に感謝しなければなりません。

## Arduinoドキュメンタリー

2010年のよく知られたメディアに、[The Arduino Documentary](https://vimeo.com/18539129){: target="_blank"}（脚本、監督：Raúl Alaejos、Rodrigo Calvo）が、あります。

特に2016年に観ると、これはとても興味深いです。とりわけ、このように多彩な歴史を持つプロジェクトのドキュメンタリーを作ろうというアイデアはとても良いと思います。

これらは、興味深い矛盾が示されている部分です。：

<a href="http://vimeo.com/18539129?#t=1m45s" data-lity>1:45</a> - 「私たちは、皆が参加し、助け、貢献できるよう、オープンソースにしたかった。」これでは、Wiringがソース非公開だったみたいです。WiringはProcessingを基に開発をし、Processingは全てのライブラリもGPLでオープンソースでした。ですので、Wiringも、そしてそれ故にArduinoもオープンソースでなければなりません。ソース非公開にするという選択肢はありませんでした。プロジェクトのシンプルさの本質である言語について、何も変更は加えられていませんから、彼らがソフトウェアを簡単にしたというほのめかしはミスリードです。

<a href="http://vimeo.com/18539129?#t=3m20s" data-lity>3:20</a> - この文章でさきほど記したように、David Cuartiellesは2005年に2種類の拡張基板を設計するためにIDIIに雇われましたので、既にWiringのことを知っていました。David Mellisは、2004年にIDIIの学生としてフィジカルコンピューティングをWiringを使って学びました。面白いことに、Gianlucaは（彼は単なる製造の請負人ではなく）基板を自分で設計することができる人として参加したのであって、彼は「Arduinoチーム」の一員でした。

<a href="http://vimeo.com/18539129?#t=8m53s" data-lity>8:53</a> - 2015年7月に、David CuartiellesはマドリードのMedia Labで、こう発言しています：「Arduinoは、先週終えたばかりのプロジェクトだ。私はIvreaのテクニカルディレクターにこう話した：私たちが無償で提供したら素晴らしくないか？彼は言った「無償で？」と。そうだ！」Davidは、「先週」終えたプロジェクトの著者として、IDIIの「テクニカルディレクター」に無償での申し出をしたという印象を与えている。

<a href="http://vimeo.com/18539129?#t=18m56s" data-lity>18:56</a> - Massimo Banzi：

>最初に、私たちにとって特別な事情がありました。学校が閉鎖されることが分かっていたので、私たちは、ある日弁護士が現れ、「ここにある全てのものは箱にしまって、忘れて下さい。」と言うのを恐れていました。それで私たちは考えました。「オッケー、私たちがこれを公開してしまえば学校が閉鎖されても残るだろう。」と。これが第一歩でした。

これは重大です。Arduinoをオープンソースにしたことを、学校の閉鎖によるものだと歪めて伝えています。こんな疑問があります：なぜ弁護士が他のオープンソースプロジェクトを「箱に入れろ」と言うんでしょう？子供っぽいですね。問題は、人々がこれを事実だととらえ、チームが世の中の人々のためにArduinoをオープンソースにしたと考えることです。

* * *

# その他の寄与の無視

Arduinoチームは、彼らの成功に寄与した重要な人々を認識するのに失敗しているように見うけられます。

2013年10月、Jan-Christoph Zoels（元IDII教職員）は、IDIIコミュニティのメーリングリストに、Core77に載った[Intel-Arduino news on Wired UK](http://www.wired.co.uk/news/archive/2013-10/03/intel-arduino-galileo){: target="_blank"}:という記事についてメッセージを書きました。

>IntelがInteraction Ivreaの独創に言及しているとは、誇らしい。

>そして、良い投資もした：

>Arduinoの開発は、Interaction Design Institute Ivreaで約25万ユーロの資金提供と共に始まり、行われたんだ。Interaction IvreaがDomusに統合されて終わる前の2005年に、Arduinoがオープンソースとして残したことも良い判断だった。

Massimo Banziの返事はこうです：

>私はIvreaからArduinoに対する資金提供を受けたことがないことを指摘したい（学校の最後の年に50個を買って貰ったことは、さておき。）

>25万ユーロとは、ばかげてる…

>この記事は撤回されるべきだ。

>JC、残念だが君には何もできることがない。君は参加していないことについて賞賛を得ることはできないんだ。

<div>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/JCEmailThread1.jpg" data-lity><img alt="Celebration Email Thread Posting" src="/images/JCEmailThread1.jpg" width="300px" height="" /></a></span>
<span style="overflow: hidden; display: inline-block;">
<a href="/images/full/JCEmailThread2.jpg" data-lity><img alt="Celebration Email Thread Response" src="/images/JCEmailThread2.jpg" width="300px" height="" /></a></span>
</div>

素晴らしい、さておき、これを見かけた数日後に同じメールのスレッドで：

<a href="/images/full/JCEmailThread3.jpg" data-lity><img alt="Celebration Email Thread Follow-up" src="/images/JCEmailThread3.jpg" width="600px" height="" /></a>

* * *

# 歪められた公開情報

このセクションでは、なぜか毎回異なるように語られる、Arduinoの歴史についての記事（と報道）からの引用を示したいと思います。

ゆっくり読んでいただき、そして自分の意見を持って、是非疑問を投げかけてください。

## お粗末なジャーナリズム

最近では十分に調査してある記事に出会うことは少なくなっています。ここで示すのはまさにその例です。

### Wired

[2008 Wired interview](http://www.wired.com/2008/10/ff-openmanufacturing/){: target="_blank"}でBanziはArduinoをどんな風に週末のうちにやったのかを説明しています。

>その2人は自分達の基板を設計をすることにし、Banziの学生であるDavid Mellisにそれのためのプログラミング言語を作るよう協力を求めました。 **Mellisは2日のうちにコードを書き上げ**、次の3日のうちに基板が完成しました。近くのパブに行った帰り、それをArduinoと呼び、それはすぐに学生達にヒットしました。

この記事は事実の確認無しに書かれています。インタビューを受けた人が正しい情報を言っていないのは救いようがありません。

### IEEE Spectrum

こちらは「The Making of Arduino」というタイトルの[2011 IEEE Spectrumの記事](http://spectrum.ieee.org/geek-life/hands-on/the-making-of-arduino){: target="_blank"}です。

またもやインタビューを受けた人の言葉をうのみにして歴史が描かれています。私のことが言及されているのに、この記事が公開される前に私に対する問い合わせはありませんでした。IDIIの誰かに問い合わせがあったかどうかについても疑問です。

Arduinoの歴史に関するの多くの混乱した部分の1つがこの引用に見て取れます。

> 手っ取り早く、簡単にアクセスできるプラットフォームにすることが目的だったので、彼らはそのプロジェクトをソースコード非公開にするのではなく、できるだけ多くの人にオープンにするべきだと感じた。

そもそも一度もソースコード非公開にされていません。

### Circuits Today

[2014年のCircuits Todayの記事](http://www.circuitstoday.com/story-and-history-of-development-of-arduino){: target="_blank"}の始まりは混乱をきたしています。

>Hernando Barraganというコロンビア人の学生によるハードウェアの論文が配線図に貢献したのは、Interactive Design Institute [sic]でのことだった。論文のタイトルは"Arduino–La rivoluzione dell'open hardware" ("Arduino - オープンハードウェアの革命")。そう、これは一般的な論文としては少し変わっているが、これがエレクトロニクスのひとつのニッチな分野を型づくることになるとはだれも思わなかっただろう。

>5人の開発者がこの論文に取り組み、新しい配線プラットフォームが完成した時、彼らはそれをより軽く、安く、オープンソースのコミュニティーが入手可能なものにしていた。

言うまでもなく私の論文のタイトルはそれではありません。5人の「開発者」は私の論文には関わりませんでした。コードは常にオープンソースでした。

そしてやはり私への照会のための問い合わせはありませんでした。


### Makezine

[Dale DoughertyとMassimo Banziの2013年のインタビュー](http://makezine.com/2013/01/29/good-design-gets-out-of-the-way/){: target="_blank"}で、またもや話が変わっています。

>高額なチップを使っているため、Wiringの基板は100ドル程度と高額でした。私はそれが好きではなかったし、その開発者である学生と私は意見が異なりました。

Massimo Banziのこの話の中では、ArduinoはWiringを元にしていますが、しかしながら私が高額な基板に固執していたと暗に言わんとしています。

「意見が異なった」という点について言うなら、私は一度もMassimo Banziと基板が高額すぎるという議論をしたことがありません。できることなら私は、他のアドバイザーと議論をしてとても意味があったように、彼とも、もっとそういったことについての議論をしたかったです。意見が異なるという点で最も近いことといえば、成功裏に終わった論文発表会の後に、Massimoが私に対しておかしな態度をとったことです。彼は私のアドバイザーであるため、私の立場は不利でしたが、Massimoになぜ私に対してひどく振る舞うのか聞いたのですが返事はありませんでした。私は脅威を感じ、とても困りました。

その後、彼のおかしな態度はWiringに協力してくれた人達にも向けられました。

> 私はオープンソース版のWiringを一から作れると考えました。Gianluca Martino（現在は5人のArduinoパートナーのひとり）に最初のプロトタイプ、つまり最初の基板を製造してくれるように依頼しました。

再度ここで、Massimoは、Wiringが実際にはオープンソースだったのにもかかわらず、そうではなかったと暗に言おうとしています。また、彼らがソフトウェアを一から作ろうとしたとのことですが、実際はそうではありません。

## 学術的な誤り

巧みな作り話によって、いかに容易に人がその気になってしまうかということを私は理解していますが、学問の世界では、根も葉もない話に対して少なくとも裏をとるべきでしょう。

Making Futures: Marginal Notes on Innovation, Design, and Democracy Hardcover – October 31, 2014 by Pelle Ehn (Editor), Elisabet M. Nilsson (Editor), Richard Topgaard (Editor) --- この書籍からの引用：

[Chapter 8: How Deep is Your Love? On Open-Source Hardware](http://dspace.mah.se/bitstream/handle/2043/17985/MAKING-FUTURES-EHN-ET-AL-2014-CHAPTER-08.pdf?sequence=19&isAllowed=y){: target="_blank"} (David Cuartielles)

>2005年、Interaction Design Institute Ivreaで、我々は、デザイナー向けのちょっとしたプロトタイピングプラットフォームをつくることで、彼らが技術に対する理解を深めるだろうというビジョンを持っていました。

このDavid Cuartielles版のArduinoの歴史においては、Wiringは触れられてさえいません。

この本はチャプター毎にクリエイティブ・コモンズ[http://dspace.mah.se/handle/2043/17985](http://dspace.mah.se/handle/2043/17985){: target="_blank"}の元で公開されています。


# 精査のためのリンク集

Wiring as predecessor to Arduino:

* [http://ptgmedia.pearsoncmg.com/images/9780321906045/samplepages/9780321906045.pdf](http://ptgmedia.pearsoncmg.com/images/9780321906045/samplepages/9780321906045.pdf){: target="_blank"}

Interview with Ben Fry and Casey Reas:

* [http://rhizome.org/editorial/2009/sep/23/interview-with-casey-reas-and-ben-fry/](http://rhizome.org/editorial/2009/sep/23/interview-with-casey-reas-and-ben-fry/){: target="_blank"}

Safari Books Online, Casey Reas, Getting Started with Processing, Chapter One, Family Tree:

* [https://www.safaribooksonline.com/library/view/getting-started-with/9781449379827/ch01.html](https://www.safaribooksonline.com/library/view/getting-started-with/9781449379827/ch01.html){: target="_blank"}

Nicholas Zambetti Arduino Project Page:

* [http://www.zambetti.com/projects/arduino/](http://www.zambetti.com/projects/arduino/){: target="_blank"}

(Nicholas did a lot of work with both Wiring and Arduino)

## 「Arduino対Arduino」に関する記事

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

## ビデオ

Massimo going to Ted Talk -- candid (2012-08-06)

[https://www.youtube.com/watch?v=tZxY8_CNiCw](https://www.youtube.com/watch?v=tZxY8_CNiCw){: target="_blank"}

これには、TED Talkの話す直前の、Massimoの率直な姿が映し出されています。ビデオの感想は人それぞれでしょうが、私にとって最も興味深いコメントは <a href="https://youtu.be/tZxY8_CNiCw?start=232" data-lity>最後</a>で彼がこうコメントしていることでした：

>... 許可を求めないイノベーション。ある意味で、オープンソースは、あなたが許可を求めずに革新的であることを可能にします。

* * *

# ありがとう！

この文章を読むために時間を割いてくれてありがとう。私が思うに、物事の発祥を適切に認めることは、学術の世界だけでなく、とても大切なことです。私が素晴らしい教師から学んだように、仕事を豊かにするだけでなく、あなたのアイデアがどこから来たものなのかを他の人々が調べたり見たりすることができるようにしておきましょう。彼らは、より効果的な方法を見つけたり、出来ている物を改良したりしてくれるかもしれません。

2003年に私が作ったものが届いた先を見ていると、これらのコマンドが世界中の人々のアイデアや作品に命を吹き込んでいます。この結果は私に大いなる満足感や驚き、新たな疑問、アイデア、知識、そして友情をもたらしてくれました。この事に対して感謝をしています。

過去を知り、同じ過ちを繰りかえさないことが大切だと思います。ときどき、この問題について違うモチーフで、違った言い方をできたらどんなにいいかと考えます。しかし、私が出会った多くのジャーナリストや普通の人々は、公平さをあきらめ妥協した人ばかりでした。彼らは、Arduinoと直接のビジネスを行っているか、単にMassimo Banziを動揺させたくないかのいずれかでした。あるいは、原因を追いかけていながら、信じていることと違うことを見たり聞いたりしたくない人々が居たのでしょう。転載して広めろと言われたとおりに転載するような人々も居たのでしょう。そうではない人々にとって、この文章は、個人として、あるいはコミュニティの一員として、興味を持ったことについて徹底的に質問したり掘り下げたりする人々に向けた招待状です。

近いうちにどこかでお会いします。

Hernando

* * *

# Index {#index}

* TOC
{:toc}


* * *

[^1]: プログラムを書くという文脈における「スケッチ」の概念は、Processing、元をたどれば[Design by Numbers](http://www.maedastudio.com/1999/dbn/index.php){: target="_blank"}（DBN）から来ています。これは、Wiringにおいて、エレクトロニクスを使ったプロトタイピングという文脈や、ハードウェアで「スケッチする」と拡張されました。

[^2]: Interactive Telecommunications Program at New York University

[^3]: Page 34, ISBN-13: 978-0596510510 ISBN-10: 0596510519, [http://www.amazon.com/Making-Things-Talk-Practical-Connecting/dp/0596510519/ref=sr_1_2?ie=UTF8&sr=8-2&keywords=Making+Things+Talk](http://www.amazon.com/Making-Things-Talk-Practical-Connecting/dp/0596510519/ref=sr_1_2?ie=UTF8&sr=8-2&keywords=Making+Things+Talk){: target="_blank"}

[^4]: [https://groups.google.com/a/arduino.cc/d/msg/developers/HEKecd0qhS4/nADS2jW6DgAJ](https://groups.google.com/a/arduino.cc/d/msg/developers/HEKecd0qhS4/nADS2jW6DgAJ){: target="_blank"}
