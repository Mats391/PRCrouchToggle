Init_CrouchToggle(pKey)
{
	Global g_key, g_toggle, g_chatting, g_crouchBefore
	g_toggle			:= 0
	g_chatting 		:= 0
	g_crouchBefore 	:= 0
	g_key := pKey
}


ResetCrouch()
{
	Global g_toggle, g_crouchBefore, g_chatting, g_key
	SendInput {%g_key% up}
	g_toggle			:= 0
}

SetCrouch(b, sendAgain := 0)
{
	Global g_toggle, g_crouchBefore, g_key
	g_toggle := b
	
	if g_toggle = 0
	{	
		if g_chatting = 1
			g_crouchBefore := 1
		SendInput {%g_key% up}
	}
	else
	{
		if sendAgain = 1
			SendInput {%g_key% down}
	}
}

ToggleCrouch()
{
	Global g_toggle
	if g_toggle = 1
		SetCrouch(0)
	else
		SetCrouch(1)
}

GetChatting()
{
	Global g_chatting
	Return g_chatting
}

SetChatting(b)
{
	Global g_chatting, g_crouchBefore, g_toggle
	g_chatting := b
	
	if g_chatting = 1
	{
		if g_toggle = 1
			g_crouchBefore := 1
		SetCrouch(0)
	}
	else
		if g_crouchBefore = 1
		{
			Sleep 200
			g_crouchBefore := 0
			setCrouch(1, 1)
		}
}
