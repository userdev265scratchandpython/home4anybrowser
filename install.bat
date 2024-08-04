@echo off
echo downloading...
set npath="%TEMP%\udev265SAP\"
if not exist "%npath%" mkdir "%npath%"

powershell -command "Invoke-WebRequest -Uri 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/home4anybrowser.html' -Method Get -OutFile '%npath%homepage.html'"
powershell -command "Invoke-WebRequest -Uri 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/background.png' -Method Get -OutFile '%npath%background.png'"
powershell -command "Invoke-WebRequest -Uri 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/bg.png' -Method Get -OutFile '%npath%bg.png'"

start "" "%npath%homepage.html"
