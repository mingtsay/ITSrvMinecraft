; ITSrvMinecraft
;
; Functions:
; 1. Launcher
; 2. Patcher
;
; Author: Ming Tsay <mt @ aa.am>
; Version: v1.1.0
; Date: 2013/2/18
;

; Load GUI API
#include <GUIConstantsEx.au3>

Opt("GUIOnEventMode", 1)

; Startup Program
_Main()

Func _Main()
	Local $btnExit
	
	; Setup GUI
	GUICreate("ITSrvMinecraft 工業伺服器", 240, 120)
	
	$btnExit = GUICtrlCreateButton("Exit", 80, 50, 50, 20)
	
	; Events
	GUICtrlSetOnEvent($btnExit, "btnExit_Click")
	GUISetOnEvent($GUI_EVENT_CLOSE, "OnClose")
	
	; Display GUI
	GUISetState();
	
	; Wait until close
	While 1
		Sleep(1000)
	WEnd
EndFunc

; ===== Functions =====

Func btnExit_Click()
	Exit
EndFunc

Func OnClose()
	Exit
EndFunc
