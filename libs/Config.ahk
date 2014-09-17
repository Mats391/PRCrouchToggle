CONFIG_PATH := A_ScriptDir . "/config.ini"

; Defaults
; Title of PR window. Do not add any of the "pid: xyz" 
PRWIN_TITLE := "PRBF2 (1.5.3153-802.0"

; Stance keys
DEFAULT_CROUCH_KEY 			:= "C"
DEFAULT_CROUCH_INGAME_KEY 	:= "RWin"
DEFAULT_PRONE_KEY 			:= "Y"
DEFAULT_JUMP_KEY 			:= "Space"
;This should stay as LShift other keys might not work
DEFAULT_SPRINT_KEY			:= "LShift"


; Chat keys
DEFAULT_SQUAD_CHAT_KEY 		:= "L"
DEFAULT_TEAM_CHAT_KEY		:= "K"
DEFAULT_ALL_CHAT_KEY		:= "J"
DEFAULT_CONSOLE_KEY			:= "^"

; Vehicle keys
DEFAULT_ENTER_KEY			:= "E"
DEFAULT_POS1_KEY			:= "F1"
DEFAULT_POS2_KEY			:= "F2"
DEFAULT_POS3_KEY			:= "F3"
DEFAULT_POS4_KEY			:= "F4"
DEFAULT_POS5_KEY			:= "F5"
DEFAULT_POS6_KEY			:= "F6"
DEFAULT_POS7_KEY			:= "F7"
DEFAULT_POS8_KEY			:= "F8"

; Check if file exists
;IfNotExist, CONFIG_PATH
	

; Read all values

; Stance keys
IniRead, g_crouch_key, %CONFIG_PATH%, StanceKeys, CROUCH
if g_crouch_key = ERROR
{
	IniWrite, %DEFAULT_CROUCH_KEY%, %CONFIG_PATH%, StanceKeys, CROUCH
	g_crouch_key := DEFAULT_CROUCH_KEY
}
	
IniRead, g_crouch_ingame_key, %CONFIG_PATH%, StanceKeys, CROUCH_INGAME
if g_crouch_ingame_key = ERROR
{
	IniWrite, %DEFAULT_CROUCH_INGAME_KEY%, %CONFIG_PATH%, StanceKeys, CROUCH_INGAME
	g_crouch_ingame_key := DEFAULT_CROUCH_INGAME_KEY
}

IniRead, g_prone_key, %CONFIG_PATH%, StanceKeys, PRONE
if g_prone_key = ERROR
{
	IniWrite, %DEFAULT_PRONE_KEY%, %CONFIG_PATH%, StanceKeys, PRONE
	g_prone_key := DEFAULT_PRONE_KEY
}

IniRead, g_jump_key, %CONFIG_PATH%, StanceKeys, JUMP
if g_jump_key = ERROR
{
	IniWrite, %DEFAULT_JUMP_KEY%, %CONFIG_PATH%, StanceKeys, JUMP
	g_jump_key := DEFAULT_JUMP_KEY
}

IniRead, g_sprint_key, %CONFIG_PATH%, StanceKeys, SPRINT
if g_sprint_key = ERROR
{
	IniWrite, %DEFAULT_SPRINT_KEY%, %CONFIG_PATH%, StanceKeys, SPRINT	
	g_sprint_key := DEFAULT_SPRINT_KEY
}


; Chat keys
IniRead, g_squad_chat_key, %CONFIG_PATH%, ChatKeys, SQUAD_CHAT
if g_squad_chat_key = ERROR
{
	IniWrite, %DEFAULT_SQUAD_CHAT_KEY%, %CONFIG_PATH%, ChatKeys, SQUAD_CHAT
	g_squad_chat_key := DEFAULT_SQUAD_CHAT_KEY
}
	
IniRead, g_team_chat_key, %CONFIG_PATH%, ChatKeys, TEAM_CHAT
if g_team_chat_key = ERROR
{
	IniWrite, %DEFAULT_TEAM_CHAT_KEY%, %CONFIG_PATH%, ChatKeys, TEAM_CHAT
	g_team_chat_key := DEFAULT_TEAM_CHAT_KEY
}

IniRead, g_all_chat_key, %CONFIG_PATH%, ChatKeys, ALL_CHAT
if g_all_chat_key = ERROR
{
	IniWrite, %DEFAULT_ALL_CHAT_KEY%, %CONFIG_PATH%, ChatKeys, ALL_CHAT
	g_all_chat_key := DEFAULT_ALL_CHAT_KEY
}

IniRead, g_console_key, %CONFIG_PATH%, ChatKeys, CONSOLE
if g_console_key = ERROR
{
	IniWrite, %DEFAULT_CONSOLE_KEY%, %CONFIG_PATH%, ChatKeys, CONSOLE
	g_console_key := DEFAULT_CONSOLE_KEY
}

; Vehicle keys
IniRead, g_enter_key, %CONFIG_PATH%, VehicleKeys, ENTER
if g_enter_key = ERROR
{
	IniWrite, %DEFAULT_ENTER_KEY%, %CONFIG_PATH%, VehicleKeys, ENTER
	g_enter_key := DEFAULT_ENTER_KEY
}
	
IniRead, g_pos1_key, %CONFIG_PATH%, VehicleKeys, POS1
if g_pos1_key = ERROR
{
	IniWrite, %DEFAULT_POS1_KEY%, %CONFIG_PATH%, VehicleKeys, POS1	
	g_pos1_key := DEFAULT_POS1_KEY
}
	
IniRead, g_pos2_key, %CONFIG_PATH%, VehicleKeys, POS2
if g_pos1_key = ERROR
{
	IniWrite, %DEFAULT_POS2_KEY%, %CONFIG_PATH%, VehicleKeys, POS2	
	g_pos2_key := DEFAULT_POS2_KEY
}
	
IniRead, g_pos3_key, %CONFIG_PATH%, VehicleKeys, POS3
if g_pos3_key = ERROR
{
	IniWrite, %DEFAULT_POS3_KEY%, %CONFIG_PATH%, VehicleKeys, POS3	
	g_pos3_key := DEFAULT_POS3_KEY
}
	
IniRead, g_pos4_key, %CONFIG_PATH%, VehicleKeys, POS4
if g_pos4_key = ERROR
{
	IniWrite, %DEFAULT_POS4_KEY%, %CONFIG_PATH%, VehicleKeys, POS4	
	g_pos4_key := DEFAULT_POS4_KEY
}
	
IniRead, g_pos5_key, %CONFIG_PATH%, VehicleKeys, POS5
if g_pos5_key = ERROR
{
	IniWrite, %DEFAULT_POS5_KEY%, %CONFIG_PATH%, VehicleKeys, POS5	
	g_pos5_key := DEFAULT_POS5_KEY
}
	
IniRead, g_pos6_key, %CONFIG_PATH%, VehicleKeys, POS6
if g_pos6_key = ERROR
{
	IniWrite, %DEFAULT_POS6_KEY%, %CONFIG_PATH%, VehicleKeys, POS6	
	g_pos6_key := DEFAULT_POS6_KEY
}
	
IniRead, g_pos7_key, %CONFIG_PATH%, VehicleKeys, POS7
if g_pos1_key = ERROR
{
	IniWrite, %DEFAULT_POS7_KEY%, %CONFIG_PATH%, VehicleKeys, POS7	
	g_pos7_key := DEFAULT_POS7_KEY
}
	
IniRead, g_pos8_key, %CONFIG_PATH%, VehicleKeys, POS8
if g_pos1_key = ERROR
{
	IniWrite, %DEFAULT_POS8_KEY%, %CONFIG_PATH%, VehicleKeys, POS8	
	g_pos8_key := DEFAULT_POS8_KEY
}
	
; Clear defaults
DEFAULT_CROUCH_KEY 			:= ""
DEFAULT_CROUCH_INGAME_KEY 	:= ""
DEFAULT_PRONE_KEY 			:= ""
DEFAULT_JUMP_KEY 			:= ""
DEFAULT_SPRINT_KEY			:= ""
DEFAULT_SQUAD_CHAT_KEY 		:= ""
DEFAULT_TEAM_CHAT_KEY		:= ""
DEFAULT_ALL_CHAT_KEY		:= ""
DEFAULT_CONSOLE_KEY			:= ""
DEFAULT_ENTER_KEY			:= ""
DEFAULT_POS1_KEY			:= ""
DEFAULT_POS2_KEY			:= ""
DEFAULT_POS3_KEY			:= ""
DEFAULT_POS4_KEY			:= ""
DEFAULT_POS5_KEY			:= ""
DEFAULT_POS6_KEY			:= ""
DEFAULT_POS7_KEY			:= ""
DEFAULT_POS8_KEY			:= ""

; clear config path
CONFIG_PATH := ""
; #########################################	
; Functions
; #########################################	

; Return asked key
GetKey( keyName )
{
	Global g_crouch_key, g_crouch_ingame_key, g_prone_key, g_jump_key, g_sprint_key
	Global g_squad_chat_key, g_team_chat_key, g_all_chat_key, g_console_key
	Global g_enter_key, g_pos1_key, g_pos2_key, g_pos3_key, g_pos4_key, g_pos5_key, g_pos6_key, g_pos7_key, g_pos8_key

	; Stance keys
	if keyName = crouch
		return %g_crouch_key%
	if keyName = crouch_ingame
		return %g_crouch_ingame_key%
	if keyName = prone
		return %g_prone_key%
	if keyName = jump
		return %g_jump_key%
	if keyName = sprint
		return %g_sprint_key%
		
	; Chat keys
	if keyName = squad
		return %g_squad_chat_key%
	if keyName = team
		return %g_team_chat_key%
	if keyName = all
		return %g_all_chat_key%
	if keyName = console
		return %g_console_key%
		
	; Vehicle keys
	if keyName = enter
		return %g_enter_key%
	if keyName = pos1
		return %g_pos1_key%
	if keyName = pos2
		return %g_pos2_key%
	if keyName = pos3
		return %g_pos3_key%
	if keyName = pos4
		return %g_pos4_key%
	if keyName = pos5
		return %g_pos5_key%
	if keyName = pos6
		return %g_pos6_key%
	if keyName = pos7
		return %g_pos7_key%
	if keyName = pos8
		return %g_pos8_key%
		
	return "none"		
}

GetTitle()
{
	Global PRWIN_TITLE
	return %PRWIN_TITLE%
}
