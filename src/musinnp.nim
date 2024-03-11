import std/strutils

import nimitheme except addCss
import nimib

import ../common/common

nbInit 

nb.tpFooter()
nb.useLatexCSS()
nb.addCss: """
figure { text-align: center; }
"""

# images are too big
nbRawHtml: """
<script defer>
let images = document.getElementsByTagName("img")

for (var img of images) {
  img.style.width = "30em"
}
</script>
"""

# --- open ----

nbText: """
tenpo poka la mi lukin e sitelen ni
"""

nbDetails("ona tan --- tInli li lon li taso"):
  nbImage(
    "images/sitelenLmnnp_tIn.jpg"
  )

nbText: """
taso ona li lon toki Inli taso! · mi pona toki e ona · o lukin sin
"""

nbImage(
  "images/sitelenLmnnp_tp_1.jpg"
)

nbText: """
mi wile alasa e nanpa lon poka sina a! · mi kama toki e nasin

## sona open

sitelen li pana e sona luka tawa mi

> `[<poki> <poki> <poki>]`
> 
<!-- > sitelen [ li open e kulupu -->
<!-- > sitelen ] li pini -->
> poki la nanpa

1. kulupu [6 8 2] la wan taso li pona li lon poki pona
2. [6 1 4] la wan li pona li lon poki ike
3. [2 0 6] la tu a li pona · taso ona li lon poki ike
4. [7 3 8] la ale li ike
5. [7 8 0] la wan li pona li lon poki ike

sitelen li pana e utala ni -> o alasa e nanpa pona ale

## nasin

### nanpa `[::-1][-1]`

wan la o lukin e sona #5 e sona #4

> 4. [7 3 8] la ale li ike
> 5. [7 8 0] la wan li pona li lon poki ike

nanpa ike [7 8] li lon kulupu #5 · ni la sina kama sona · nanpa 0 li pona ·
taso kulupu nanpa la ona li lon seme? · open anu insa anu pini a anu seme? ·

sona ni li wile e sona #3 kin 

> 3. [2 0 6] la tu a li pona · taso ona li lon poki ike

nanpa 0 li pona · taso sona ni en sona #5 la ona li lon ala pini anu insa ·
ni la **open a** li poki pona tawa ona

pona ale: [0 ? ?]

### nanpa pini

tu la o lukin e sona #1

> 1. [6 8 2] la wan taso li pona li lon poki pona

la o lukin e open kulupu · nanpa 6 li lon · taso lon la nanpa 0 li lon
open! · ni la nanpa 6 li ike a! · ni li suli kepeken sona #3

> 3. [2 0 6] la tu a li pona · taso ona li lon poki ike

nanpa 6 li ike la nanpa sin 2 (+ nanpa 0) li pona a · taso nanpa ni li lon
seme? · o kepeken sin e sona #1

>  1. [6 8 2] la wan taso li pona li lon poki pona

nanpa pona 2 li lon **pini**

pona ale: [0 ? 2]

### nanpa insa

mute la o oko e sona #2 · pini li kepeken sona ni

> 2. [6 1 4] la wan li pona li lon poki ike

o sin e sona sina
  * kulupu pona li ni -> [0 ? 2]
  * nanpa ni ale li ike -> [7 3 8 6]

ni la kulupu [6 1 4] la nanpa 1 taso anu nanpa 4 taso li ken pona · o alasa
sona e ken tu ni ->

  * *nanpa 1 li pona la*
    - ona li lon poki ike la ona li lon open anu pini ·
      taso **ni li ken ala** · nanpa 0 li lon open · nanpa
      2 li lon pini 
  
  * *nanpa 4 li pona la*
    - ona li lon poki ike la ona li lon open anu insa ·
      **ni li ken** · ona li ken ala lon open tan nanpa 0 ·
      taso **ona li ken lon insa**

      **ona li nanpa insa**
  
### pini

mi en sina li sona e nanpa pona ale

ona li ni -> [0 4 2]

pona aaaa

> mu :3

"""

nbSave
