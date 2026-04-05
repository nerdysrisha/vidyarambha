@echo off
echo =====================================================
echo     GitHub Deployments Cleanup for nerdysrisha/vidyarambha
echo =====================================================
echo.

echo [1/3] Fetching current deployments...
echo.
powershell -NoProfile -Command "gh api --paginate repos/nerdysrisha/vidyarambha/deployments --jq '.[].id'"

echo.
echo [2/3] Starting deletion of all deployments...
echo.
powershell -NoProfile -Command "gh api --paginate repos/nerdysrisha/vidyarambha/deployments --jq '.[].id' | ForEach-Object { Write-Host ('Deleting deployment ID: ' + $_) -ForegroundColor Yellow; gh api --method DELETE -H 'Accept: application/vnd.github+json' -H 'X-GitHub-Api-Version: 2022-11-28' ('/repos/nerdysrisha/vidyarambha/deployments/' + $_) }"

echo.
echo [3/3] Checking remaining deployments...
echo.
powershell -NoProfile -Command "gh api --paginate repos/nerdysrisha/vidyarambha/deployments --jq '.[].id'"

echo.
echo =====================================================
echo Cleanup finished!
echo Note: The newest/active deployment may still remain (this is normal).
echo.
pause