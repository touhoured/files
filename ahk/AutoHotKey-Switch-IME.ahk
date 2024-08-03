#Include %A_ScriptDir%

timeInterval := 500

;    +-------------------------+-------------------------+
;    |     SubLanguage ID      |   Primary Language ID   |
;    +-------------------------+-------------------------+
;    15                    10  9                         0   bit

InChs() {
  ime_status := DllCall("GetKeyboardLayout", "int", 0, "UInt")
  return (ime_status & 0xffff) = 0x804 ; LANGID(Chinese) = 0x804
}

SwitchImeState(id) {
  SendMessage(0x283,  ; WM_IME_CONTROL
              0x002,  ; wParam IMC_SETCONVERSIONMODE
              1025,   ; lParam (Chinese)
              ,       ; Control (Window)
              id)
}

DetectHiddenWindows True

SetTimer Mainloop, 1000

MainLoop() {
  try {
    hWnd := WinGetID("A")
    id := DllCall("imm32\ImmGetDefaultIMEWnd", "Uint", hWnd, "Uint")

    if (InChs()) {
      SwitchImeState(id)
    }
  }
}