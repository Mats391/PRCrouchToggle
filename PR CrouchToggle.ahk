	OnExit, ExitSub
#include %A_ScriptDir%\libs\CrouchToggle.ahk
#include %A_ScriptDir%\libs\Config.ahk

;Some stuff that is suggested to use, dont know why tbh 
#NoEnv
#MaxHotkeysPerInterval 250
SendMode Input



;TitleMatchMode 1 = Window title begins with
SetTitleMatchMode 1

;Start timer
SetTimer, CheckWindow, 500

;Init
TEMP := GetKey( "crouch_ingame" )
Init_CrouchToggle( TEMP )


TEMP := GetKey("crouch")
if TEMP != none
	Hotkey, ~*%TEMP%, CrouchKey

TEMP := GetKey("prone")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("jump")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("enter")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("pos1")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("pos2")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("pos3")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("pos4")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("pos5")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("pos6")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("pos7")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("pos8")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("console")
if TEMP != none
	Hotkey, ~*%TEMP%, Uncrouch

TEMP := GetKey("squad")
if TEMP != none
	Hotkey, ~*%TEMP%, ChatKey

TEMP := GetKey("team")
if TEMP != none
	Hotkey, ~*%TEMP%, ChatKey

TEMP := GetKey("all")
if TEMP != none
	Hotkey, ~*%TEMP%, ChatKey

TEMP := GetKey("sprint")
if TEMP != none
	Hotkey, *%TEMP%, SprintKey

;clear TEMP
TEMP := ""
	
;Start as suspended
SuspendScript()
Return
	


;Check to see if PR window is active
CheckWindow:
	_temp := GetTitle()
	WinWaitActive, %_temp%, ,
		if ErrorLevel = 0
		{
			Suspend, off
		}

	WinWaitNotActive, %_temp%, ,
		if ErrorLevel = 0
		{
			SuspendScript()
		}
Return

;Let Alt+Tab deactivate the script
~!Tab::
	SuspendScript()
Return

CrouchKey:
		if(GetChatting() = 1)
			Return
			
		_temp := GetKey("crouch_ingame")
		SendInput {%_temp% down}

		_temp := GetKey("crouch")
		KeyWait, %_temp%
		ToggleCrouch()
Return
                    
Uncrouch:
	SetCrouch(0)
Return

ChatKey:
	SetChatting(1)
Return


~*Esc::	
	if GetChatting() = 0
	{
		ResetCrouch()
		Return
	}
	SetChatting(0)
Return

~*Enter:: 
~*NumpadEnter::
	SetChatting(0)
Return

SprintKey:		
	SetCrouch(0)
	
	_temp := GetKey("sprint")
	SendInput {%_temp% up}   

	Sleep 30

	SendInput {%_temp% Down}
	KeyWait %_temp% 
	SendInput {%_temp% Up} 
Return

SuspendScript()
{
	ResetCrouch()
	Suspend, on
}

GuiEscape:
GuiClose:
Exit:
ExitSub:
	ResetCrouch()	
	ExitApp
