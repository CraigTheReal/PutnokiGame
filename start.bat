@echo off
title Platformer Kaland - Inditas
echo.
echo ================================
echo   PLATFORMER KALAND JATEK
echo ================================
echo.
echo A jatek indul a bongeszoben...
echo.

REM Ellenorzi, hogy letezik-e a HTML fajl
if not exist "platformer.html" (
    echo HIBA: A platformer.html fajl nem talalhato ebben a mappaban!
    echo Ellenorizd, hogy a .bat es a .html fajl ugyanabban a mappaban van-e.
    pause
    exit
)

REM Teljes utvonal meghatározasa
set "HTML_PATH=%~dp0platformer.html"

REM Megprobalja a bongeszoket egyenkent
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    echo Chrome inditasa...
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "%HTML_PATH%"
    goto :success
) else if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
    echo Chrome inditasa...
    start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "%HTML_PATH%"
    goto :success
) else if exist "C:\Program Files\Mozilla Firefox\firefox.exe" (
    echo Firefox inditasa...
    start "" "C:\Program Files\Mozilla Firefox\firefox.exe" "%HTML_PATH%"
    goto :success
) else if exist "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" (
    echo Firefox inditasa...
    start "" "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "%HTML_PATH%"
    goto :success
) else if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    echo Edge inditasa...
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "%HTML_PATH%"
    goto :success
) else if exist "C:\Program Files\Microsoft\Edge\Application\msedge.exe" (
    echo Edge inditasa...
    start "" "C:\Program Files\Microsoft\Edge\Application\msedge.exe" "%HTML_PATH%"
    goto :success
) else (
    echo Bongeszo nem talalhato a szabvanyos helyeken.
    echo Megprobalom a rendszer alapertelmezett bongeszojenek...
    start "" "%HTML_PATH%"
    goto :success
)

:success
echo Jatek sikeresen elindult!
timeout /t 2 /nobreak >nul
exit