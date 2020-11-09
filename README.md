# SELENIUM PROJECT

- **Made by**: *Shan*.			 			 
- **Email**: *sontran.code@gmail.com*.		 
- **Protonmail**: *jayce7g@protonmail.com*.	 



----------------------------------------
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

# Sơ đồ thư mục:
- **SELENIUM_PUSH_DATA**:
	- *error_file*:
	   - *error.xlsx* : chứa các dòng dữ liệu bị sai hoặc không đưa lên được đến trang web.
	- *file_excel_here*:
	   -	*file_push_name.xlsx* : chứa file dữ liệu cần đưa lên trang web.
	- *log*:
	   - log/*log_thanhcong* : chứa dòng dữ liệu đúng.
	   - log/*log_thatbai*	: chứa các dòng dữ liệu bị sai khi ngoại lệ xử lý được.
	   - log/*logfile_error* : chứa các dòng dữ liệu bị sai khi ngoại lệ không xử lý được.
	- src:
	  - src/*geckodriver.log* : file log khi cài đặt driver browser.
	  - src/*pythonsetup.exe*	: Gói cài đặt python 3.7.4
	  - src/*requirements.txt* : Chứa các thư mục cần install
	  - src/*account_push.txt*
	  - src/*chromedriver.exe*
	  - src/*SQL_server_connection.txt*
  - *excel_to_list_data.py*
  - *push.bat*
**Library**: *Bs4,Selenium,Openpyxl,Re,String,Os,Socket,Sys,Codecs,Pyodbc,Logging,Argparse,Threading,Time,Random*
[x] **Bs4**: BeautifulSoup crawl dữ liệu về.
-  **Selenium**: webdriver,Keys,By,Options,TimeoutException,WebDriverWait,ActionChains:	Tạo bot.
	[x]**webdriver**: Tạo một browser mới mỗi lần khởi động bot.
	[x]**Keys**: Chủ yếu gửi data cần đến element(thường thì là username, password và keywords).
	[x]**Options**: Tích hợp các tùy chọn cho browser mới khởi tạo.
	[x]**ActionChains**: khởi tạo action thao tác với quyền cao.
	[x]**WebDriverWait**: Sử dụng để chờ cho đến khi element được click.
[x] **Openpyxl**: load_workbook,Workbook: Lib tạo kết nối từ python đến excel.
[x] **datetime**: datetime,timedelta.
[x] **webdriver_manager.chrome**: ChromeDriverManager.
[x] **Re** : Viết regex. Mục đích sử dụng:
	Dùng để ràng buộc chỉ định 1 chuổi chỉ bao gồm 17 kí tự.
[x] **String**: Lấy ra bảng chữ cái alphabels. Mục đích sử dụng:
	Tạo mảng lưu trữ lại các kí tự alphabels.
	Loop mảng này để lưu trữ dữ liệu vào excel.
[x] **Os,Socket**:
	os: Sử dụng để truy xuất lấy ra folder nguồn trên máy tính. (folder download file)
	socket: bắt lỗi socket.error.
[x] **Sys**: Dung ossys kill chrome.
	Kill browser hiện tại để khởi tạo lại browser mới khi trang bị đứng.
[x] **Codecs**
[x] **Pyodbc**: Kết nối python với SQL Server. Tạo truy vấn từ bề mặt py đến MSSQL.
[x] **Logging**: Log lỗi, log log.
[x] **Argparse**
[x] **Threading**: lấy Timer tạo biến thời gian chờ cho từng khối code, Mục đích:
	Timer hẹn giờ cho sleep từ lib time.
[x] **Time**: sử dụng sleep để khiến process sleeping, mục đích:
	Đợi trang load.
[x] **Random**: randint trong randoms, kết hợp với sleep trong time, tạo khoảng ngủ mô phỏng thời gian chờ như người thật.

------------------