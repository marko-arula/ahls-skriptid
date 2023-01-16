# Rakendusserverite Haldus - Dokumentatsioon

## ahls-skriptid

### Git Paigaldus
Git-i saab paigaldada järgnevalt:
```
apt install git
```

### Git seadistamine:
```
git config --global user.name "Ees Perenimi"
git config --global user.email email@domeen.ee
git config --global core.editor nano
```

Pärast tuleb luua repositooriumite jaoks eraldi kaust. Linuxi operatsioonisüsteemide puhul tuleb seda teha root kasutajana. Repositoorium luuakse järgnevalt:
```
- su root
- cd ~
- mkdir "Nimi mis kaustale jääb"
- cd "Äsja loodud kaust"
- git init
```
Enda Linux-i masinasse tuleb luua SSH võtmepaar. Just loodud võtmepaar salvestada enda valitud kausta, ning sellele lisada ka 'turvaline' parool.
```
ssh-keygen -t rsa -b 4096 -C "email@google.com"
```
Lõpuks ühendada GitHub repositooriumiga.
```
ssh -T git@github.com
```

## Skriptid
Siin repositooriumis on välja toodud kuidas ning millised näevad välja järgmised skriptid (!Kõik käsud tuleb teha 'root' administraator kasutajana):

- Apache2 paigaldus
- MySQL'i paigaldus
- PhpMyAdmin'i paigaldus
- WordPress'i paigaldus
- PHP paigaldus
- Kasutajate Loomine - nime põhjalised
- kasutajate loomine - tekstidokumentide põhjalised

## Litsents
Selle repositooriumi sisu on litsenseeritud 'MIT' Litsensi all - rohkem infot leiab LICENSE.md failis

Marko Arula GitHub Repositoorium
