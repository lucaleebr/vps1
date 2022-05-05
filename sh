Hosted File:
Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "Youtube1234" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser
Invoke-WebRequest https://bin.equinox.io/c/4Ym0zA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "28iwS1YsceEnFYBNS5yaSHWJUva_6fAW53AB7vVySF1x346bN" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -a 999999 10.10.10.10 >>a.ps1
.\a.ps1 
