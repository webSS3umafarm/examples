
	disclaim_warning = ("WARNING: This script supposedly creates a registry file (REG_DWORD), found at:" & Chr(13) & Chr(10) & _
	"HKEY_CURRENT_USER\Software\virus\Settings." & Chr(13) & Chr(13) & Chr(10) & _ 
	"To exit the script now, press CANCEL. The script has not performed any actions, and nothing on the computer will be changed, until this box is closed with OK." &Chr(13) & "To exit the script press CANCEL.")
	DISCLAIMER = MsgBox(disclaim_warning, 49, "WARNING")
' DISCLAIMER 
	if DISCLAIMER = 2 Then 
	 CreateObject("WScript.Shell").Run "rundll32.exe shell32.dll,#61"
	 WScript.Sleep 500 
	 CreateObject("WScript.Shell").SendKeys "regedit.exe"
	wscript.Quit
	
'	WARNING: This script supposedly creates a registry file (REG_DWORD), found at:"
'	 HKEY_CURRENT_USER\Software\virus\Settings
	 
	 end if 

	Dim oShell
Set oShell = CreateObject("WScript.Shell") 
	Dim i, paddedHex, Skip, Step, luckManip : Randomize
 step = 0 
 Skip = 0
 luckManip = (Rnd * 10)
  luckManip = luckManip + 1 : r = luckManip 
' 11
	i = "C3F2E5E1F4E5CFE2EAE5E3F4A8A2D7D3E3F2E9F0F4AED3E8E5ECECA2A9AED2E5E7D7F2E9F4E5A0A2C8CBC5D9DFC3D5D2D2C5CED4DFD5D3C5D2DCD3EFE6F4F7E1F2E5DCF6E9F2F5F3DCD3E5F4F4E9EEE7F3A2ACA0B1ACA0A2D2C5C7DFC4D7CFD2C4A2"
  ' The hex could also perhaps be hosted on a social media or pastebin / alt Cn2 servr
 Skip = Abs(r * (Sin(step / 10 + 1)))
 
' call obfuscateHex
		Function obfuscateHex(i)
Dim paddedHex  :  paddedHex = "" 
 Do While Len(i) > 0
	paddedHex = paddedHex & Left(i, 2) & String(Skip, "0")
	i = Mid(i, 1 + 2)
  Step = Step + 1
  Skip = r * (Sin(CInt(step) / r) + 1)
  	msgbox("skip: " & CInt(skip) & " step: " & CInt(Step))

 Loop
	step = 0 
'	Skip = Abs(r * (Sin(step / 10 + 1))) 
	skip = 0
	 obfuscateHex = paddedHex
		end Function
' A "Do" loop is another type of loop and it is less likely to be flagged by AV (Source AI on the strengths of different loops)
  '  There is also "Do until" and that would do the loop until i = "", but "<>" is a != 
  ' 	Do while i <> "" works here and was used before reworking the script at the end of its development
  ' This loop runs until i != "", and sets the variable i to i at the third position (hex is in pairs). It can end because if mid() goes out of bounds, it will return empty which means the condition has been met and without missing data/end because the script does this after the other logic, and hex comes in pairs. 

	For step = (Sin(step / 10) + 1) To 2
  ' A "for" loop. A for loop will increment the var fed to it by 1 each time using Next, and the variable (int) can be referenced from within that loop to find out it's value. The for loop will also take the var it is given and set it to an initial 0 before it is set (on the right side), but it can do math. It does not round up. Here, "next" is used as the incrementer. 
  MsgBox("1223123: " &Abs(step))
  step = 0 : i = obfuscateHex(i) 
    MsgBox("1223123: " &step)
  
  step = Skip
  Skip = r * (Sin(step / 10 + 1))
  '	MsgBox("hi" &Skip) 
  
  Step = (step XOR -1) - 1
  Skip = step + step
  ' XOR val is -1 for step = step so that it counts up (XOR 1 does not work) 
	'MsgBox("hi: (steps) " &Abs(step))
  Next
 
Skip = r * (Sin(step / 10 + 1))
