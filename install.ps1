# Set the URL of the batch file
[Uri]$uri = 'https://github.com/userdev265scratchandpython/home4anybrowser/raw/main/install.bat' 

# Print a message to the console
Write-Output "Downloading from: $uri"
Start-Sleep -s 2 

try {
    # Download the batch file
    Invoke-WebRequest -Uri $uri -Method Get -OutFile "$env:TEMP\install.bat" 
} catch {
    # Handle any errors that occur during the download
    Write-Error "Failed to download batch file: $($Error[0].Message)"
    exit 1
}

try {
    # Run the batch file
    Start-Process -FilePath "cmd" -ArgumentList "/c", "$env:TEMP\install.bat" -Wait 
} catch {
    # Handle any errors that occur while running the batch file
    Write-Error "Failed to run batch file: $($Error[0].Message)"
    exit 1
}

# Exit the PowerShell script
exit 0
