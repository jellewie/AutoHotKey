;Orginal from https://autohotkey.com/board/topic/68257-toggle-set-default-audio-device-in-windows-7/
;But eddeded by JelleWho
;
;This system opens the sound screen and presses down X times and then set that on as default and closes that screen. resulting in chaning default playback device
; 

Ctrl::
 {
	Run, mmsys.cpl
	WinWait,Sound ;Change "Sound" to the name of the playback sound window (the text on top of that window)
	if (toggle == 1) {
		ControlSend,SysListView321,{Down 1} ; This number selects the matching audio device in the list from up to down, change it accordingly
		toggle = 1
    	}else if (toggle == 2){
		ControlSend,SysListView321,{Down 2} ; This number selects the matching audio device in the list from up to down, change it accordingly
		toggle = 2
    	}else {
		ControlSend,SysListView321,{Down 3} ; This number selects the matching audio device in the list from up to down, change it accordingly
		toggle = 3
	}
	ControlClick,&Set Default ; Change "&Set Default" to the name of the button in your local language
	ControlClick,OK	
}
return