;This is my big script that change some keybindings on games
;This also adds functionality to the extra mouse buttons in games that do not support this natively

;=======================================================

; Swap asdw to arrow keys and vise versa if the game is in focus
#If WinActive("Crusader") || WinActive("Stronghold")
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

#IfWinActive, Minecraft
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
#IfWinActive, Planetbase
{
   XButton2::
    	Send, {NumpadSub}
   	Return
   XButton1::
	Send, {NumpadAdd}
	Return
}
