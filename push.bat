ECHO OFF
echo --------------------------------------------	PUSH DATA BY SO KHUNG----------------------------------------
echo   ****************************************************************************
echo -*									-*
echo -*				PHAT TIEN HEAD 				-*
echo -*				Team.Phan mem				-*
echo -*									-*
echo  ****************************************************************************
cd src
cd setting
pip install -r requirements.txt
echo -- Runing ...
cd ..
cd ..
echo ...
echo ....
python excel_to_list_data.py
pause
