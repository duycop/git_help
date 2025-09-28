@echo off
REM ==== Setup Git repo and push to GitHub ====
cd /d d:\My Documents\Desktop\git_help

REM Config user info
git config user.name "duycop"
git config user.email "duycop@gmail.com"

REM Init repo (chỉ cần lần đầu, nếu đã init rồi thì bỏ qua)
if not exist ".git" (
    git init
)

REM Add tất cả file và commit
git add .
git commit -m "Initial commit"

REM Đặt branch chính tên main
git branch -M main

REM Thêm remote (nếu chưa có)
git remote remove origin >nul 2>&1
git remote add origin git@github.com:duycop/git_help.git

REM Push lần đầu
git push -u origin main --force

echo ================================
echo Repo git_help push OK to GitHub!
echo ================================
pause
