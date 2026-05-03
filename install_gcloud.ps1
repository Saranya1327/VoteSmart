$url = "https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe"
$out = "$env:TEMP\GoogleCloudSDKInstaller.exe"
Invoke-WebRequest -Uri $url -OutFile $out
Start-Process -FilePath $out -ArgumentList "/S", "/noreporting" -Wait
