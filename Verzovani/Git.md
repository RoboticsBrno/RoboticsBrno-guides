# Git aneb jak na něj

[Pěkný popis práce s Gitem v češtině v rámci Robotického manuálu.](https://roboticsbrno.github.io/RoboticsBrno-guides/#x1-1290004.6)

## Časté příkazy

- `git init` - vytvoří v aktuální složce repozitář
- `git clone URL` - naklonuje repozitář ze zadané URL adresy
- `git status` - zobrazí aktuální stav repozitáře
    - přidané soubory - `untracked`
    - odebrané soubory - `deleted`
    - pozměněné soubory - `modified`
- `git log` - zobrazí historii commitů
- `git log --oneline` - zobrazí zjednodušenou historii commitů (občas přehlednější)
- `git add FILES` - přidá daný soubor/soubory do indexu pro nový commit
- `git commit` - začne vytvářet nový commit ze souborů přidaných do indexu a zeptá se na jeho popis
- `git commit -m "POPIS COMMITU"` - vytvoří commit s daným popisem
- `git rm FILE` - odebere daný soubor z repozitáře i z indexu
- `git checkout NAZEV-VETVE` - přepne repozitář na zadanou větev/branch (pokud existuje)
- `git stash` - odloží upravené soubory do interní schránky repozitáře a zanechá repozitář ve stavu posledního commitu
- `git stash pop` - vytáhne poslední uložený stav ze schránky a aplikuje jej na soubory v repozitáři

## Práce s branchemi a pull-requesty aneb
## Přidávání commitů do repozitářů se zakázaným `pushem` do `master` branche

Některé repozitáře mají zakázáno přímé přidávání commitů do `master` větve/branche:

- ArduinoLearningKitStarter
- ArduinoLearningKitStarter-library
- RB3201-RBControl
- RB3201-RBControl-library

U nich je potřeba provést následující postup v command line:
1. otevřít si Gitovou command line -> ve Windows kliknout pravím tlačítkem myši v adresáři s repozitářem a vybrat z nabídky `Git Bash Here` (automatický vždy nainstalováno s Gitem)
1. vytvořit si novou [větev/branch](https://www.atlassian.com/git/tutorials/using-branches) pomocí příkazu `git checkout -b JMENO-VASI-NOVE-BRACHE`; jméno zvolte tak, aby trochu vystihovalo o jakou změnu se jedná (bez mezer, lze použít pomlčky/podtržítka a malá/velká písmena)
1. nyní máte vytvořenou novou větev s názvem např. `JMENO-VASI-NOVE-BRACHE`
1. teď je potřeba přidat změny do dané branche, vytvořit tedy nový commit, ať už vašim oblíbeným způsobem (TortoiseGit, VS Code...) nebo pomocí command line `git add CESTA-K-VASIM-SOUBORUM.txt`, `git commit -m "TEXT VASEHO COMMITU"`
1. jakmile máte přidány změny/commity v repozitáři, *pushnete* danou větev/branch na server pomocí příkazu v command line `git push`
1. pravděpodobně vám vyskočí následující chyba: `fatal: The current branch JMENO-VASI-NOVE-BRACHE has no upstream branch. To push the current branch and set the remote as upstream, use git push --set-upstream origin JMENO-VASI-NOVE-BRACHE`, je potřeba zavolat tento příkaz `git push --set-upstream origin JMENO-VASI-NOVE-BRACHE`, po jeho provedení byste na Gitovém serveru měli vidět vaši novou branch: `https://github.com/VAS-USERNAME/JMENO-REPOZITARE/commits/JMENO-VASI-NOVE-BRACHE`
1. nyní lze na GitHubu vytvořit [`pull-request`](https://help.github.com/en/articles/about-pull-requests) ("žádost" o přidání změn do jiné větve/branche) a tímto krokem můžeme dostat dané změnu do `master` větve;   
správce daného repozitáře časem vaše změny zkontroluje a buď vám napíše požadavky na změny a nebo dané změny příjme (`mergne`)
1. pokud budete požádáni o nějaké změny, stačí u sebe provést dané změny, přidat přes commit do stejné branche (`git add ...; git commit ...`) a odeslat na Gitový server (`git push`) 

### Názorná ukázka

#### 1. otevřít si Gitovou command line 

![](Git.img/git01-open-Git-Bash-Here.png)

#### 2. vytvoř novou branch

```
git checkout -b GitBranchesTutorial
```

![](Git.img/git02-create-branch.png)

#### 3. máte vytvořenou novou branch

![](Git.img/git03-branch-created.png)

#### 4. vytvořte commit se změnami

```
git add Git.md
git add *.png
git commit -m "Git: add tutorial for working with branches"
```

Přidání souborů do commitu:

![](Git.img/git04-add-files-with-changes.png)

*Poznámka:* `git status` zobrazí stav všech souborů v repozitáři

Vytvoření commitu:

![](Git.img/git05-commit-changes.png)

Přes příkaz `git log` si lze zobrazit seznam commitů:

![](Git.img/git06-logs.png)

#### 5. odešlete změny na Gitový server

```
git push
```


#### 6. chybová hláška při `git push`

Pokud dostanete následující error

```
noname@JarekP-NOT MINGW64 /c/RoboticsBrno-guides/Git (GitBranchesTutorial)
$ git push
fatal: The current branch GitBranchesTutorial has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin GitBranchesTutorial
```

![](Git.img/git07-push.png)

je potřeba zkopírovat daný příkaz a zavolat jej v command line:

```
git push --set-upstream origin GitBranchesTutorial
```

![](Git.img/git08-push-upstream.png)

Nyní by již měla být daná branch nahrána na Gitovém serveru:   
`https://github.com/VAS-USERNAME/JMENO-REPOZITARE/commits/JMENO-VASI-NOVE-BRACHE`

[https://github.com/RoboticsBrno/RoboticsBrno-guides/commits/GitBranchesTutorial](https://github.com/RoboticsBrno/RoboticsBrno-guides/commits/GitBranchesTutorial)

![](Git.img/git09-github-commits.png)

#### 7. vytvoření pull-requestu do `master` větve

Pomocí tlačítka `New pull request` vedle tlačítka pro výběr aktuální větvě `Branch: GitBranchesTutorial` začnete vytvářet `pull-request` (zkontrolujte si vždy, že máte vybranou správnou větev):

![](Git.img/git10-github-pull-request-button-highlighted.png)

Při vytváření `pull-requestu` můžete:
- přidávat podrobnější popis
- určovat osoby, které mají daný `pull-request` zkontrolovat (`Reviewers`)
- označovat jakého je typu (`Labels` - bug, improvement...)
- ...

![](Git.img/git11-github-create-pull-request.png)

Po vytvoření `pull-requestu` vám jej mohou ostatní komentovat, připomínkovat, opravovat a následně přijmout (`Merge`) nebo zamítnou (`Close`).

![](Git.img/git12-github-pull-request-created.png)

Kdykoliv můžete do `pull-requestu` přidávat další commity. Stačí u sebe provést dané změny, přidat přes commit do stejné branche (`git add ...; git commit ...`) a odeslat na Gitový server (`git push`) 

![](Git.img/git13-github-pull-request-created-log.png)

![](Git.img/git14-github-pull-request_more-commit.png)

## FAQ

### Jak odebrat soubor z indexu, který jsem přidal přes `git add`?

```
git reset JMENO-SOUBORU
```

Pokud chcete odebrat všechny soubory přidané přes `git add`, stačí zadat jen `git reset`.

## FAQ - pro pokročilé

**Používejte jen, když víte co a proč to děláte.**

### Odstranění posledního commitu z repozitáře?
```
git reset --hard HEAD~1
```

Odstranění commitu i ze serveru, pokud tam byl již předtím nahrán: 

```
git push --force
```

#### Pozor: 

Některé repozitáře mají zakázány `force push` do master větví (viz [Přidávání commitů do repozitářů se zakázaným pushem do master branche](#přidávání-commitů-do-repozitářů-se-zakázaným-pushem-do-master-branche)) a u nich nelze tento postup použít (co se do dané branche na server pushne, již nelze modifikovat).

Zároveň i když to daná branch umožňuje, je potřeba být z používáním `force push` velmi opatrný. Pokud totiž již někdo daný commit stáhnul k sobě na PC (jako lokální kopii) a vy potom odstraníte daný commit přes `force push` tento commit ze serveru. V tomto případě bude mít dotyčný problém nahrát svoje nové commity na server a nejjednodušší cesta je si znovu naklonovat celý repozitář.