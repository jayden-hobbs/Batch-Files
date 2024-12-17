@echo off
color 1f
title Blue Screen of Death
echo A problem has been detected and Windows has been shut down to prevent damage to your computer.
echo.
echo *** STOP: 0x0000007B (0xF78D2524,0xC0000034,0x00000000,0x00000000)
echo.
echo Collecting data for crash dump...
timeout /t 10 >nul
echo Just kidding! Have a nice day!
pause
