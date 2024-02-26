import std/os

# Package

version       = "0.1.0"
author        = "niko"
description   = "lipu niko"
license       = "MIT"

# Tasks

task pali, "o pali e lipu ale":
  mkdir "out"

  let lipu = if commandLineParams()[^1] in ["pali"]: 
      "src"
    else:
      "src/" & commandLineParams()[^1]

  if dirExists(lipu):
    for file in walkDirRec(lipu):
      if file.splitFile().ext == ".nim":
        exec "nim r " & file 
  else:
    exec "nim r " & lipu

task tawa, "o tawa e lipu tawa poki niko.linluwi.la":
  cpDir "./out", getHomeDir() / "niko.linluwi.la" / "web" # tawa

# Dependencies

requires "nim >= 1.4.0"

requires "nimitheme#head"
requires "nimib"
