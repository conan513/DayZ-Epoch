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
mkdir ..\Build\ServerFiles\dayz_epoch\@DayZ_Epoch_Server\addons
move dayz_anim.pbo ..\Build\@DayZ_Epoch\addons\
move dayz_code.pbo ..\Build\@DayZ_Epoch\addons\
move dayz_epoch.pbo ..\Build\@DayZ_Epoch\addons\
move dayz_epoch_b.pbo ..\Build\@DayZ_Epoch\addons\
move dayz_server.pbo ..\Build\ServerFiles\dayz_epoch\@DayZ_Epoch_Server\addons
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

echo.
echo Copy binaries and configs...
echo.

cd ..\..\
copy "Server Files\Binaries\Database.dll" Build
copy "Server Files\Binaries\tbb.dll" Build
copy "Server Files\Binaries\tbbmalloc.dll" Build

mkdir Build\ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\
copy "Server Files\Binaries\HiveExt.dll" Build\ServerFiles\dayz_epoch\@DayZ_Epoch_Server\
copy "Server Files\Binaries\HiveExt.ini" Build\ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\
copy "Server Files\Binaries\basic.cfg" Build\ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\
copy "Server Files\Binaries\config.cfg" Build\ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\

copy "Server Files\dayz_game.bat" Build
copy "Server Files\dayz_server.bat" Build

echo.
echo Copy tools and database...
echo.

mkdir Build\ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\BattlEye\
copy "Server Files\Battleye\*.*" Build\ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\BattlEye\

mkdir Build\Tools
copy Tools\*.* Build\Tools
mkdir Build\Tools\3rdparty
copy Tools\3rdparty\*.* Build\Tools\3rdparty
mkdir Build\Tools\redist
copy Tools\redist\*.* Build\Tools\redist

tools\3rdparty\rar.exe x "Server Files\Database.rar" Build\Tools

copy Tools

pause
exit
