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
IniRead, CROUCH_KEY, %CONFIG_PATH%, StanceKeys, CROUCH
if CROUCH_KEY = ERROR
	IniWrite, %DEFAULT_CROUCH_KEY%, %CONFIG_PATH%, StanceKeys, CROUCH
	
IniRead, CROUCH_INGAME_KEY, %CONFIG_PATH%, StanceKeys, CROUCH_INGAME
if CROUCH_INGAME_KEY = ERROR
	IniWrite, %DEFAULT_CROUCH_INGAME_KEY%, %CONFIG_PATH%, StanceKeys, CROUCH_INGAME

IniRead, PRONE_KEY, %CONFIG_PATH%, StanceKeys, PRONE
if PRONE_KEY = ERROR
	IniWrite, %DEFAULT_PRONE_KEY%, %CONFIG_PATH%, StanceKeys, PRONE

IniRead, JUMP_KEY, %CONFIG_PATH%, StanceKeys, JUMP
if JUMP_KEY = ERROR
	IniWrite, %DEFAULT_JUMP_KEY%, %CONFIG_PATH%, StanceKeys, JUMP

IniRead, SPRINT_KEY, %CONFIG_PATH%, StanceKeys, SPRINT
if SPRINT_KEY = ERROR
	IniWrite, %DEFAULT_SPRINT_KEY%, %CONFIG_PATH%, StanceKeys, SPRINT	


; Chat keys
IniRead, SQUAD_CHAT_KEY, %CONFIG_PATH%, ChatKeys, SQUAD_CHAT
if SQUAD_CHAT_KEY = ERROR
	IniWrite, %DEFAULT_SQUAD_CHAT_KEY%, %CONFIG_PATH%, ChatKeys, SQUAD_CHAT
	
IniRead, TEAM_CHAT_KEY, %CONFIG_PATH%, ChatKeys, TEAM_CHAT
if TEAM_CHAT_KEY = ERROR
	IniWrite, %DEFAULT_TEAM_CHAT_KEY%, %CONFIG_PATH%, ChatKeys, TEAM_CHAT

IniRead, ALL_CHAT_KEY, %CONFIG_PATH%, ChatKeys, ALL_CHAT
if ALL_CHAT_KEY = ERROR
	IniWrite, %DEFAULT_ALL_CHAT_KEY%, %CONFIG_PATH%, ChatKeys, ALL_CHAT

IniRead, CONSOLE_KEY, %CONFIG_PATH%, ChatKeys, CONSOLE
if CONSOLE_KEY = ERROR
	IniWrite, %DEFAULT_CONSOLE_KEY%, %CONFIG_PATH%, ChatKeys, CONSOLE	

; Vehicle keys
IniRead, ENTER_KEY, %CONFIG_PATH%, VehicleKeys, ENTER
if ENTER_KEY = ERROR
	IniWrite, %DEFAULT_ENTER_KEY%, %CONFIG_PATH%, VehicleKeys, ENTER
	
IniRead, POS1_KEY, %CONFIG_PATH%, VehicleKeys, POS1
if POS1_KEY = ERROR
	IniWrite, %DEFAULT_POS1_KEY%, %CONFIG_PATH%, VehicleKeys, POS1	
	
IniRead, POS2_KEY, %CONFIG_PATH%, VehicleKeys, POS2
if POS1_KEY = ERROR
	IniWrite, %DEFAULT_POS2_KEY%, %CONFIG_PATH%, VehicleKeys, POS2	
	
IniRead, POS3_KEY, %CONFIG_PATH%, VehicleKeys, POS3
if POS3_KEY = ERROR
	IniWrite, %DEFAULT_POS3_KEY%, %CONFIG_PATH%, VehicleKeys, POS3	
	
IniRead, POS4_KEY, %CONFIG_PATH%, VehicleKeys, POS4
if POS4_KEY = ERROR
	IniWrite, %DEFAULT_POS4_KEY%, %CONFIG_PATH%, VehicleKeys, POS4	
	
IniRead, POS5_KEY, %CONFIG_PATH%, VehicleKeys, POS5
if POS5_KEY = ERROR
	IniWrite, %DEFAULT_POS5_KEY%, %CONFIG_PATH%, VehicleKeys, POS5	
	
IniRead, POS6_KEY, %CONFIG_PATH%, VehicleKeys, POS6
if POS6_KEY = ERROR
	IniWrite, %DEFAULT_POS6_KEY%, %CONFIG_PATH%, VehicleKeys, POS6	
	
IniRead, POS7_KEY, %CONFIG_PATH%, VehicleKeys, POS7
if POS1_KEY = ERROR
	IniWrite, %DEFAULT_POS7_KEY%, %CONFIG_PATH%, VehicleKeys, POS7	
	
IniRead, POS8_KEY, %CONFIG_PATH%, VehicleKeys, POS8
if POS1_KEY = ERROR
	IniWrite, %DEFAULT_POS8_KEY%, %CONFIG_PATH%, VehicleKeys, POS8	

; Functions

; Return asked key
GetKey( keyName )
{
	Global CROUCH_KEY, CROUCH_INGAME_KEY, PRONE_KEY, JUMP_KEY, SPRINT_KEY
	Global SQUAD_CHAT_KEY, TEAM_CHAT_KEY, ALL_CHAT_KEY, CONSOLE_KEY
	Global ENTER_KEY, POS1_KEY, POS2_KEY, POS3_KEY, POS4_KEY, POS5_KEY, POS6_KEY, POS7_KEY, POS8_KEY,

	; Stance keys
	if keyName = crouch
		return %CROUCH_KEY%
	if keyName = crouch_ingame
		return %CROUCH_INGAME_KEY%
	if keyName = prone
		return %PRONE_KEY%
	if keyName = jump
		return %JUMP_KEY%
	if keyName = sprint
		return %SPRINT_KEY%
		
	; Chat keys
	if keyName = squad
		return %SQUAD_CHAT_KEY%
	if keyName = team
		return %TEAM_CHAT_KEY%
	if keyName = all
		return %ALL_CHAT_KEY%
	if keyName = console
		return %CONSOLE_KEY%
		
	; Vehicle keys
	if keyName = enter
		return %ENTER_KEY%
	if keyName = pos1
		return %POS1_KEY%
	if keyName = pos2
		return %POS2_KEY%
	if keyName = pos3
		return %POS3_KEY%
	if keyName = pos4
		return %POS4_KEY%
	if keyName = pos5
		return %POS5_KEY%
	if keyName = pos6
		return %POS6_KEY%
	if keyName = pos7
		return %POS7_KEY%
	if keyName = pos8
		return %POS8_KEY%
		
	return "none"		
}

GetTitle()
{
	Global PRWIN_TITLE
	return %PRWIN_TITLE%
}
