@echo off
setlocal

:deleteJars
echo Listing .jar files to be deleted:
for /r %%F in (*.jar) do echo %%F

set /p deleteConfirm="Do you want to delete all these .jar files recursively? (y/n): "
if /i "%deleteConfirm%"=="y" (
    for /r %%F in (*.jar) do (
        echo Deleting: %%F
        del "%%F"
    )
    echo All .jar files deleted.
) else (
    echo Skipping deletion of .jar files.
)

:confirmGit
set /p confirmGit="Do you want to proceed with git add and push? (y/n): "
if /i "%confirmGit%"=="y" goto getMessage
if /i "%confirmGit%"=="n" goto end
echo Invalid input. Please enter 'y' or 'n'.
goto confirmGit

:getMessage
set /p comment="Enter your commit message: "
for /f "delims=" %%A in ('git status --porcelain') do echo %%A
echo These files will be staged for commit.
set /p proceed="Do you want to continue? (y/n): "
if /i "%proceed%"=="y" (
    git add .
    git commit -m "%comment%"
    git push
) else (
    echo Operation canceled.
    goto end
)

:end
echo Operation complete.
echo Press any key to exit...
pause >nul
