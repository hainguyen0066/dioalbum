### Hướng dẫn setup project
- Cài đặt các thư viện cần thiết
`composer install`
- Copy file .env.example thành file .env và chỉnh lại thông tin connect db, redis cho đúng.
- Tạo data mẫu cho dự án
`php artisan voyager:install --with-dummy`
- Tài khoản đăng nhập vào trang admin http://{domain}/admin
`hai12345@gmail.com/hai123`

### DB
./diamond_db.sql

### image
./storage/app/public.zip