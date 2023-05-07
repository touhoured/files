#SingleInstance Force
SetWorkingDir, %A_ScriptDir%
if (!A_IsAdmin) {
	try {
		Run *RunAs "%A_ScriptFullPath%"
	} catch e {
		MsgBox, Failed to run script with administrator rights
		ExitApp
	}
}

Return
~ RControl & F10::Reload
~ RControl & F12::ExitApp

; ~ *XButton2 Up::Reload
~XButton2::
	while GetKeyState("LButton","P") {
		Click
		Sleep 20
	}
	while GetKeyState("RButton","P") {
		Click Right
		Sleep 20
	}
	if WinActive("ahk_exe SCPSL.exe") {
		while GetKeyState("E","P") {
			Send {e}
			Sleep 20
		}
	}
	if WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe") {
		while GetKeyState("F","P") {
			Send {f}
			Sleep 20
			Send {f}
			Sleep 20
			Send {WheelDown}
			Sleep 20
		}
	}
Return
