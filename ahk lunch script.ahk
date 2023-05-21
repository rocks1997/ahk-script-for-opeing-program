
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



SetNumLockState, AlwaysOn

setcapslockstate, Alwaysoff
;quit any application alt+f4
#q::
	send !{f4}
	return

;lunch windows calculater

NumLock::
	IfWinActive, ahk_exe tally.exe
			{send ^n
			}
		else
	
	{IfWinExist, Calculator
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
		}
	return
	
;lunch MS Excel

^Pause::
		IfWinExist, excel
		{
		IfWinActive, excel
			{
			WinClose, ahk_class XLMAIN
		
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
	IfWinExist, ahk_exe tally.exe
		{
		IfWinActive, ahk_exe tally.exe
			{
			WinClose, ahk_exe tally.exe
			}
		else
			{
			WinActivate, ahk_exe tally.exe
			}
		}
	else
		{
		Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TallyPrime Edit Log.lnk
		WinActivate, ahk_exe tally.exe
		}
	return
	
		
Insert::PrintScreen
	return
PrintScreen::Insert
	return

;chrome
NumLock & Numpad0::
	IfWinExist, ahk_exe chrome.exe
		{
		IfWinActive, ahk_exe chrome.exe
			{
			WinClose, ahk_exe chrome.exe
			}
		else
			{
			WinActivate, ahk_exe chrome.exe
			}
		}
	else
		{
		Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk
		WinActivate, ahk_exe chrome.exe
		}
	return
;run termianl


NumLock & NumpadDiv::
	IfWinExist, ahk_exe WindowsTerminal.exe
		{
		IfWinActive, ahk_exe WindowsTerminal.exe
			{
			WinClose, ahk_exe WindowsTerminal.exe
			}
		else
			{
			WinActivate, ahk_exe WindowsTerminal.exe
			}
		}
	else
		{
		Run wt
		WinActivate, ahk_exe WindowsTerminal.exe
		}
	return
; run ahk_exe Obsidian.exe

NumLock & NumpadMult::
	IfWinExist, ahk_exe Obsidian.exe
		{
		IfWinActive, ahk_exe Obsidian.exe
			{
			WinClose, ahk_exe Obsidian.exe
			}
		else
			{
			WinActivate, ahk_exe Obsidian.exe
			}
		}
	else
		{
		Run C:\Users\bijay-pc\AppData\Local\Obsidian\Obsidian.exe
		WinActivate, ahk_exe Obsidian.exe
		}
	return
	
; run firefox bijay

NumLock & NumpadSub::
	IfWinExist, ahk_exe firefox.exe
		{
		IfWinActive, ahk_exe firefox.exe
			{
			WinClose, ahk_exe firefox.exe
			}
		else
			{
			WinActivate, ahk_exe firefox.exe
			}
		}
	else
		{
		Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Firefox 1.lnk
		WinActivate, ahk_exe firefox.exe
		}
	return
; mute for powertoys

NumLock & Volume_Mute::^+ScrollLock
return
;run notepad++
NumLock & NumpadAdd::
IfWinExist, ahk_class Notepad++
		{
		IfWinActive, ahk_class Notepad++
			{
			WinClose, ahk_class Notepad++
			}
		else
			{
			WinActivate, ahk_class Notepad++
			}
		}
	else
		{
		Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Notepad++.lnk
		WinActivate, ahk_exe ahk_class Notepad++
		}
	return
	
	
; lunch whatsapp
NumLock & Numpad9::
ifWinExist, ahk_exe ApplicationFrameHost.exe
		{
		IfWinActive, ahk_exe ApplicationFrameHost.exe
			{
			WinClose, ahk_exe ApplicationFrameHost.exe
			}
		else
			{
			WinActivate, ahk_exe ApplicationFrameHost.exe
			}
		}
	else
		{
		Run C:\Users\bijay-pc\Desktop\WhatsApp.lnk
		WinActivate, ahk_exe ApplicationFrameHost.exe
		}
	return

;type tick mark
!2::Send,{u+2713}
;alt+2

return

;type rupee sysbol
!4::send,{U+20B9}
;alt+4
return

;type euro sysmbol
!5::send, {U+20AC}
;alt+5
return

;lunch discord
capslock & D::
ifWinExist, ahk_exe Discord.exe
		{
		IfWinActive, ahk_exe Discord.exe
			{
			WinClose, ahk_exe Discord.exe
			}
		else
			{
			WinActivate, ahk_exe Discord.exe
			}
		}
	else
		{
		Run C:\Users\bijay-pc\AppData\Local\Discord\Update.exe --processStart Discord.exe
		WinActivate, ahk_exe Discord.exe
		}
	return
	
	
;hold down both sift for capslock
LShift & RShift::CapsLock
	return
	