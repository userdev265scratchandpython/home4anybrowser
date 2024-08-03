$npath = "$env:APPDATA\temp"
Remove-Item -Path $npath -Recurse -Force -ErrorAction SilentlyContinue
if (!(Test-Path -Path $npath)) {
    New-Item -ItemType Directory -Path $npath -Force
}
$npath = $npath -replace '\\', '/'
$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/home4anybrowser.html'
Invoke-WebRequest -Uri $uri -Method Get -OutFile "$npath/homepage.html"
$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/background.png'
Invoke-WebRequest -Uri $uri -Method Get -OutFile "$npath/background.png"
$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/bg.png'
Invoke-WebRequest -Uri $uri -Method Get -OutFile "$npath/bg.png"
Start-Process -FilePath 'msedge' -ArgumentList "file://$npath/homepage.html"
