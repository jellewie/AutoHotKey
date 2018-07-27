;This will make it so the mouse can only click 1000 times per second
;Handy if you have a mouse that resistred clicks sometimes double

;LEFT MOUSE FIX
LButton::
Click down left
sleep, 1
KeyWait, LButton, U
Click up left
#KeyHistory 1