import std/strformat
import std/strutils
import std/random

import nimib

import ../common/common

nbInit 

nb.tpFooter()
nb.darkMode()
nb.addCss: """
.box {
  --border-style: 2px solid;
  display: flex;
}

.item {
  padding: 1rem;
  font-size: x-large;
  border-radius: 1px;
  border-top: var(--border-style);
  border-bottom: var(--border-style);
}

.box :first-child, .box :last-child {
  border-left: var(--border-style);
  border-right: var(--border-style);
}
"""

nbText: """

"""
