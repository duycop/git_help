@echo off
REM ==== Dong bo thay doi len GitHub ====
git add .
git commit -m "%~1"
git push

echo ================================
echo Da dong bo code len GitHub!
echo Commit message: %~1
echo ================================
