#SingleInstance Force
#UseHook True
InstallKeybdHook

; ~ *XButton2 Up::Reload
~XButton2::
{
	if WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe") {
		while GetKeyState("F","P") {
			Send "f"
			Sleep 20
			Send "f"
			Sleep 20
			Send "{WheelDown}"
			Sleep 20
		}
	}
}
~XButton1::
{
	if WinActive("ahk_exe SCPSL.exe") {
		; while GetKeyState("E","P") {
		while GetKeyState("XButton1","P") {
			Send "e"
			Sleep 20
		}
	}
}