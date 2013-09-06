@echo off
COLOR 0B
set mod=%1

tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I /N "mysqld">NUL
if "%ERRORLEVEL%"=="0" goto server
if "%ERRORLEVEL%"=="1" start tools\3rdparty\silentcmd tools\database\bin\mysqld --defaults-file=tools\Database\bin\my.ini --standalone --console & echo Starting Database server... & REM ping -n 10 127.0.0.1>nul

:server
start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\config.cfg" "-cfg=ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\basic.cfg" "-profiles=ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus" -name=dayz_epoch_11_Chernarus "-mod=@DayZ_Epoch;ServerFiles\dayz_epoch\@DayZ_Epoch_Server;" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048
exit
