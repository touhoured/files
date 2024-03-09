F11::
{
    Sleep 200
    while !GetKeyState("F11", "P") {
        Click
        Sleep 20
    }
}

F12::ExitApp