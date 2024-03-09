#SingleInstance Force

~$!q::
{
    if WinActive("ahk_exe SCPSL.exe") {
        Sleep 400
        Send "{q Down}"
        }
}

~$MButton::
{
    if WinActive("ahk_exe SCPSL.exe") {
        Send "{q Down}"
        Sleep 1000
        Send "{q Up}"
        }
}

~$!v::
{
    if WinActive("ahk_exe SCPSL.exe") {
        Sleep 200
        Send "{v Down}"
        }
}
