#SingleInstance
tray := A_TrayMenu ; For convenience.
tray.add "Language Tooltip_Laptop", MenuHandler
MenuHandler(Item, *) {
}
imm32 := DllCall("LoadLibrary", "Str", "imm32.dll", "Ptr")
IMECheckHangul()  
{
    hWnd := WinExist("A")
    hIME := DllCall("imm32\ImmGetDefaultIMEWnd", "UInt", hWnd, "UInt")
    temp := A_DetectHiddenWindows
    DetectHiddenWindows(True)
    res := SendMessage(0x0283, 0x0005, 0x0000, , "ahk_id " hIME)
    DetectHiddenWindows(temp)
    return res
}
ExitFunc(ExitReason, ExitCode)
{
    DllCall("FreeLibrary", "Ptr", imm32)
}
$+Space::
{
Send "{VK15SC138}"

Sleep(7)

;MsgBox IMECheckHangul()
if IMECheckHangul() = 0
{
ToolTip "E`nEnglish"
SetTimer () => ToolTip(), -2000
}else{
ToolTip "한`n한글입력"
SetTimer () => ToolTip(), -2000
}

OnExit(ExitFunc)
}

$SC1F2:: ;pc용
;$SC138:: ;laptop용
{
Send "{VK15SC138}"
Sleep(7)


;MsgBox IMECheckHangul()
if IMECheckHangul() = 0
{
ToolTip "E`nEnglish"
SetTimer () => ToolTip(), -2000
}else{
ToolTip "한`n한글입력"
SetTimer () => ToolTip(), -2000
}


OnExit(ExitFunc)
}