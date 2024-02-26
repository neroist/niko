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
      #exec "nim r tokiopen.nim"
      
      "src"
    else:
      "src/" & commandLineParams()[^1]

  if dirExists(lipu):
    for file in walkDirRec(lipu):
      if file.splitFile().ext == ".nim":
        exec "nim r " & file 
  else:
    exec "nim r " & lipu

# Dependencies

requires "nim >= 1.4.0"

requires "nimitheme#head"
requires "nimib"
