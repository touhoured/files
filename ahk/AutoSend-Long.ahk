#SingleInstance Force

~XButton2::
{
	Sleep 200
	while GetKeyState("XButton2", "P") {
		; Random rand1, 30, 70
		Send "{Space}"
		Sleep 10
		Send "{Down}"
	}
}