#SingleInstance Force


~RControl & F12:: ExitApp
~RControl & F10:: Reload

; ~ *XButton2 Up::Reload
~XButton2::
{
	while GetKeyState("LButton","P") {
		Click
		Sleep 20
	}
	while GetKeyState("RButton","P") {
		Click "Right"
		Sleep 20
	}
	if WinActive("ahk_exe SCPSL.exe") {
		while GetKeyState("E","P") {
			Send "{e}"
			Sleep 20
		}
	}
	if WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe") {
		while GetKeyState("F","P") {
			Send "{f}"
			Sleep 20
			Send "{f}"
			Sleep 20
			Send "{WheelDown}"
			Sleep 20
		}
	}
	if WinActive("ahk_exe Palworld-Win64-Shipping.exe") {
		while GetKeyState("F","P") {
			Send "{f Down}"
			Sleep 20
			Send "{f Up}"
			Sleep 20
		}
	}
}
