@echo off
REM Auto-git commit & push with dynamic message

REM Get list of changed files
setlocal enabledelayedexpansion
set "msg="
set "fileList="

for /f "delims=" %%f in ('git status -s') do (
    if not defined msg set "msg=%%f"
    set "fileList=!fileList!%%f
"
)

if "%msg%"=="" (
    echo No changes detected.
) else (
    echo Changed files:
    echo !fileList!
    echo.
    echo Committing changes: %msg%
    git add .
    git commit -m "%msg%"
    git push origin main
)

echo.
echo Press SPACEBAR to exit...
:waitKey
pause>nul
for /f "delims=" %%k in ('xcopy /w /L "%~f0" "%~f0" 2^>nul') do set "key=%%k"
goto waitKey
