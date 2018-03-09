#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.3
 Author:         Javier Barrera

 Script Function:
	Start script manually, saves text from clipboard buffer into variable.
	When 'esacpe' key is pressed the script dumps variable collection back
	into clipboard buffer for pasting.

 Credit:
    xcal- https://www.autoitscript.com/forum/topic/37419-clipboard-to-variable-and-vice-versa/

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
HotKeySet('{escape}', 'quit')

$quit = 0
ClipPut('')
$myvar = ''

While 1
    $clip1 = ClipGet()
	ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : ClipGet() = ' & ClipGet() & @CRLF & '>Error code: ' & @error & @CRLF) ;### Debug Console
    Do
        $clip2 = ClipGet()
        Sleep(50)
    Until $clip1 <> $clip2
    Sleep(50)
    $myvar &= $clip2 & @CRLF  ;this is the magic line sticking clips to one variable
WEnd

Func quit()
	ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : MSGBOX = ' & MSGBOX & @CRLF & '>Error code: ' & @error & @CRLF) ;### Debug Console
	ClipPut('')
	ClipPut($myvar)
    Exit
EndFunc

