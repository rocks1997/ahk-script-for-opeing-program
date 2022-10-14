;open chrome

NumpadHome::

SetTitleMatchMode 2
If WinExist("Google")
 {
 WinActivate
 }
else
{
    run chrome.exe
}
return

;open Obsidian

NumpadUp::
SetTitleMatchMode 2
If WinExist("Obsidian")
 {
 WinActivate
 }
else
{
    run C:\Users\bijay-pc\AppData\Local\Obsidian\Obsidian.exe
}
 return
 
 ;open calculator
 
NumpadPgUp::
SetTitleMatchMode 2
If WinExist("Calc")
 {
 WinActivate
 }
else
 {
	run calc.exe
 }
 return
NumpadClear::
SetTitleMatchMode 2
If WinExist("Proton")
 {
 WinActivate
 }
else
 {
	run C:\Users\bijay-pc\AppData\Local\ProtonVPN.exe
 }
 return
 
 
 
 
 
 ;for other application just copy the code and change the name of application propietly
