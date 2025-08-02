; =========================
;   FLASHING IMAGE WARNING
; =========================

; definitely a better way to do this however virtual desktop is not working for me
; this is pretty unusable with animation effects on.
; the sleep is for windows to register the keystrokes

#Requires AutoHotkey v2.0
#SingleInstance Force

global currentDesktop := 1

GoToDesktop(targetDesktop) {
    global currentDesktop
    
    if (targetDesktop = currentDesktop) {
        return
    }
    
    diff := targetDesktop - currentDesktop
    
    if (diff > 0) {
        Loop diff {
            Send "^#{Right}"
            Sleep 80
        }
    } else {
        Loop Abs(diff) {
            Send "^#{Left}"
            Sleep 80
        }
    }
    
    currentDesktop := targetDesktop
}


F1::{
    GoToDesktop(1)
}

F2::{
    GoToDesktop(2)
}

F3::{
    GoToDesktop(3)
}

F4::{
    GoToDesktop(4)
}

