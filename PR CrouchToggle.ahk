	OnExit, ExitSub
#include %A_ScriptDir%\libs\CrouchToggle.ahk
#include Config.ahk

;Some stuff that is suggested to use, dont know why tbh 
#NoEnv
#MaxHotkeysPerInterval 250
SendMode Input



;TitleMatchMode 1 = Window title begins with
SetTitleMatchMode 1

;Start timer
SetTimer, CheckWindow, 500

;Init
Init_CrouchToggle(CROUCH_KEY_INGAME)

Hotkey, ~*%CROUCH_KEY%, CrouchKey
Hotkey, ~*%PRONE_KEY%, Uncrouch
Hotkey, ~*%CONSOLE_KEY%, Uncrouch
Hotkey, ~*%ENTER_KEY%, Uncrouch
Hotkey, ~*%POS1_KEY%, Uncrouch
Hotkey, ~*%POS2_KEY%, Uncrouch
Hotkey, ~*%POS3_KEY%, Uncrouch
Hotkey, ~*%POS4_KEY%, Uncrouch
Hotkey, ~*%POS5_KEY%, Uncrouch
Hotkey, ~*%POS6_KEY%, Uncrouch
Hotkey, ~*%POS7_KEY%, Uncrouch
Hotkey, ~*%POS8_KEY%, Uncrouch
Hotkey, ~*%JUMP_KEY%, Uncrouch
Hotkey, ~*%SQUAD_CHAT_KEY%, ChatKey
Hotkey, ~*%TEAM_CHAT_KEY%, ChatKey
Hotkey, ~*%ALL_CHAT_KEY%, ChatKey
Hotkey, *%SPRINT_KEY%, SprintKey

;Start as suspended
SuspendScript()
Return
	


;Check to see if PR window is active
CheckWindow:
	WinWaitActive, %PRWIN_TITLE%, ,
		if ErrorLevel = 0
		{
			Suspend, off
		}

	WinWaitNotActive, %PRWIN_TITLE%, ,
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
			
		SendInput {%CROUCH_KEY_INGAME% down}

		KeyWait, %CROUCH_KEY%
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
	SendInput {%SPRINT_KEY% up}   

	Sleep 30

	SendInput {%SPRINT_KEY% Down}
	KeyWait %SPRINT_KEY% 
	SendInput {%SPRINT_KEY% Up} 
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
