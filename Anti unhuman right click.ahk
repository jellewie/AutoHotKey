;This will make it so the mouse can only click 1000 times per second
;Handy if you have a mouse that resistred clicks sometimes double

;RIGHT MOUSE FIX
RButton::
Click down right
sleep, 25
KeyWait, RButton, U
Click up right
#KeyHistory 1