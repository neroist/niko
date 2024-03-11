import std/strformat
import std/strutils
import std/random

import nimib

import ../common/common

nbInit 

nb.tpFooter()
nb.darkMode()
nb.title = "mi seme a"

nbText: """
# mi seme...

## nimi mi li seme a

o awen a · mi kama e nimi...
"""

nbCode:
  var nimi: string

  nimi.add nimi_open.sample() # nasin sample li kama e ijo wan tan kulupu ijo `nimi_open`
  
  nimi.add " " # mi tu e nimi tu kepeken weka ni · mi pana ala la ona tu li wan
  
  nimi.add nimi_pini.sample()
                    .capitalizeAscii() # ni li suli e sitelen nanpa wan lon nimi
                                       # (meow -> Meow)

  echo nimi # mi pana e nimi tawa lukin sina a 

nbText: fmt"""
pona a! mi `{nimi}`
"""

nbSave