#SingleInstance Force
#UseHook True
InstallKeybdHook

; ~ *XButton2 Up::Reload
~XButton2::
{
	Sleep 200
		while !GetKeyState("XButton1","P") {
			Send "{Right}"
			Sleep 20
			Send "{Up}"
			Sleep 20
		}
}