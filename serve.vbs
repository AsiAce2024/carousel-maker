Dim shell, dir
Set shell = CreateObject("WScript.Shell")
dir = Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\") - 1)
shell.CurrentDirectory = dir
shell.Run "python -m http.server 8080", 0, False
WScript.Sleep 800
shell.Run "http://localhost:8080"
