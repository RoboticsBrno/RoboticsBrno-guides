# Robotarna-guides
Guides for various topics. However, guides are written primarily in Czech. If it is in English, it will have the mark `[EN]`.

Průvodci/návody pro různá témata. Primárně psány v češtině. V případě angličtiny jsou označený tagem `[EN]`.

## Struktura repozitáře

V rámci repozitáře je vytvořeno několik složek, které reprezentují kategorie pro jednotlivé soubory, čím by měl být v repozitáři zajištěn základní rozřazovací systém.

Pokud by vám připadalo, že váš nově vytvořený dokument/soubor do žádné z těchto složek nezapadá, můžete jej nechat v `rootu` repozitáře a nebo pro něj vytvořit dostatečně obecnou složku/novou kategorii.

### Přílohy

Pokud k dokumentu přidáváte nějaké přílohy (fotky, screenshoty, data), řiďte se následujícími pokyny.

Ukládejte přílohy vždy do nové složky, která bude na vytvořena na úrovni, kde se nachází daný dokument a její název bude `název dokumentu` + koncovka:

- fotky, rendery, screenshoty => složka s koncovkou `.img`
- data (vše, co se nebude zobrazovat jako obrázek v textu) => složka s koncovkou `.data`

#### Příklad:

Dokument s názvem `FabLab_Ze-SolidWorks-na-Laser.md`.

```
FabLab_Ze-SolidWorks-na-Laser.md
FabLab_Ze-SolidWorks-na-Laser.data\laserCaliber.svg
FabLab_Ze-SolidWorks-na-Laser.img\1.PNG
...
``` 

## [Robotický manuál](http://doc.robotikabrno.cz) ([PDF](http://doc.robotikabrno.cz/RoboticsManual.pdf))
Co se hodí vědět při stavbě a programování hobby robotů.

## Instalace

Instalace softwaru v rámci RobotikyBrno/Robotárny řešíme v samotném repozitáři [RoboticsBrno/Robotarna-service](https://github.com/RoboticsBrno/Robotarna-service). Lze zde najít instalační skripty pro Linux i Windows (přes software [Chocolatey](https://chocolatey.org/)). Návody na zprovoznění vývojových prostředí nebo i tipy na různé problémy a jejich řešení.


