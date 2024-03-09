#SingleInstance Force
#UseHook True
InstallKeybdHook

~RControl & F12:: ExitApp
~RControl & F10:: Reload

; 1600x900 English
~!y::
{
	Sleep 200
	while !GetKeyState("Y", "P") AND (WinActive("ahk_exe GenshinImpact.exe") OR WinActive("ahk_exe YuanShen.exe")){
		Sleep 200
		Send "{y Down}"
		Sleep 200
		Send "{y Up}"
	}

}