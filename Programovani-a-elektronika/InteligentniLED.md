# Inteligentní LED (WS2812 / APA102)

Inteligentní RGB LED, které ke svému ovládání potřebují jen jeden (DATA -> WS2812) nebo dvou (DATA, CLK -> APA102) signálů/vodičů.

## WS2812
- služebně starší 
- levnější
- využívá vlastní protokol -> 1 vodič
- řídí LED na nižší frekvenci (může být poznat při rychlém pohybu nebo specifickém využití)
- vyrábí se v pouzdru 5 x 5 mm 

## APA102 (5050 / 2020)
- novější 
- řídí se pomocí jednosměrného SPI (DATA + CLK) -> 2 vodiče
- řízení LED je na vyšší frekvenci (20 kHz) - vhodné např. na promítání obrázku na rotačních zařízení -> POV globus
- vyrábí se v pouzdru 5 x 5 mm (APA102 5050) nebo 2 x 2 mm (APA102 2020)

## Napětí
Obě dvě varianty jsou navrženy na 5V napájení a komunikaci, ale testováním jsme ověřili, že fungují v následujících kombinacích:
- 5 V napájení, 3V3 komunikace
- 3V3 napájení, 3V3 komunikace

APA102 (5050) fungovují i na 2,5 V. Mají sice snížený jas a trochu omezené barvy, ale pořád fungují. Při napětí 2 V již ale svítí jen červená LED.
Ostatní varianty na tom budou asi podobně.

## Spotřeba
Ve stand-by režimu (žádná LED nesvítí) si dle rychlého testování vezmou APA102 (5050):
- napájení 3,3 V - cca. 216 ledek - cca. 160 mA -> 0,75 mA na LED
- napájení 5 V  - cca. 216 ledek - cca. 600 mA -> 3 mA na LED
