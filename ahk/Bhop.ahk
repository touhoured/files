#SingleInstance Force

; ~$*MButton::
{
    if WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe") {
        ErrorLevel := KeyWait("Space", "D t3")
        if ErrorLevel {
            Exit
        }
        Sleep 200
        Send "{w Down}"
        Send "{RButton Down}"
        Sleep 400
        While GetKeyState("Space", "P") {
            Send "{Space}"
            Sleep 20
        }       
        Send "{w Up}"
        Send "{RButton Up}"
    }
    if WinActive("ahk_exe javaw.exe") {
        ErrorLevel := KeyWait("Space", "D t3")
        if ErrorLevel {
            Exit
        }
        Sleep 200
        While !GetKeyState("Space", "P") {
            Send "{Space}"
            Sleep 20
        }
    }
;    if WinActive("ahk_exe SCPSL.exe"){
;        ErrorLevel := KeyWait("Space", "D t3")
;        if ErrorLevel {
;            Exit
;        }
;        Sleep 200
;        While !GetKeyState("Space", "P") {
;            Send "{Space}"
;            Sleep 20
;        }
;    }
}