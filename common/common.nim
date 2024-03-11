import std/strutils

import nimib

const spCss* = """
@font-face {
  font-family: "sitelen seli kiwen mono asuki";
  src: url(./../fonts/sitelenselikiwenmonoasuki.ttf);
}

main {
  line-height: 2rem;
  font-size: 1.65em;
  font-family: "sitelen seli kiwen mono asuki" !important;
}
"""

const
  ilo = """<span class="nb-small">mi pali e lipu ni kepeken ilo <a href="https://pietroppeter.github.io/nimib/">nimib 🐳</a></span>"""
  
  nimimi_en* = [
    "jasmine", "jazz", "kiana", "niko",
    "alice", "grace", "elysia", "everett"
  ]
  
  nimipini* = [
    "kijana", "elisija", "elisa", "alise",
    "ewe"
  ]

  nimiopen* = [
    "mun", "kala", "waso", "ijo",
    "jasima", "kiki", "esun", "seme",
    "sitelen", "ko", "pan", "nasa",
    "kasi", "jo", "ilo", "linja",
    "ale", "lape", "tonsi", "meli",
    "tu", "wan", "kule", "kon",
    "sewi", "suwi", "lete", "seli",
    "laso", "len", "mu", "puwa"
  ]

template addCss*(doc: var NbDoc; style: string) =
  doc.context["nb_style"] = doc.context["nb_style"].vString &
    '\n' & "<style>\n" & style & "\n</style>"

template tpFooter*(doc: var NbDoc) = 
  doc.partials["footer_left"] = ilo

template nbSep*() = 
  nbText: "---"

# from nimib presentation
# https://github.com/pietroppeter/nimconf22-nimib/blob/bb874c6f2d2fcb77c7bd4fbffbe906a8df95ebdc/pietros_slides.nim#L343
template nbDetails*(summary: string, body: untyped) =
  nbRawHtml: "<details><summary>" & summary & "</summary>"
  body
  nbRawHtml: "</details>"

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
