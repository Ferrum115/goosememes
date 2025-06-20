
$zipUrl = "https://github.com/Ferrum115/goosememes/raw/refs/heads/main/goose.zip"

$localDir = "$env:USERPROFILE\Pictures"
$localImage = Join-Path $localDir "domain-wallpaper.jpg"
$localZip = Join-Path $localDir "goose.zip"
$extractPath = Join-Path $localDir "mudak"

Invoke-WebRequest -Uri $zipUrl -OutFile $localZip -UseBasicParsing

if (-not (Test-Path $extractPath)) {
    Expand-Archive -Path $localZip -DestinationPath $extractPath -Force
}

$exePath = Join-Path $extractPath "DesktopGoose v0.31\GooseDesktop.exe"
if (Test-Path $exePath) {
    Start-Process -FilePath $exePath
}
exit
