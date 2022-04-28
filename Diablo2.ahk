;Jacob Thomas
;Diablo 2 script, quality of life improvements
;Created January 1st, 2022



;If google spreadsheet, send time when pushing alt T
#IF WinActive("Diablo 2 Runs - Google Sheets - Google Chrome")
!t::
FormatTime, SeqHour,, H:mm
sleep 150
Send %SeqHour%
sleep 50
Send {right}
sleep 50
Send {home}{right}
return

;Sends current time
!c::
FormatTime, SeqHour,, mm
sleep 150
Send %SeqHour%
return

;Sends current time
!s::
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos


CoordMode, Mouse, Window
ImageSearch, foundx,foundy, 0, 0, 2351, 1079, *50 C:\AutoHotKeyScripts\Pictures\D2R\ExcelCell.png
if ErrorLevel = 0
{
	FormatTime, SeqHour,, hh:mm:ss
	mouseclick, left, FoundX, FoundY

	sleep 150
	Send %SeqHour%{tab}
}
CoordMode, Mouse, Screen
mousemove, xpos, ypos
return


;Sends current time in different location
^!d::
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos

CoordMode, Mouse, Window

ImageSearch, foundx,foundy, 0, 0, 2351, 1079, *50 C:\AutoHotKeyScripts\Pictures\D2R\ExcelCell.png
if ErrorLevel = 0
{
	FormatTime, SeqHour,, hh:mm:ss
	mouseclick, left, FoundX, FoundY

	sleep 150
	Send %SeqHour%{tab}
	sleep 150
	Send {home}{down}
}
CoordMode, Mouse, Screen
mousemove, xpos, ypos
return
#IF




;D2 Remastered MF
#IF WinActive("ahk_class OsWindow")


;Key hunter
!q::

;Go to act 1 Black Marsh - From Act 5
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\GoToAct1.png
if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, ValueSent(144,25), ValueSent(135,10)
	
	Sleep ValueSent(500,150)
	;click Black Marsh and end
	mouseclick, left, ValueSent(311,100), ValueSent(480,10)
	return
}

/*
;Go to act 2 Arcane Sanctuary
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\GoToAct2.png
if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, ValueSent(238,25), ValueSent(141,10)
	
	Sleep ValueSent(500,150)
	;click Black Marsh and end
	mouseclick, left, ValueSent(324,100), ValueSent(693,10)
	return
}
*/

;Go to act 5
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\GoToAct5.png
if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, ValueSent(539,25), ValueSent(141,10)
	
	Sleep ValueSent(500,150)
	;click Halls of Pain and end
	mouseclick, left, ValueSent(345,100), ValueSent(549,10)
	return
}
if ErrorLevel = 1
{
	;Go to Act 5 from Act 1, because completed Act 2 Key Search
	ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\GoToAct2.png
	if ErrorLevel = 0
	{
		foundx := ValueSent(foundx+20,20)
		foundy := ValueSent(foundy+5,3)
		mouseclick, left, ValueSent(539,25), ValueSent(141,10)
		
		Sleep ValueSent(500,150)
		;click Halls of Pain and end
		mouseclick, left, ValueSent(345,100), ValueSent(549,10)
		return
	}
}
return



/*
;Jump to Act 5 Harrogath
!5::
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\Act5.png
	if ErrorLevel = 0
	{
		foundx := ValueSent(foundx+20,20)
		foundy := ValueSent(foundy+5,3)
		mouseclick, left, foundx, foundy
		
		Sleep ValueSent(400,100)
		
		mouseclick, left, ValueSent(337,25), ValueSent(193,5)
		
	}
return
*/
/*
;Jump to Act 2 Lost City
!2::
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\Act2.png
	if ErrorLevel = 0
	{
		foundx := ValueSent(foundx+20,20)
		foundy := ValueSent(foundy+5,3)
		mouseclick, left, foundx, foundy
		
		Sleep ValueSent(400,100)
		
		mouseclick, left, ValueSent(325,25), ValueSent(548,5)
		
	}
return
*/



;Start new game in Hell diff
!s::
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\play.png
if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, foundx, foundy
	
	Sleep ValueSent(500,150)
	
	ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\hell.png
	;ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\nightmare.png
	if ErrorLevel = 0
	{
		foundx := ValueSent(foundx+10,10)
		foundy := ValueSent(foundy+3,2)
		mouseclick, left, foundx, foundy
	}
	

	
	
}

;Jump to Act 1 - Black Marsh (from act 5)
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\GoToAct1.png

if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, foundx, foundy
	
	Sleep ValueSent(400,50)
	
	mouseclick, left, ValueSent(325,25), ValueSent(470,5)
	return
}

;Jump to Act 2 - Arcane Sanctuary (from act 1)
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\GoToAct2.png
if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, foundx, foundy
	
	Sleep ValueSent(400,100)
	
	mouseclick, left, ValueSent(325,25), ValueSent(690,5)
	return
}

;Jump to Act 5 - Halls of Pain (from act 2)
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\GoToAct5.png

if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, foundx, foundy
	
	Sleep ValueSent(400,50)
	
	mouseclick, left, ValueSent(325,25), ValueSent(551,5)
	return
}

/*
;Jump to Act 5 - Worldstone Keep
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\Act5.png

if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, foundx, foundy
	
	Sleep ValueSent(400,50)
	
	mouseclick, left, ValueSent(325,25), ValueSent(760,5)
	return
}

;Jump to Act 3 - Durance of Hate lvl 2
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\Act3.png

if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, foundx, foundy
	
	Sleep ValueSent(400,50)
	
	mouseclick, left, ValueSent(325,25), ValueSent(760,5)
	return
}
/*


;Jump to Act 2 Lost City
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\Act2.png
if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, foundx, foundy
	
	Sleep ValueSent(400,100)
	
	mouseclick, left, ValueSent(325,25), ValueSent(548,5)
	return
}


*/

;Also check for exit game button
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\exit.png
if ErrorLevel = 0
{
	foundx := ValueSent(foundx+20,20)
	foundy := ValueSent(foundy+5,3)
	mouseclick, left, foundx, foundy
	
	reload
}

/*
;Just to kill Andy
;Go to act 2 Arcane Sanctuary
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\GoToAct2.png
if ErrorLevel = 0
{

	mouseclick, left, ValueSent(310,100), ValueSent(765,10)
	

	return
}
*/
return


;Buff with shouts
!b::
send i
Sleep ValueSent(400,100)

ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\Inventory.png
if ErrorLevel = 0
{
	Send w
	Sleep ValueSent(400,100)
	
	ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\MFShield.png
	if ErrorLevel = 1	;for barb
	;if ErrorLevel = 0
	{
		Send i
		Sleep ValueSent(250,50)
		
		Send {f7}
		Sleep ValueSent(350,50)
		mouseclick, right
		
		Sleep ValueSent(450,50)
		Send {f8}
		Sleep ValueSent(350,50)
		mouseclick, right
		
		Sleep ValueSent(700,50)
		Send {w}
		
		Sleep ValueSent(400,50)
;		Send {f9}
;		Sleep ValueSent(250,50)
;		mouseclick, right
		
;		Sleep ValueSent(400,50)
;		Send {f3}
	}
}

return


;New Switch MF
!g::
mousemove, ValueSent(200,100), ValueSent(950,100)
sleep 150

;Make sure stash is open
ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\Stash.png
if ErrorLevel = 0
{
	blockinput, On
	
	;Click 4th tab in top right
	mouseclick, left, ValueSent(550,25), ValueSent(113,15)
	Sleep ValueSent(250,100)
	
	;Check for shield, if found switch weapon then swap weapon bandolier to adventure mode!
	ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\MFShield.png
	if ErrorLevel = 0
	{
		Send {ctrl up}{alt up}
		Sleep ValueSent(400,100)
		
		mouseclick, left, ValueSent(80,15), ValueSent(220,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1366,25), ValueSent(250,25)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(80,15), ValueSent(220,15)
		Sleep ValueSent(400,100)
		send w
	}
	;If didn't find shield, setup MF gear
	if ErrorLevel = 1
	{
		Send {ctrl up}{alt up}
		Sleep ValueSent(400,100)
		
		send w
		Sleep ValueSent(400,100)
		
		
		mouseclick, left, ValueSent(80,15), ValueSent(220,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1366,25), ValueSent(250,25)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(80,15), ValueSent(220,15)
		Sleep ValueSent(400,100)
		
	}
	
	;Click Amulet from X1Y4
	mouseclick, left, ValueSent(80,15), ValueSent(338,15)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(1693,15), ValueSent(235,15)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(80,15), ValueSent(338,15)
	Sleep ValueSent(400,100)

	;Click Ring from X2Y4
	mouseclick, left, ValueSent(139,15), ValueSent(343,15)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(1478,15), ValueSent(472,15)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(139,15), ValueSent(343,15)
	Sleep ValueSent(400,100)

	;Click Ring from X3Y4
	mouseclick, left, ValueSent(195,15), ValueSent(333,15)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(1689,15), ValueSent(478,15)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(195,15), ValueSent(333,15)
	Sleep ValueSent(400,100)

	;Click Gloves from X12Y56
	mouseclick, left, ValueSent(107,25), ValueSent(427,25)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(1372,45), ValueSent(441,45)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(100,25), ValueSent(415,20)
	Sleep ValueSent(400,100)

	;Click Boots from X12Y78
	mouseclick, left, ValueSent(109,25), ValueSent(537,25)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(1805,25), ValueSent(446,25)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(109,25), ValueSent(530,20)
	Sleep ValueSent(400,100)

	;Click Belt from X12Y9
	mouseclick, left, ValueSent(111,25), ValueSent(624,15)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(1588,25), ValueSent(474,15)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(111,25), ValueSent(624,15)
	Sleep ValueSent(400,100)

	;Click Body from X34Y6
	mouseclick, left, ValueSent(215,25), ValueSent(444,15)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(1587,25), ValueSent(344,15)
	Sleep ValueSent(400,100)
	mouseclick, left, ValueSent(222,25), ValueSent(444,15)
	Sleep ValueSent(400,100)

	Send {f2}
	blockinput, Off
}
return



;Switch only rings/amulet from inventory
^s::

send i
Sleep ValueSent(400,100)

ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\Inventory.png
if ErrorLevel = 0
{
	blockinput, On
	
	Send w
	Sleep ValueSent(400,100)
	
	ImageSearch, foundx,foundy, 0, 0, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2R\MFShield.png
	if ErrorLevel = 0
	{
		Sleep ValueSent(250,50)
		
		;Click amulet from inv A6
		mouseclick, left, ValueSent(1617,10), ValueSent(551,10)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1693,15), ValueSent(235,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1617,10), ValueSent(551,10)
		Sleep ValueSent(400,100)
		
		;Click Ring from inv A7
		mouseclick, left, ValueSent(1671,15), ValueSent(550,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1478,15), ValueSent(472,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1671,15), ValueSent(550,15)
		Sleep ValueSent(400,100)

		;Click Ring from inv A8
		mouseclick, left, ValueSent(1725,15), ValueSent(550,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1689,15), ValueSent(478,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1725,15), ValueSent(550,15)
		Sleep ValueSent(400,100)
		blockinput, Off
		
		return
		
	}
	;Switch back to fast cast gear
	if ErrorLevel = 1
	{
		;Send w
		;Sleep ValueSent(400,100)
	
		;Click amulet from inv A6
		mouseclick, left, ValueSent(1617,10), ValueSent(551,10)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1693,15), ValueSent(235,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1617,10), ValueSent(551,10)
		Sleep ValueSent(400,100)
		
		;Click Ring from inv A7
		mouseclick, left, ValueSent(1671,15), ValueSent(550,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1478,15), ValueSent(472,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1671,15), ValueSent(550,15)
		Sleep ValueSent(400,100)

		;Click Ring from inv A8
		mouseclick, left, ValueSent(1725,15), ValueSent(550,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1689,15), ValueSent(478,15)
		Sleep ValueSent(400,100)
		mouseclick, left, ValueSent(1725,15), ValueSent(550,15)
		Sleep ValueSent(400,100)
		
		blockinput, Off
		
		return
	}
}


return



;Push NumpadAdd key to toggle Right click
;NumpadAdd::
!t::
if SeqRightClickValue = On
{
	;msgbox, %SeqRightClickValue%
	Send {F3}
	Sleep ValueSent(300,100)
	Click right down
	/*
	SeqRightClickValue = Off
	*/
	
	return
}
/*
if SeqRightClickValue = Off
{
	;msgbox, %SeqRightClickValue%
	SeqRightClickValue = On
	Click right up
	return
}
*/
return




;Send Down and Enter
`::
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos

blockinput, On
mousemove, ValueSent(988,25), ValueSent(111,15)
Sleep ValueSent(250,100)
Send {down}{down}
Sleep ValueSent(250,100)
Send {enter}
blockinput, Off

mousemove, xpos, ypos
return



/*
;Gamble D2 buy rings
j::
loop 33
{
	Send {RButton}
	Sleep ValueSent(600,100)
}
return
*/






;Testing locations for MF
/*
j::
mousemove, ValueSent(109,25), ValueSent(530,20)
/*
ValueSent(100,25), ValueSent(395,25)
*/
return

/*
F10::
;blockinput, On
;Click Tab at top
mouseclick, left, ValueSent(550,25), ValueSent(113,15)
Sleep ValueSent(750,100)

;Click sword from X1Y2
mouseclick, left, ValueSent(81,15), ValueSent(222,50)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(1363,35), ValueSent(247,35)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(81,25), ValueSent(196,25)
Sleep ValueSent(400,100)

;Click shield from X34Y2
mouseclick, left, ValueSent(222,25), ValueSent(231,25)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(1799,25), ValueSent(251,25)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(222,25), ValueSent(220,25)
Sleep ValueSent(400,100)

;Click helmet from X56Y12
mouseclick, left, ValueSent(333,25), ValueSent(200,25)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(1580,25), ValueSent(169,25)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(333,25), ValueSent(200,25)
Sleep ValueSent(400,100)

;Click Amulet from X1Y4
mouseclick, left, ValueSent(80,15), ValueSent(338,15)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(1693,15), ValueSent(235,15)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(80,15), ValueSent(338,15)
Sleep ValueSent(400,100)

;Click Ring from X2Y4
mouseclick, left, ValueSent(139,15), ValueSent(343,15)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(1478,15), ValueSent(472,15)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(139,15), ValueSent(343,15)
Sleep ValueSent(400,100)

;Click Ring from X3Y4
mouseclick, left, ValueSent(195,15), ValueSent(333,15)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(1689,15), ValueSent(478,15)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(195,15), ValueSent(333,15)
Sleep ValueSent(400,100)

;Click Gloves from X12Y56
mouseclick, left, ValueSent(107,25), ValueSent(427,25)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(1372,45), ValueSent(441,45)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(100,25), ValueSent(415,20)
Sleep ValueSent(400,100)

;Click Boots from X12Y78
mouseclick, left, ValueSent(109,25), ValueSent(537,25)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(1805,25), ValueSent(446,25)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(109,25), ValueSent(530,20)
Sleep ValueSent(400,100)

;Click Belt from X12Y9
mouseclick, left, ValueSent(111,25), ValueSent(624,15)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(1588,25), ValueSent(474,15)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(111,25), ValueSent(624,15)
Sleep ValueSent(400,100)

;Click Body from X34Y6
mouseclick, left, ValueSent(215,25), ValueSent(444,15)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(1587,25), ValueSent(344,15)
Sleep ValueSent(400,100)
mouseclick, left, ValueSent(220,25), ValueSent(444,15)
Sleep ValueSent(400,100)
;blockinput, Off
return
*/

#IF







;Legacy code from old game:

/*

#IF WinActive("ahk_class Diablo II")

;Look for health pool
^F12::
loop
{
	;Look for 'Good' health
	ImageSearch, foundx,foundy, 0, 950, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2\HealthGood.png
	if ErrorLevel = 0
	{
		SeqD2GUI("`n`nHealth is good`n`n", "Green")
	}
	if ErrorLevel = 1
	{
		;Check for poison:
		ImageSearch, foundx,foundy, 0, 950, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2\HealthGoodP.png
		if ErrorLevel = 0
		{
			SeqD2GUI("`n`nP Health is good`n`n", "Green")
		}
		if ErrorLevel = 1
		{
			;If NOT Poisoned, check for low health
			ImageSearch, foundx,foundy, 0, 950, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2\HealSoon.png
			if ErrorLevel = 0
			{
				SeqD2GUI("`n`nHeal soon...`n`n", "Blue")
			}
			if ErrorLevel = 1
			{
				;If not low health, check for low poison health
				ImageSearch, foundx,foundy, 0, 950, 2351, 1079,  C:\AutoHotKeyScripts\Pictures\D2\HealSoonP.png
				if ErrorLevel = 0
				{
					SeqD2GUI("`n`nP Heal soon...`n`n", "Blue")
				}
				if ErrorLevel = 1
				{
					;Make sure Cube is open
					ImageSearch, foundx,foundy, 400, 110, 575, 255,  C:\AutoHotKeyScripts\Pictures\D2\Cube.png
					if ErrorLevel = 0
					{
						SeqD2GUI("`n`nCube is open`n`n", "Green")
					}
					if ErrorLevel = 1
					{
						#If WinActive("ahk_class Diablo II")
						Send {2}
						;SoundPlay, C:\Users\Seq\Downloads\icq.mp3
						SeqD2GUI("`n`nWTF WTF WTF!?`n`n", "Red")
						Sleep 500
						#IF
					}

				}
			}
		}
	}
	Sleep 500
}

return
#IF

SeqD2GUI(SeqText, SeqColour)
{
GUI, SeqShowD2GUI:destroy
GUI, SeqShowD2GUI: Color, %SeqColour%
GUI, SeqShowD2GUI: Font, s16
GUI, SeqShowD2GUI:Font, cWhite
GUI, SeqShowD2GUI:+AlwaysOnTop
GUI, SeqShowD2GUI:-Caption ;Hide minimize or drag bar
GUI, SeqShowD2GUI:add, text,,%SeqText%
GUI, SeqShowD2GUI:+ToolWindow ;Hide from taskbar/alt tab
GUI, SeqShowD2GUI:show, NoActivate X1650 Y200 ;NoActivate means doesn't steal focus!
}

#IF WinActive("ahk_class Diablo II")
j::
;Click,down left
	MouseGetPos, xpos, ypos
loop 100
{
	xpos := xpos+1
	ypos := ypos+1
	mouseclick, left, xpos, ypos
	sleep ValueSent(120000, 1000)
	
	xpos := xpos
	ypos := ypos
	mouseclick, left, xpos, ypos
	sleep ValueSent(120000, 1000)
}

return
#IF

*/
