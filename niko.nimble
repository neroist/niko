import std/os

# Package

version       = "0.4.0"
author        = "niko"
description   = "Make nimib look beautiful with nimitheme"
license       = "MIT"
srcDir        = "." # $projectDir

# Tasks

task pali, "o pali e lipu ale":
  mkdir("out")

  let lipu = if commandLineParams()[^1] in ["pali"]: 
      "toki"
    else:
      "toki/" & commandLineParams()[^1]

  exec "nim r open.nim"

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