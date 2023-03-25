```shell
ssh bandit[0-9]@bandit.labs.overthewire.org -p 2220 > #Povezivanje sa hostom
```

## Level 0

```shell
ls -la > #Gledam fajlove,direktorije koje se nalaze u root direktoriju
cat readme > #Prikazujem sadrzaj readme fajla
```

![Schreenshot level-a 0](Screenshots/Level-0.png)

## Level 1

```shell
ls -la #Ponovo koristimo ls -la da prikazemo sve fajlove i datoteke
cat ./- #Posto je "-" standardni ulaz koristimo relativnu putanju
```

![Schreenshot level-a 1](Screenshots/Level-1.png)

## Level 2

```shell
ls -la #Ponovo za istu stvar
cat spaces\ in \ this\ filename #Ispisujemo sadrzaj iz fajla
```

![Schreenshot level-a 2](Screenshots/Level-2.png)

## Level 3

```shell
ls -la
ls -la #Prikazujem sve fajlove i one skrivene .hidden
cat .hidden #Da prikazem sadrzaj na ekranu
```

![Schreenshot level-a 3](Screenshots/Level-3.png)

## Level 4

```shell
ls  -la
file./-* #Ovom komandom odredjujemo tip fajla tj trazimo fajl koji je "human-readable" koji pocinje sa "-"
```

![Schreenshot level-a 4](Screenshots/Level-4.png)

## Level 5

```shell
find . -type f -size 1033c #Trazimo fajl koji je velicine 1033 bajta
```

![Schreenshot level-a 5](Screenshots/Level-5.png)

## Level 6

```shell
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null #Ovom komandom trazimo fajl koji pripada korisniku "bandit7" i grupi "bandit6" velicine 33 bajta 2>/dev/null sluzi da izbegnemo poruke o greskama prilikom pretrage direktorijuma
```
![Schreenshot level-a 6](Screenshots/Level-6.png)

## Level 7

```shell
grep millionth data.txt #Trazimo liniju u fajlu data.txt koja sadrzi rec millionth
```

![Schreenshot level-a 7](Screenshots/Level-7.png)

## Level 8

```shell
sort data.txt | uniq -u #Sortiramo fajl "data.txt" po abecednom redosledu reci. Komanda uniq se koristi za filtriranje ponavljajucih linija is sortirane liste, opcija -u sluzi da se prikaze samo linija koja se ne ponavljaju.
```
![Schreenshot level-a 8](Screenshots/Level-8.png)

## Level 9
```shell
strings data.txt | grep "=" #Izdvaja sve nizove znakove iz datoteke a zatim se pretrazuje samo linije koje imaju znak "="
```
![Schreenshot level-a 9](Screenshots/Level-9.png)

## Level 10 
```shell
base64 -d data.txt #Sluzi da dekodira sadrzaj fajla "data.txt" koji je u Base64 formatu.

![Schreenshot level-a 10](Screenshots/Level-10.png)