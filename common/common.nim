import std/strutils

import nimib

const spCss* = """
@font-face {
  font-family: "sitelen seli kiwen mono asuki";
  src: 
    url(/niko/fonts/sitelenselikiwenmonoasuki.ttf); /* jan li lukin e lipu la ni */
    url(/out/fonts/sitelenselikiwenmonoasuki.ttf); /* mi pali e lipu la ni */
}

main {
  line-height: 2rem;
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

              .replace("niv>", "ni5") # better multidirectional ni omg
              .replace("ni>v", "ni5")
              .replace("ni^>", "ni6")
              .replace("ni>^", "ni6")
              .replace("ni^<", "ni7")
              .replace("ni<^", "ni7")
              .replace("niv<", "ni8")
              .replace("ni<v", "ni8")
              .replace("niv", "ni") 
              .replace("ni>", "ni2")
              .replace("ni^", "ni3")
              .replace("ni<", "ni4")

              .replace("a!?", "a5") # a alts
              .replace("a?!", "a5") 
              .replace("a!!!", "a4") 
              .replace("a!!", "a3") 
              .replace("a!", "a2") 

  nbText(txt)
