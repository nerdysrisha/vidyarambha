@echo off
setlocal enabledelayedexpansion

REM --- Get list of changed files ---
set "fileList="
for /f "delims=" %%f in ('git status -s') do (
    set "fileList=!fileList!%%f
"
)

if "%fileList%"=="" (
    echo No changes detected.
    echo.
    echo Press SPACEBAR to exit...
    pause > nul
    exit /b
)

REM --- Show changed files ---
echo Changed files:
echo !fileList!
echo.

REM --- Wait for SPACEBAR to continue ---
echo Press SPACEBAR to commit and push changes...
:wait_continue
choice /c " " /n /m ""
if errorlevel 1 goto continue_commit
goto wait_continue

:continue_commit
REM --- Use first changed file as commit message ---
for /f "delims=" %%m in ('git status -s') do set "commitMsg=%%m" & goto do_commit

:do_commit
git add .
git commit -m "!commitMsg!"
git push origin main

echo.
echo Done! Press SPACEBAR to exit...
pause > nul
