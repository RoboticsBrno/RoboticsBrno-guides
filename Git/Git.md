# Git aneb jak na něj

## Práce s branchemi a pull-requesty aneb
## Přidávání commitů do repozitářů se zakázaným `pushem` do `master` branche

Některé repozitáře mají zakázáno přímé přidávání commitů do `master` větve:   
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
1. pravděpodobně vám vyskočí následující chyba: `fatal: The current branch JMENO-VASI-NOVE-BRACHE has no upstream branch. To push the current branch and set the remote as upstream, use git push --set-upstream origin JMENO-VASI-NOVE-BRACHE`, je potřeba zavolat tento příkaz `git push --set-upstream origin JMENO-VASI-NOVE-BRACHE`, následně by již mělo stačit znovu zavolat `git push`
1. po provedení `git push` byste měli na GitHubu vidět vaši novou branch: `https://github.com/VAS-USERNAME/JMENO-REPOZITARE/commits/JMENO-VASI-NOVE-BRACHE`

### Názorná ukázka

#### 1. otevřít si Gitovou command line 

![](git01-open-Git-Bash-Here.png)

#### 2. vytvoř novou branch

```console
git checkout -b GitBranchesTutorial
```

![](git02-create-branch.png)

#### 3. máte vytvořenou novou branch

![](git03-branch-created.png)

#### 4. vytvořte commit se změnami

```console
git add Git.md
git commit -m "Git: add tutorial for working with branches"
```
