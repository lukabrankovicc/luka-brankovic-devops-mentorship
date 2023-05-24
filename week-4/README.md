## OSI model

OSI model je referentni model koji opisuje kako razliciti racunarski sistemi komuniciraju i razmenjuju podatke u mrezi 

OSI (Open System Interconnection)

Sastoji se od 7 slojeva

- Application Layer
- Presentation Layer
- Session Layer
- Transport Layer
- Network Layer
- Data Link Layer
- Physical Layer

![Opis slike](https://cf-assets.www.cloudflare.com/slt3lc6tev37/6ZH2Etm3LlFHTgmkjLmkxp/59ff240fb3ebdc7794ffaa6e1d69b7c2/osi_model_7_layers.png)

#1. Physical Layer

Fizicki sloj brine o topologije mreze i globolnom povezivanju opreme sa mrezom. Odgovoran je za prenos bitova informacije kroz medij koji se koriste za prenos.
On definise konektor, elektricni kabal ili bezicna tehnologija koji povezuje uredjaje i odgovoran je za prenos sirovih podataka koji su jednostavna serija nula i jedinica

#2. Data Link Layer

On uspostavlja i prekida vezu izmedju dva povezana uredjaja na mrezi. Razbija pakete u frejmove i salje ih od uzvora do odredista. Ovaj sloj se sastoji od dva dela kontrole veze (LLC - Logical Link Control), koji indentifikuje mrezne protokole, vrsi proveru gresaka i sinhronizuje okvire i kontrole pristupa medijima (MAC) koji koristi MAC adresu za povezivanje uredjaja u definisane dozvole za prenos i prijem podataka.

#3. Network Layer

Jedna od funkcija network layer-a je da razbija segmente u mrezne pakete poznate kao datagrami pa ih ponovo sastavlja na kraju. Drugi funkcija je rutiranje paketa najboljeg prenosa putem fizicke mreze.
Mrezni sloj koristi mrezne adrese za usmeravanje paketa do odredisnog cvora.

#4. Transport Layer

On je odgovoran za uzimanje podataka iz sloja sesije i razbijanje u delove koji se zovu segmenti i za njihovo ponovno sastavljanje. Transportni sloj vrsi kontrolu gresaka na prijemnoj strani tako sto osigurava da su primljeni podaci potpuni i zahteva ponovni prenos ako nije poslat.

#5. Session Layer

Ovo je sloj odgovoran za otvaranje i zatvaranje komunikacije izmedju dva uredjaja. Vreme izmedju otvaranja i zatvaranja komunikacije poznato je kao sesija. Sloj sesije osigurava da sesija ostane otvorena dovoljno dugo da prenose sve podatke koji su razmedjuju a zatim odmah zatvara sesiju kako bi se izbeglo trosenje resursa.
Sloj sesije takodje sinhronizuje prenos podataka sa kontrolnim tackama.

#6. Presentation Layer

Je odgovoran za prevodjenje, sifrovanje i kompresiju podataka. Moze se desiti da dva uredjaja koji kkomuniciraju koriste razlicite metode kodiranja zato sluzi prezentacijski sloj da prevede dolazne podatke u sintaksu koju sloj aplikacije moze da razume. Isto je odgovoran za compressing podataka koji prima od sloja aplikacije.
Ovo pomaze u brzini i efikasnosti kommunikacije minimiziranje kolicine podataka koji ce biti primljeni.

#7. Application Layer

Odgovoran je za protokole i manipulaciju podacima na koje se softver oslanja da bi korisniku predstavio znacajne podatke. Aplikacijskom sloju pripadaju protkoli HTTP, SMTP (Simple mail Transfer Protocol), FTP

## Protokoli

Sve sto se desava na internetu a obuhvata komunikaciju dve uredjaja samostalna tela ili vise njih upravlja neki protokol. Protokol definise format poruke i redosled po kojem se ta poruka razmenjuje izmedju najmanje dve zasebne celine koje medjusobno komuniciraju, kao i postupke koje se preduzimaju posle slanja i/ili prijema odredjenih poruka ili nekog drugog dogadjaja.

## Difference between private and public IPv4 addresses

Privatna IP adresa koriste se unutar privatnih mreza, kao sto su lokalne mreze (LAN) u kuci, kancelarijama ili organizacijama
One nisu direktno rutabilne na internetu i namenjene su samo internoj upotrebi. Privatne IP adrese omogucabaju uredjajima unutar privatne mreze da medjusobno komuniciraju bez direktnog izlaganja na internetu.

Najcesci korisceni opsezi privatnih adresa su:

- 10.0.0.0 do 10.255.255.255
- 172.16.0.0 do 172.16.255.255
- 192.168.0.0 do 192.168.255.255

Javna IP adresa su adresekoje su dodeljene uredjajima koji su direktno povezani na internet
One su globalno jedinstvene i mogu biti rutabilne na internetu. Javne IP adrese omogucavaju uredjajima da budu dostupni i komuniciraju sa drugim uredjajima na internetu.
Javne IP adrese se dodeljuju od strane organizacije koje upravljaju adresnim prostorom na internetu kao sto su Internet registri.

## IPv6

Je nasladnik IPv4 protokola on koristi 128-bitne adrese sto omogucava veci broj mreznih uredjai povezanih uredjaja
Sve  vise uredjaja povezuje na internet, potreba za IP adresom raste taj problem resava IPv6 protokol.
Jedna od glavnih prednosti IPv6 protokola je veca sigurnos ukljucuje ugradjenu enkripciju i autentifikaciju.

## Client-server architecure

U ovom modelu klijent inicira zahtev serveru a server obradjuje zahtev i salje odgovore nazad klijentu. Ova arhitektura omogucava efikasno deljenje resursa, klijentima sirom mreze.

## Who is a Client and who is server

Klijent je uredjaj koji salje zahtev drugom uredjaju koji je povezan na mezu, uredjaj koji prima zahtev i obradjuje on se smatra serverom

## What is the TCP protocol

Je jedan od osnovnih protokola na internetu koji se koristi za uspostavljanje pouzdane veze izmedju uredjaja putem mreze i odgovoran je za sigurnu i puzdanu usporuku podataka izmedju racunara preko mreze.

## What is HTTP protocol and why we are using it

HTTP (Hypertext Transfer Protocol) je protokol koji se koristi za razmenu informacija preko interneta. To je kao sistem dostave informacija na internetu. On se brine da informacije idu sa jednog mesta na drugo.

HTTP je protokol za dobavljanje resursa kao što su HTML dokumenti. To je osnova za bilo koju razmenu podataka na Web-u i to je klijent-server protokol, što znači da zahtevi dolaze od primaoca, obično Web pregledača.

HTTP protokol se može koristiti za prenos podataka u obliku običnog teksta, hiper-teksta, audio zapisa, video zapisa i tako dalje.

## What is the main difference between TCP and UCP protocols

Dok TCP pruza puzdani prenos podataka bez gubitaka UCP ne pruza tu pouzdanost zato se on koristi tamo gde je bitnija brzina i gde nije bitno da svi podaci stignu kao sto je striming.

## What is FQDN

Potpuna identificiranje jedinstvene lokacije na internetu sastoji se od nekoliko delova u hiararhijskom poretku. FQDN ukljucuje sve delove naziva domena ukljucuje naziv subdomene, naziv drugog nivoa u nazivu top-level domain.

Primer
www.example.com

## What is DNS, why do we need it, how it work

DNS je hijerarhijski sistem koji povezuje ljudski citiva domenska imena sa njihovim pripradajucim IP adresama.
DNS je jakoo potreban posta da nebi pamtili IP adrese od svake veb aplikacije ili veb stranice umesto toga mi kucamo domenska ime tog sajta.

## What is VPN

VPN je privatna mreza ona je takodje u sigurna mreza veza povezuje korisnike i uredjaje preko interneta kao da su direktno povezani u istoj lokalnoj mrezi. Sluzi da promenimo nasu sopstvenu IP adresu privremeno u da preko te IP adrese pristupamo na internet sto nam daje anonimnost i mozemo da pristupimo stranicama koje nisu dostupne u nasem regionu isto stiti protok podataka od neovlastenog pristupa.