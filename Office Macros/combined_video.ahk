/* 
----------------------------------------------------------------------------

 AutoHotKey Version: 1.1.26.01
 Author:   Javier Barrera

 Script Function: 
	script to detect Windows video app open, switch focus to running app,
	send appropriate video on/off shortcut key. 

---------------------------------------------------------------------------- 
*/

; Lync 2016 Video toggle - Win+F5
IfWinExist, ahk_class LyncConversationWindowClass
{
	WinActivate
	Send, #{F5}
	return
}

; Zoom 4.x Video toggle - alt+v
IfWinExist, ahk_class ZPContentViewWndClass
{
	WinActivate
	Send, !v
	return
}
