@echo off
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "Offshore Web Server" cmd /k py -3 -m http.server 8000
) else (
  start "Offshore Web Server" cmd /k python -m http.server 8000
)
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:8000"
