@echo off
setlocal

set /p comment="Enter your commit message: "
git add .
git commit -m "%comment%"
git push

echo Operation complete.
echo Press any key to exit...
pause >nul
