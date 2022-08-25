import os, sequtils, strutils
var
    detExec = "det "
    argsSeq = commandLineParams()
    argsStr: string
argsStr = (argsSeq.mapIt($it).join)
detExec.add(argsStr)
discard execShellCmd(detExec)