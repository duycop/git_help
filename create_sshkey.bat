@echo off
REM ==== Tạo SSH key mới cho GitHub ====
REM Thay email bằng email GitHub của bạn
set EMAIL=duycop@gmail.com

echo Tao SSH key voi email: %EMAIL%
ssh-keygen -t ed25519 -C "%EMAIL%" -f %USERPROFILE%\.ssh\id_ed25519 -N ""

REM ==== Start ssh-agent service ====
echo Bat dich vu ssh-agent...
sc config ssh-agent start=auto
net start ssh-agent

REM ==== Add private key vao ssh-agent ====
ssh-add %USERPROFILE%\.ssh\id_ed25519

REM ==== Copy public key vao clipboard ====
type %USERPROFILE%\.ssh\id_ed25519.pub | clip

echo ======================================================
echo SSH key da tao xong va copy vao clipboard.
echo Hay vao GitHub -> Settings -> SSH and GPG keys -> New SSH key
echo Roi paste noi dung tu clipboard vao.
echo ======================================================
pause
