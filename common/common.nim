import std/strutils

import nimib

when defined(release):
  const
    spCss* = """
  @font-face {
    font-family: "sitelen seli kiwen mono asuki";
    src: url(/niko/fonts/sitelenselikiwenmonoasuki.ttf);
  }

  main {
    font-size: 1.65em;
    font-family: "sitelen seli kiwen mono asuki" !important;
  }
"""
else:
  const
    spCss* = """
  @font-face {
    font-family: "sitelen seli kiwen mono asuki";
    src: url(/out/fonts/sitelenselikiwenmonoasuki.ttf);
  }

  main {
    font-size: 1.65em;
    font-family: "sitelen seli kiwen mono asuki" !important;
  }
"""

template addCss*(doc: var NbDoc; style: string) =
  doc.context["nb_style"] = doc.context["nb_style"].vString &
    '\n' & "<style>\n" & style & "\n</style>"

template nbTextSp*(text: string) = 
  let txt = text
              .replace("zz", "　") # better spaces

              .replace("niv", "ni") # better multidirectional ni omg
              .replace("ni>", "ni2")
              .replace("ni^", "ni3")
              .replace("ni<", "ni4")
              .replace("niv>", "ni5")
              .replace("ni>v", "ni5")
              .replace("ni^>", "ni6")
              .replace("ni>^", "ni6")
              .replace("ni^<", "ni7")
              .replace("ni<^", "ni7")
              .replace("niv<", "ni8")
              .replace("ni<v", "ni8")

  nbText(txt)