#SingleInstance Force
#UseHook True
InstallKeybdHook

~RControl & F12:: ExitApp
~RControl & F10:: Reload

; 1600x900 English
~!f::
{
	Sleep 200
	if WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe") OR WinActive("ahk_exe Palworld-Win64-Shipping.exe") {
		while !GetKeyState("F", "P") AND (WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe") OR WinActive("ahk_exe Palworld-Win64-Shipping.exe")) {
			Sleep 100
			Send "f"
		}
	}
}