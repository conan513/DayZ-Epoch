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

..\Tools\cpbo.exe -y -p vilas_cpl
..\Tools\cpbo.exe -y -p SOW_sounds

echo.
echo Move PBO files...
echo.

mkdir ..\Build\@DayZ_Epoch_Plus\addons\
mkdir ..\Build\ServerFiles\DayZ_Epoch_Plus\@DayZ_Epoch_Plus_Server\addons
move dayz_server.pbo ..\Build\ServerFiles\DayZ_Epoch_Plus\@DayZ_Epoch_Plus_Server\addons
move *.pbo ..\Build\@DayZ_Epoch_Plus\addons\

copy extras\*.* ..\Build\@DayZ_Epoch_Plus\
copy extras\addons\*.* ..\Build\@DayZ_Epoch_Plus\addons\

echo.
echo Generate bikey...
echo.

if exist ..\Build\Keys (RD /S /Q ..\Build\Keys & mkdir ..\Build\Keys) else mkdir ..\Build\Keys
cd ..\Build\Keys
..\..\Tools\DSCreateKey.exe dayz_spp
REM copy "..\..\Server Files\Keys\*.*"

echo.
echo Generate bisign's...
echo.

..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\dayz_anim.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\dayz_code.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\dayz_epoch.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\dayz_epoch_b.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\dayz_sfx.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\epoch_buildings.pbo

..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\ASC_EU_Lights.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\csj_gyroac.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\dayz.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\dayz_communityassets.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\dayz_equip.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\dayz_vehicles.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\dayz_weapons.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\glt_m300t.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\gnt_c185.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\jetskiyanahui.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\MAP_EU.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\sigisolda.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\st_bunnyhop.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\st_collision.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\st_evasive.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\suv_colours.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\vilas_cpl.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\vilas_cpl_core.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\weapons_a2ru.pbo

..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\smk_anims_lite.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\SOW_sounds.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\ns_mutants.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\gsc_stalker.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\misc.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\skins.pbo
..\..\Tools\DSSignFile.exe dayz_spp.biprivatekey ..\@DayZ_Epoch_Plus\addons\SOW_sounds_c.pbo

echo.
echo Move and clean files...
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

mkdir Build\ServerFiles\DayZ_Epoch_Plus\DayZ_Epoch_Plus_11_Chernarus\
copy "Server Files\Binaries\HiveExt.dll" Build\ServerFiles\DayZ_Epoch_Plus\@DayZ_Epoch_Plus_Server\
copy "Server Files\Binaries\HiveExt.ini" Build\ServerFiles\DayZ_Epoch_Plus\DayZ_Epoch_Plus_11_Chernarus\
copy "Server Files\Binaries\basic.cfg" Build\ServerFiles\DayZ_Epoch_Plus\DayZ_Epoch_Plus_11_Chernarus\
copy "Server Files\Binaries\config.cfg" Build\ServerFiles\DayZ_Epoch_Plus\DayZ_Epoch_Plus_11_Chernarus\

copy "Server Files\dayz_game.bat" Build
copy "Server Files\dayz_server.bat" Build

echo.
echo Copy tools and database...
echo.

mkdir Build\ServerFiles\DayZ_Epoch_Plus\DayZ_Epoch_Plus_11_Chernarus\BattlEye\
copy "Server Files\Battleye\*.*" Build\ServerFiles\DayZ_Epoch_Plus\DayZ_Epoch_Plus_11_Chernarus\BattlEye\

mkdir Build\Tools
copy Tools\*.* Build\Tools
mkdir Build\Tools\3rdparty
copy Tools\3rdparty\*.* Build\Tools\3rdparty
mkdir Build\Tools\redist
copy Tools\redist\*.* Build\Tools\redist

REM tools\3rdparty\rar.exe x "Server Files\Database.rar" Build\Tools

pause
exit
