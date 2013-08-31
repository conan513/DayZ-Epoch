@echo off
COLOR 0B

if exist Build (RD /S /Q Build & mkdir Build) else mkdir Build

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
echo Move PBO files...
echo.

mkdir ..\Build\@DayZ_Epoch\addons\
mkdir ..\Build\server\
move dayz_anim.pbo ..\Build\@DayZ_Epoch\addons\
move dayz_code.pbo ..\Build\@DayZ_Epoch\addons\
move dayz_epoch.pbo ..\Build\@DayZ_Epoch\addons\
move dayz_epoch_b.pbo ..\Build\@DayZ_Epoch\addons\
move dayz_server.pbo ..\Build\server\
move dayz_sfx.pbo ..\Build\@DayZ_Epoch\addons\
move epoch_buildings.pbo ..\Build\@DayZ_Epoch\addons\

echo.
echo Generate bikey...
echo.

if exist ..\Build\Keys (RD /S /Q ..\Build\Keys & mkdir ..\Build\Keys) else mkdir ..\Build\Keys
cd ..\Build\Keys
..\..\Tools\DSCreateKey.exe dayz_spp2
copy "..\..\Server Files\Keys\dayz_spp.bikey" .\

echo.
echo Generate bisign's...
echo.

..\..\Tools\DSSignFile.exe dayz_spp2.biprivatekey ..\@DayZ_Epoch\addons\dayz_anim.pbo
..\..\Tools\DSSignFile.exe dayz_spp2.biprivatekey ..\@DayZ_Epoch\addons\dayz_code.pbo
..\..\Tools\DSSignFile.exe dayz_spp2.biprivatekey ..\@DayZ_Epoch\addons\dayz_epoch.pbo
..\..\Tools\DSSignFile.exe dayz_spp2.biprivatekey ..\@DayZ_Epoch\addons\dayz_epoch_b.pbo
..\..\Tools\DSSignFile.exe dayz_spp2.biprivatekey ..\@DayZ_Epoch\addons\dayz_sfx.pbo
..\..\Tools\DSSignFile.exe dayz_spp2.biprivatekey ..\@DayZ_Epoch\addons\epoch_buildings.pbo

echo.
echo Move and clean files...
echo.


echo.
del *.biprivatekey

echo.
echo Build missions...
echo.

cd ..\.. & cd Server Files\MPMissions\
..\..\Tools\cpbo.exe -y -p DayZ_Epoch_11.Chernarus
echo.
mkdir ..\..\Build\MPMissions\
move DayZ_Epoch_11.Chernarus.pbo ..\..\Build\MPMissions\

pause
exit
