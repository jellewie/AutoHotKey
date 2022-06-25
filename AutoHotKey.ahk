;This is my big script that change some keybindings on games
;This also adds functionality to the extra mouse buttons in games that do not support this natively

;The next 2 lines will disable the 'Insert button', use Alt+Insert to use it
$Insert::return
!Insert::Send, {Insert} 

;The next 2 lines will disable the 'ScrollLock button', use Alt+ScrollLock to use it
$ScrollLock::return
!ScrollLock::Send, {ScrollLock} 


;=======================================================
;Swap asdw to arrow keys and vise versa if the game is in focus
#If WinActive("ahk_exe Stronghold_Crusader_Extreme.exe") or WinActive("ahk_exe Crusader.exe") or WinActive("ahk_exe Stronghold.exe") or WinActive("ahk_exe TmForever.exe")
{
	w::Up
	a::Left
	s::Down
	d::Right
	Up::w
	Left::a
	Down::s
	Right::d
}

;=======================================================
;		And now for the extra buttons on the mouse 
;=======================================================
;Unify camera comtrols
#If WinActive("ahk_exe Inventor.exe")
{
   XButton1::
	Send {MButton down}
	KeyWait, XButton1
	Send {MButton up}
	return
   XButton2::
	Send {Shift down}
	Send {MButton down}
	KeyWait, XButton2
	Send {Shift up}
	Send {MButton up}
	return
}
#If WinActive("ahk_exe FreeCAD.exe")
{
   XButton1::
	Send {Ctrl down}
	Send {RButton down}
	KeyWait, XButton2
	Send {Ctrl up}
	Send {RButton up}
	return
   XButton2::
	Send {Shift down}
	Send {RButton down}
	KeyWait, XButton2
	Send {Shift up}
	Send {RButton up}
	return
}
#If WinActive("ahk_exe Cura.exe")
{
   XButton1::
	Send {MButton down}
	KeyWait, XButton1
	Send {MButton up}
	return
   XButton2::
	Send {RButton down}
	KeyWait, XButton2
	Send {RButton up}
	return
}

;More stuff

#If WinActive("ahk_exe Minecraft.exe")
{
   XButton1::
	sendinput, {F3 down}
	Sleep 100
	Send, n {a up} {D up}
	Sleep 100
	sendinput, {F3 up}
   Return
   XButton2::
    Send, t
	sleep 50
	Send, /undo {enter}
	Sleep 100
   	Return
}

#If WinActive("ahk_exe Planetbase.exe")
{
   XButton1::
	Send, {NumpadAdd}
	Return
   XButton2::
    Send, {NumpadSub}
   	Return
}

#If WinActive("ahk_exe excel.exe") or WinActive("ahk_exe soffice.bin") 
{
   XButton1::
	Send $
	return
   XButton2::
	Send $
	return
}