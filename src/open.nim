import nimib

import ../common/common

nbInit
nb.title = "lipu open"

nb.tpFooter()
nb.darkMode()

nbText: """
# lipu

ni li lipu

sina lukin e ona

## sina pali e lipu tan seme

tenpo pini la mi kepeken lipu [spacehey]

taso lipu ni li ike

mi ken ala poki e toki mi lon ona

ni la mi ante e lipu kepeken

mi kama pali e lipu ni

li kama kepeken ona

## sina seme a

o sona e mi kepeken [lipu ni a](./mi)

## toki mi

* [ma anpa pi ma tomo Paki](./maanpa)
* [alasa sona [nanpa]](./alasasona)
* [kala li tonsi](./kalatonsi)
* [pali "suli" + ilo sin lukin](./palisuli)
* [mi kute e mukalamasin](./mukalamasin)
* [pali sin niko: lipu sin](./lipusin)
* [sin ilo](./sin)

### sitelen pona !?

* [open](./sitelenpona)

toki ante o kama
"""

nbText: """
## sike li pona la!

*o sike*
"""

nbRawHtml: """
<div id="sike-pona" style="width: 100%; height: 3rem;">
  <link rel="stylesheet" href="https://sike.pona.la/embed.css"/>
  <span id="left">
    <a href="https://sike.pona.la/jan/niko/prev.html" id="prev">← pini</a>
    </span>
  <span id="mid"><a href="https://sike.pona.la">
    <img class="tokipona" src="https://sike.pona.la/assets/tokipona.svg"></img>
    sike pona
    <img class="tokipona" src="https://sike.pona.la/assets/tokipona.svg"></img>
  </a></span>
  <span id="right">
  <a href="https://sike.pona.la/jan/niko/next.html" id="next">kama →</a>
  </span>
</div>
"""

nb.filename = "index.html"

nbSave