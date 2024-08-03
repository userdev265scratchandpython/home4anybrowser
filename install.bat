@echo off
echo downloading...
set npath="%TEMP%\udev265SAP\"
mkdir "%NPATH%"
set "NPATH=%NPATH:\=/%"
powershell -command "[Uri]$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/home4anybrowser.html'; Invoke-WebRequest -Uri $uri -Method Get -OutFile \"%NPATH%/homepage.html\""
powershell -command "[Uri]$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/background.png'; Invoke-WebRequest -Uri $uri -Method Get -OutFile \"%NPATH%/background.png\""
powershell -command "[Uri]$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/bg.png'; Invoke-WebRequest -Uri $uri -Method Get -OutFile \"%NPATH%/bg.png\""
powershell -command "Start-Process -FilePath 'msedge' -ArgumentList 'file://%NPATH%/homepage.html'"
timeout /t 1
del %userprofie%\install.bat
exit
