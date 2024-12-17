@echo off
title IP Generator
:generate
cls
set /a "octet1=%random% %% 256"
set /a "octet2=%random% %% 256"
set /a "octet3=%random% %% 256"
set /a "octet4=%random% %% 256"

echo -------------------------------------
echo IP Address: %octet1%.%octet2%.%octet3%.%octet4%
echo -------------------------------------
echo Press enter to generate a new IP address
pause >nul
goto generate