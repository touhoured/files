#SingleInstance Force
full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try
    {
        if A_IsCompiled
            Run '*RunAs "' A_ScriptFullPath '" /restart'
        else
            Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
    }
    ExitApp
}

RunScript(Name)
{
    Run '"' A_AhkPath '" /restart "' A_ScriptDir '\' Name '"',,,&PID
    return PID
}

PID1 := RunScript("Bhop.ahk")
PID2 := RunScript("AutoUse.ahk")
PID3 := RunScript("AutoClick.ahk")
PID4 := RunScript("AutoVoice.ahk")
PID5 := RunScript("ForceKill.ahk")

~RControl & F10::Reload

~RControl & F12::
{
    ProcessClose PID1
    ProcessClose PID2
    ProcessClose PID3
    ProcessClose PID4
    ProcessClose PID5
    ExitApp
}