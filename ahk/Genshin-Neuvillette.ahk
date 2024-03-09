#SingleInstance Force

~RControl & F12:: ExitApp
~RControl & F10:: Reload

~XButton2::
{
	Sleep 200
	if WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe") {
		Click "Down"
		while GetKeyState("XButton2", "P") {
			x := 1000
			y := 0
			DllCall("mouse_event", "uint", 1, "int", x, "int", y, "uint", 0, "int", 0)
		}
		Click "Up"
	}
	Sleep 5
}