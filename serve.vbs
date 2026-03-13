Dim shell, dir
Set shell = CreateObject("WScript.Shell")
dir = Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\") - 1)
shell.Run "file:///" & Replace(dir, "\", "/") & "/index.html"
