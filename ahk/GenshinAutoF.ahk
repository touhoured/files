#SingleInstance Force
#UseHook True
InstallKeybdHook

~RControl & F12:: ExitApp
~RControl & F10:: Reload

; 1600x900 English
~!f::
{
	Sleep 200
	if WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe") {
		while !GetKeyState("F", "P") AND (WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe")){
			Sleep 100
			
			Send "f"
		}
	}
}