@echo off
cls

if exist main.o del main.o

echo Compile
wla-z80 -o main.o main.asm
if errorlevel 1 exit /b 1

echo [objects] > linkfile
echo main.o >> linkfile

echo Link
wlalink linkfile output.sms
if errorlevel 1 exit /b 1

if exist output.sms.sym del output.sms.sym
if exist main.o del main.o

echo Run
::start "" /b java -Dsun.java2d.d3d=false -jar C:\SEGA\Emulicious\Emulicious.jar -remotedebug 58870 output.sms
::powershell -NoProfile -Command "$deadline = (Get-Date).AddSeconds(10); while ((Get-Date) -lt $deadline) { $client = New-Object System.Net.Sockets.TcpClient; try { $client.Connect('127.0.0.1', 58870); exit 0 } catch { Start-Sleep -Milliseconds 100 } finally { $client.Dispose() } }; Write-Error 'Emulicious remote debugger did not start on port 58870.'; exit 1"
::if errorlevel 1 exit /b 1