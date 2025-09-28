@echo off
REM ==== Dong bo thay doi len GitHub ====

REM Lay ngay thang nam (yyyy-MM-dd)
for /f "tokens=2 delims==" %%a in ('"wmic os get LocalDateTime /value" ^| find "="') do set ldt=%%a
set DATE=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2%
set TIME=%ldt:~8,2%:%ldt:~10,2%

set MSG=Update %DATE% %TIME%

git add .
git commit -m "%MSG%"
git push

echo ================================
echo Da dong bo code len GitHub!
echo Commit: %MSG%
echo ================================
pause