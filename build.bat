@echo off
COLOR 0B

cd SQF
echo Build PBO files...
echo.
..\Tools\cpbo.exe -y -p dayz_anim
..\Tools\cpbo.exe -y -p dayz_code
..\Tools\cpbo.exe -y -p dayz_epoch
..\Tools\cpbo.exe -y -p dayz_epoch_b
..\Tools\cpbo.exe -y -p dayz_server
..\Tools\cpbo.exe -y -p dayz_sfx
..\Tools\cpbo.exe -y -p epoch_buildings

echo.
echo Generate bikey's...
echo.

..\Tools\DSCreateKey.exe dayz_anim.pbo
..\Tools\DSCreateKey.exe dayz_code.pbo
..\Tools\DSCreateKey.exe dayz_epoch.pbo
..\Tools\DSCreateKey.exe dayz_epoch_b.pbo
REM ..\Tools\DSCreateKey.exe dayz_server.pbo
..\Tools\DSCreateKey.exe dayz_sfx.pbo
..\Tools\DSCreateKey.exe epoch_buildings.pbo

echo.
echo Generate bisign's...
echo.

..\Tools\DSSignFile.exe dayz_anim.pbo.biprivatekey dayz_anim.pbo
..\Tools\DSSignFile.exe dayz_code.pbo.biprivatekey dayz_code.pbo
..\Tools\DSSignFile.exe dayz_epoch.pbo.biprivatekey dayz_epoch.pbo
..\Tools\DSSignFile.exe dayz_epoch_b.pbo.biprivatekey dayz_epoch_b.pbo
REM ..\Tools\DSSignFile.exe dayz_server.pbo.biprivatekey dayz_server.pbo
..\Tools\DSSignFile.exe dayz_sfx.pbo.biprivatekey dayz_sfx.pbo
..\Tools\DSSignFile.exe epoch_buildings.pbo.biprivatekey epoch_buildings.pbo

echo.
echo Move and clean files...
echo.

move dayz_server.pbo ..\Build\server\
del *.bikey
echo.
move *.pbo ..\Build\@DayZ_Epoch\addons\
echo.
move *.bisign ..\Build\@DayZ_Epoch\addons\
echo.
del *.biprivatekey

cd .. & cd Server Files\MPMissions\
..\..\Tools\cpbo.exe -y -p DayZ_Epoch_11.Chernarus
echo.
if exist ..\..\Build\MPMissions (RD /S /Q ..\..\Build\MPMissions & mkdir ..\..\Build\MPMissions) else mkdir ..\..\Build\MPMissions\
move DayZ_Epoch_11.Chernarus.pbo ..\..\Build\MPMissions\

pause
exit
