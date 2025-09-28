Đây là hướng dẫn sử dụng git-cli trên window

Công cụ dòng lệnh, giúp lên github đơn giản nhất

thư mục có thể chứa bất cứ thứ gì, dù là code c, c++, project web

thư mục có thể chứa file, các thư mục con cũng ok.

ảnh này chụp màn hình, mở edit file help.md trên github và paste trực tiếp, nó sinh ra thẻ img...
<img width="2560" height="1020" alt="image" src="https://github.com/user-attachments/assets/94d3dea0-0734-46f3-bb3f-a5703abb2a9d" />

# Cần nhớ:

1. Đăng ký tài khoản github (bằng tài khoản google) : làm 1 lần, dễ
2. Cài đặt tool git-cli trên windows (loại dòng lệnh) : cài 1 lần, dễ
3. Liên kết git-cli và tài khoản github (sử dụng ssh-key): làm 1 lần, không quá khó
4. Tạo repo mới: 1 repo làm 1 lần trên web và 5 lệnh git-cli:
	1. git init
	2. git add .
	3. git commit -m "Initial commit"
	4. git branch -M main
	5. git push -u origin main --force
5. Đồng bộ nội dung thay đổi trong thư mục lên github: (giống kiểu CTRL+S để save file trên word)
   sau khi thay đổi nội dung các file code, project,… gọi 3 lệnh git-cli để đưa lên github
   1. git add .
   2. git commit -m "comment cho lần thay đổi này"
   3. git push
6. Sau khi sửa đổi trực tiếp trên web, muốn kéo xuống. Gõ 1 lệnh, dễ git pull origin main

thêm file pdf