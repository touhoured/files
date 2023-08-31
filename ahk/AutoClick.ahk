#SingleInstance Force

~XButton2::
{
	if WinActive("ahk_exe SCPSL.exe") {
		while GetKeyState("XButton2", "P") {
			Click
			Sleep 20
		}
	}
	if WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe") {
		while GetKeyState("LButton", "P") {
			; Random rand1, 30, 70
			Click
			Sleep 100
		}
	}
}