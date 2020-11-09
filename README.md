# SELENIUM_PUSH_DATA
- SELENIUM_PUSH_DATA from excel to website
- Đây là dự án cá nhân.
# Sử dụng chủ yếu cho mục đích đẩy dữ liệu từ excel lên trang web cá nhân.
- Ở đây mình sử dụng database là sql server để lưu trữ các account đăng nhập. Các bạn có thể chỉnh sữa lại chúng ở phía dưới hàm main.

- Một số chỉ dẫn cơ bản:
- bước 1:  mở file SQL_server_connection. chỉnh sửa lại theo form:
	dòng 1:  ip server máy muốn kết nối đến.
	dòng 2: tên database mới tạo
	dòng 3: user name để đăng nhập đến sql
	dòng 4: password để đăng nhập đến sql
- bước 2: chạy file push.bat

----------------------------------------
*Library:
- Bs4: BeautifulSoup crawl dữ liệu về.
- Selenium: webdriver,Keys,By,Options,TimeoutException,WebDriverWait,ActionChains:	Tạo bot.
	webdriver: Tạo một browser mới mỗi lần khởi động bot.
	Keys: Chủ yếu gửi data cần đến element(thường thì là username, password và keywords).
	Options: Tích hợp các tùy chọn cho browser mới khởi tạo.
	ActionChains: khởi tạo action thao tác với quyền cao.
	WebDriverWait: Sử dụng để chờ cho đến khi element được click.
- Openpyxl: load_workbook,Workbook: Lib tạo kết nối từ python đến excel.
- datetime: datetime,timedelta.
- webdriver_manager.chrome: ChromeDriverManager.
- Re : Viết regex. Mục đích sử dụng:
	Dùng để ràng buộc chỉ định 1 chuổi chỉ bao gồm 17 kí tự.
- String: Lấy ra bảng chữ cái alphabels. Mục đích sử dụng:
	Tạo mảng lưu trữ lại các kí tự alphabels.
	Loop mảng này để lưu trữ dữ liệu vào excel.
- Os,Socket:
	os: Sử dụng để truy xuất lấy ra folder nguồn trên máy tính. (folder download file)
	socket: bắt lỗi socket.error.
- Sys
- Codecs
- Pyodbc: Kết nối python với SQL Server. Tạo truy vấn từ bề mặt py đến MSSQL.
- Logging: Log lỗi, log log.
- Argparse
- Threading: lấy Timer tạo biến thời gian chờ cho từng khối code, Mục đích:
	Timer hẹn giờ cho sleep từ lib time.
- Time: sử dụng sleep để khiến process sleeping, mục đích:
	Đợi trang load.
- Random: randint trong randoms, kết hợp với sleep trong time, tạo khoảng ngủ mô phỏng thời gian chờ như người thật.
