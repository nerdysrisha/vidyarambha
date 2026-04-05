@echo off
title GitHub Workflow Runs Cleanup (Keep Latest)
echo =====================================================
echo   Keep ONLY the latest run (nerdysrisha/vidyarambha)
echo =====================================================
echo.

echo [1/3] Fetching workflow runs...
echo.

powershell -NoProfile -Command ^
"$ids = gh run list --repo nerdysrisha/vidyarambha --limit 100 --json databaseId --jq '.[].databaseId'; ^
if ($ids.Count -le 1) { ^
    Write-Host 'Only one or no runs found. Nothing to delete.' -ForegroundColor Green; ^
    exit ^
} ^
Write-Host ('Total runs found: ' + $ids.Count); ^
$keep = $ids[0]; ^
Write-Host ('Keeping latest run ID: ' + $keep) -ForegroundColor Cyan; ^
echo ''; ^
echo '[2/3] Deleting older runs...'; ^
foreach ($id in $ids[1..($ids.Count-1)]) { ^
    Write-Host ('Deleting run ID: ' + $id) -ForegroundColor Yellow; ^
    gh run delete $id --repo nerdysrisha/vidyarambha; ^
} ^
echo ''; ^
echo '[3/3] Done. Only latest run remains.'"

echo.
echo =====================================================
echo Finished!
echo Press any key to exit...
pause >nul