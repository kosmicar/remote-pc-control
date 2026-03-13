@echo off
:: Hide console cursor
echo ^[[?25l

@echo off
:: Show available input languages
powershell -Command "Get-WinUserLanguageList | Format-Table LanguageTag, InputMethodTips"

:: Set input language (example: English US)
powershell -Command "$LangList = Get-WinUserLanguageList; $LangList[0].InputMethodTips.Add('0404:00000804'); Set-WinUserLanguageList $LangList -Force"

:: 1. Open Google
start "" "https://www.google.com"
timeout /t 1 >nul

:: 2. Type "momo" slowly in browser
powershell -NoProfile -Command "$wshell = New-Object -ComObject wscript.shell; Start-Sleep -Seconds 0.5; $letters = 'm','o','m','o'; foreach ($l in $letters) { $wshell.SendKeys($l); Start-Sleep -Milliseconds 300 }; $wshell.SendKeys('{ENTER}')"





:: 5. Open a specific scary image
start "" "https://cdn.abcotvs.com/dip/images/5159848_022719-wtvd-momo-challenege-take-2-4p-vid.jpg"
timeout /t 1 >nul
:: 1. Open Google
start "" "https://www.google.com"
timeout /t 1 >nul


:: 2. Type "momo" slowly in browser
powershell -NoProfile -Command "$wshell = New-Object -ComObject wscript.shell; Start-Sleep -Seconds 0.3; $letters = 'W','H','A','T',' ','IS',' ','M','Y',' ','I','P'; foreach ($l in $letters) { $wshell.SendKeys($l); Start-Sleep -Milliseconds 300 }; $wshell.SendKeys('{ENTER}')"

:: 3. Open Google Images for "momo"
timeout /t 1 >nul
start "" "https://ip.me/"

@echo off
title Totally Not Suspicious Tool
mode con: cols=80 lines=25

set seconds=10

for /f "tokens=1-4 delims=:.," %%a in ("%time%") do set /a start=(((%%a*60)+%%b)*60)+%%c

:loop

:: random console color
set /a r=%random% %% 15 + 1
color %r%F

:: random fake message
set /a m=%random% %% 5

if %m%==0 echo Initializing quantum network...
if %m%==1 echo Decrypting classified files...
if %m%==2 echo Uploading memes to NASA servers...
if %m%==3 echo Reversing gravity...
if %m%==4 echo Contacting aliens...

:: random beep
powershell -command "[console]::beep((Get-Random -Minimum 400 -Maximum 1200),120)"

:: play a Windows sound
powershell -command "(New-Object System.Media.SoundPlayer 'C:\Windows\Media\Windows Ding.wav').Play()"

:: random pause so it looks chaotic
powershell -command "Start-Sleep -Milliseconds (Get-Random -Minimum 80 -Maximum 200)"

for /f "tokens=1-4 delims=:.," %%a in ("%time%") do set /a now=(((%%a*60)+%%b)*60)+%%c
set /a diff=now-start

if %diff% LSS %seconds% goto loop

color 0A
cls

