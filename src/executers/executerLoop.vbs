Option Explicit
Dim PathApplication,ShortcutName,VbsPath
VbsPath = Wscript.ScriptFullName
PathApplication = "C:\Job_CopyFiles\src\executers\callerLoop.bat"
ShortcutName = "copyziK"
Call Shortcut(VbsPath,ShortcutName)
Call Hidden_Run(Dblquote(PathApplication))
'*********************************************************************************
Sub Shortcut(PathApplication,ShortcutName)
    Dim objShell,StartFolder,objShortCut,MyTab
    Set objShell = CreateObject("WScript.Shell")
    MyTab = PathApplication
    If ShortcutName = "" Then
        ShortcutName = MyTab(UBound(MyTab))
    End if
    StartFolder = objShell.SpecialFolders("Startup")
    Set objShortCut = objShell.CreateShortcut(StartFolder & "\" & ShortcutName & ".lnk")
    objShortCut.TargetPath = Dblquote(PathApplication)
    ObjShortCut.IconLocation = "%SystemRoot%\system32\SHELL32.dll,-25"
    objShortCut.Save
End Sub
'*********************************************************************************
Function DblQuote(Str)
    DblQuote = Chr(34) & Str & Chr(34)
End Function
'*********************************************************************************
Function Hidden_Run(MyProgram)
    Dim ws,Result
    Set ws = CreateObject("wscript.Shell")
    Result = ws.run(MyProgram,0,True) '0 to hide the program
    Hidden_Run = Result
End Function
'*********************************************************************************