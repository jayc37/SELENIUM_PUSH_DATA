ECHO OFF
echo --------------------------------------------	PUSH DATA ----------------------------------------
echo   ****************************************************************************
echo -*									-*
echo -*				 				-*
echo -*				   MADE BY: ME				-*
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
