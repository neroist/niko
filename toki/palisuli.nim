import nimib

nbInit 

nb.darkMode()
nb.title = "pali \"suli\" + ilo sin lukin"

nbText: """
nanpa wan la mi pali e ijo suli • ilo [lcui] li lon li lon toki ilo [c] •
jan li ken kepeken ona kepeken toki [c] taso • taso a mi pali li kama ken
e toki ante [nim] a tawa kepeken • tan pali mi la jan li ken kepeken ilo
[lcui] kepeken toki [nim] • mi pana e wawa mute mute suli suli ala tawa
pali ni • ona li lon lipu [https://github.com/neroist/lcui]

tenpo lon la lon la jan li ken kepeken ni lon ilo [windows] taso • mi wile
ken e ilo [linux] • taso mi ken ni kepeken nasin seme a... • kin ni li wile
e pali mute a • mi wile ala pali mute

taso a mi pali e ni kepeken nasin seme? • kepeken ilo seme? • pali ni (mi)
en pali sama la toki [nim] la ilo [c2nim] li wawa mute a • sitelen li lon
toki [c] la ilo ni li ken ante e sitelen tawa toki [nim] • ilo ni li lili
a e pali mi e pali jan

taso ilo ni li ken ike lon tenpo • mi alasa kepeken ona la mi pana e sitelen
tawa ona • ona li lukin e ali sitelen li alasa e pakala • pakala li lon la
ona li ante ala e sitelen li mu e pakala sitelen taso • lon la pakala ni li
pakala tawa ona taso.. li pakala ala lon lon • taso a ona li mu la mi weka
e pakala sitelen li alasa kepeken (sin e) ona • weka la ilo li kama pona li
ante e sitelen

pakala wan li ni ->

```c
LCUI_API char *strdup2(const char *str);
```

ilo li mu ni ->

```
Warning: token expected: ; but got: [identifier] [SyntaxError]
```

ken la ona li sona ala e nimi [LCUI_API] la nimi ni li pakala tawa ona • ww llmsa..

ni kin li pakala tawa ilo ->

```c
typedef enum
{
  Z_ORDER_LEVEL_0,//lowest graphic level
  Z_ORDER_LEVEL_1,//middle graphic level, call activate_layer before use it, draw everything inside the active rect.
  Z_ORDER_LEVEL_2,//highest graphic level, call activate_layer before use it, draw everything inside the active rect.
  Z_ORDER_LEVEL_MAX
}Z_ORDER_LEVEL;
```

mu ilo li ni ->

```
file.h(2, 1) Error: identifier expected, but got:
 [NewLine] (pxNewLine)
```

mi ken ala a sona e ni... semeeee

pini la mi kepeken ilo [vscode] kin • ona li ken ante mute e sitelen (toki
[c] taso ala. ona li ken ante e sitelen ali) kepeken nasin mute mute a •
ni li pona wawa

nanpa tu la mi kama kepeken ilo lukin a • kepeken ilo la mi ken lukin e ijo
weka a • ilo li lon ala a oko mi la mi ken lukin e ijo poka taso

:3c
"""

nbSave