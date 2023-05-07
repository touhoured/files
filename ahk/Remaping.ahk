#SingleInstance, Force
if (!A_IsAdmin) {
    try {
        Run *RunAs "%A_ScriptFullPath%"
    } catch e {
        MsgBox, Failed to run script with administrator rights
        ExitApp
    }
}

$*NumpadEnter::NumpadDot
$*NumpadDel::NumLock
$*NumpadDot::NumLock
$*NumpadAdd::NumpadDiv
$*NumpadSub::NumpadMult
$*NumpadDiv::NumpadAdd
$*NumpadMult::NumpadSub

$*Insert::Delete
$*Delete::End

~^F12::Suspend