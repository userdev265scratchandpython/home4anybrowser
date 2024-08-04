@echo off
echo downloading...
set npath="C:\Users\%username%\AppData\Roaming\temp\udev265SAP\"
if exist "%npath%" rmdir /s /q "%npath%"
mkdir "%npath%"

powershell -command "Invoke-WebRequest -Uri 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/home4anybrowser.html' -Method Get | Set-Content -LiteralPath '%npath%homepage.html'"
powershell -command "Invoke-WebRequest -Uri 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/background.png' -Method Get | Set-Content -LiteralPath '%npath%background.png' -Encoding Byte"
powershell -command "Invoke-WebRequest -Uri 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/bg.png' -Method Get | Set-Content -LiteralPath '%npath%bg.png' -Encoding Byte"

start "" "%npath%homepage.html"
