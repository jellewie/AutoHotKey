;This is my big script that change some keybindings on games
;This also adds functionality to the extra mouse buttons in games that do not support this natively

;The next 2 lines will disable the 'Insert button', use Alt+Insert to use it
$Insert::return
!Insert::Send, {Insert} 

;=======================================================

;Swap asdw to arrow keys and vise versa if the game is in focus

;WinActive("ahk_exe Something.exe") ;Would also work

#If WinActive("Crusader") or WinActive("Stronghold") or WinActive("TmForever")
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

#If WinActive("Minecraft")
{
   XButton2::
    Send, t
	sleep 50
	Send, /undo {enter}
	Sleep 100
   	Return
   XButton1::
	sendinput, {F3 down}
	Sleep 100
	Send, n {a up} {D up}
	Sleep 100
	sendinput, {F3 up}
    Return
}
#If WinActive("Planetbase")
{
   XButton2::
    Send, {NumpadSub}
   	Return
   XButton1::
	Send, {NumpadAdd}
	Return
}
#If WinActive("Inventor")
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