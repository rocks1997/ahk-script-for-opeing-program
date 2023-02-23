
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



SetNumLockState, AlwaysOn


;lunch windows calculater

NumLock::
	IfWinExist, Calculator
		{
		IfWinActive, Calculator
			{
			WinClose, Calculator
			}
		else
			{
			WinActivate, Calculator
			}
		}
	else
		{
		Run calc
		WinActivate, Calculator
		}
	return
	
;lunch MS Excel

^Pause::
	IfWinExist, excel
		{
		IfWinActive, excel
			{
			WinClose, excel
			}
		else
			{
			WinActivate, excel
			}
		}
	else
		{
		Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel.lnk
		WinActivate, excel
		}
	return

;lunch Tally

SetNumLockState, AlwaysOn

>+NumLock::
	IfWinExist, Tally
		{
		IfWinActive, Tally
			{
			WinClose, Tally
			}
		else
			{
			WinActivate, Tally
			}
		}
	else
		{
		Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TallyPrime.lnk
		WinActivate, Tally
		}
	return
	
		
	
