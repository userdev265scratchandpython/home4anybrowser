$npath = "$env:APPDATA\temp"
Remove-Item -Path $npath -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Path $npath -Force
$npath = $npath -replace '\\', '/'
$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/home4anybrowser.html'
Invoke-WebRequest -Uri $uri -Method Get -OutFile "$npath/homepage.html" -Force
$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/background.png'
Invoke-WebRequest -Uri $uri -Method Get -OutFile "$npath/background.png" -Force
$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/bg.png'
Invoke-WebRequest -Uri $uri -Method Get -OutFile "$npath/bg.png" -Force
Start-Process -FilePath 'msedge' -ArgumentList "file://$npath/homepage.html"
