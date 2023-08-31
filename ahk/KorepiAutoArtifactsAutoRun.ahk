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
			;Send "{w Down}"

			; 地脉异常
			Color1 := PixelGetColor(1200, 350)
			Color2 := PixelGetColor(1300, 350)
			Color3 := PixelGetColor(1400, 350)
			Color4 := PixelGetColor(1500, 350)
			Color := Color1 
			if Color1 == Color2 AND Color1 == Color3 AND Color1 == Color4 {
				Click
			}
			; 继续挑战
			Color11 := PixelGetColor(719, 310)
			Color12 := PixelGetColor(734, 310)
			Color13 := PixelGetColor(765, 310)
			Color14 := PixelGetColor(857, 310)
			Color := Color11
			if Color11 == Color12 AND Color11 == Color13 AND Color11 == Color14 {
				Click 983, 830
			}
		}
		;Send "{w Up}"
	}
}