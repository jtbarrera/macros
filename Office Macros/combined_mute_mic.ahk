/* 
----------------------------------------------------------------------------

 AutoHotKey Version: 1.1.26.01
 Author:   Javier Barrera

 Script Function: 
	script to detect Windows video app open, switch focus to running app,
	send appropriate audio mute shortcut key. can be used to mute and unmute.

---------------------------------------------------------------------------- 
*/

; Lync 2016 microphone mute - Win+F4
IfWinExist, ahk_class LyncConversationWindowClass
{
	WinActivate
	Send, #{F4}
	return
}

; Zoom 4.x microphone mute - alt+a
IfWinExist, ahk_class ZPContentViewWndClass
{
	WinActivate
	Send, !a
	return
}

; Skype 7.x microphone mute - ctrl+m
IfWinExist, ahk_class tSkMainForm
{
	WinActivate
	Send, ^m
	return
}
