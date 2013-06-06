#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Counter for successful tests
success := 0


TrayTip Running tests, . . ., 30, 1

; --- Template ---------
;{ Test := ""
;    ; Testcode here
;} success++
