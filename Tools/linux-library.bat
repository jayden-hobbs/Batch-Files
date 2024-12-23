@echo off
setlocal enabledelayedexpansion
title Linux Library

:menu
cls
echo -------------------------------------
echo Linux Library
echo -------------------------------------
echo Type a command to continue... (Type 'exit' to close)
:loop
set /p input="> "

if "%input%"=="exit" (
    exit
)

if "%input%"=="ls" (
    dir
    goto loop
)

if "%input%"=="pwd" (
    echo %cd%
    goto loop
)

if "%input%"=="clear" (
    cls
    goto loop
)

if "%input%"=="cd" (
    set /p dir="Enter a directory: "
    cd "%dir%"
    goto loop
)

if "%input%"=="mkdir" (
    set /p dir="Enter a directory name: "
    mkdir "%dir%"
    goto loop
)

if "%input%"=="rmdir" (
    set /p dir="Enter a directory name: "
    rmdir "%dir%"
    goto loop
)

if "%input%"=="touch" (
    set /p file="Enter a file name: "
    copy nul "%file%"
    goto loop
)

if "%input%"=="rm" (
    set /p file="Enter a file name: "
    del "%file%"
    goto loop
)

if "%input%"=="mv" (
    set /p file="Enter a file name: "
    set /p newfile="Enter a new file name: "
    ren "%file%" "%newfile%"
    goto loop
)

if "%input%"=="cp" (
    set /p file="Enter a file name: "
    set /p newfile="Enter a new file name: "
    copy "%file%" "%newfile%"
    goto loop
)

if "%input%"=="cat" (
    set /p file="Enter a file name: "
    type "%file%"
    goto loop
)

if "%input%"=="echo" (
    set /p text="Enter text: "
    echo %text%
    goto loop
)

if "%input%"=="help" (
    echo -------------------------------------
    echo Available Commands:
    echo -------------------------------------
    echo ls     - List files and directories
    echo pwd    - Print working directory
    echo clear  - Clear the screen
    echo cd     - Change directory
    echo mkdir  - Make directory
    echo rmdir  - Remove directory
    echo touch  - Create a file
    echo rm     - Remove a file
    echo mv     - Rename/move a file
    echo cp     - Copy a file
    echo cat    - Display file contents
    echo echo   - Print text
    echo help   - Display this help message
    echo exit   - Close the Linux Library
    pause
    goto loop
)

REM Fallback for unrecognized commands
echo Command not recognized. Type 'help' for a list of commands.
goto loop
