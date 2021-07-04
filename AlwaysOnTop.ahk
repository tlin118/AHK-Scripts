#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^+SPACE::
    WinSet, Alwaysontop, , A
    WinGet, ExStyle, Exstyle, A
    Tooltip, % (ExStyle & 0x8 = 0) ? "Always on Top OFF" : "Always on Top ON"
    Sleep, 500
    ToolTip
Return