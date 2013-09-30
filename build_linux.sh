#!/bin/sh

rm -r ./Build
mkdir Build

cd SQF
echo Build PBO files...

wine "../Tools/cpbo.exe" -y -p dayz_anim
wine "../Tools/cpbo.exe" -y -p dayz_code
wine "../Tools/cpbo.exe" -y -p dayz_epoch
wine "../Tools/cpbo.exe" -y -p dayz_epoch_b
wine "../Tools/cpbo.exe" -y -p dayz_server
wine "../Tools/cpbo.exe" -y -p dayz_sfx
wine "../Tools/cpbo.exe" -y -p epoch_buildings

echo Move PBO files...

mkdir ../Build/@DayZ_Splights/
mkdir ../Build/@DayZ_Splights/addons/

mkdir ../Build/ServerFiles/
mkdir ../Build/ServerFiles/dayz_splights/
mkdir ../Build/ServerFiles/dayz_splights/@DayZ_Splights_Server/
mkdir ../Build/ServerFiles/dayz_splights/@DayZ_Splights_Server/addons
mv ./dayz_anim.pbo ../Build/@DayZ_Splights/addons/
mv ./dayz_code.pbo ../Build/@DayZ_Splights/addons/
mv ./dayz_epoch.pbo ../Build/@DayZ_Splights/addons/
mv ./dayz_epoch_b.pbo ../Build/@DayZ_Splights/addons/
mv ./dayz_server.pbo ../Build/ServerFiles/dayz_splights/@DayZ_Splights_Server/addons
mv ./dayz_sfx.pbo ../Build/@DayZ_Splights/addons/
mv ./epoch_buildings.pbo ../Build/@DayZ_Splights/addons/

echo Generate bikey...

mkdir ../Build/Keys
cd ../Build/Keys
wine "../../Tools/DSCreateKey.exe" dayz_splights


echo Generate bisigns...

wine "../../Tools/DSSignFile.exe" ./dayz_splights.biprivatekey "../@DayZ_Splights/addons/dayz_anim.pbo"
wine "../../Tools/DSSignFile.exe" ./dayz_splights.biprivatekey "../@DayZ_Splights/addons/dayz_code.pbo"
wine "../../Tools/DSSignFile.exe" ./dayz_splights.biprivatekey "../@DayZ_Splights/addons/dayz_epoch.pbo"
wine "../../Tools/DSSignFile.exe" ./dayz_splights.biprivatekey "../@DayZ_Splights/addons/dayz_epoch_b.pbo"
wine "../../Tools/DSSignFile.exe" ./dayz_splights.biprivatekey "../@DayZ_Splights/addons/dayz_sfx.pbo"
wine "../../Tools/DSSignFile.exe" ./dayz_splights.biprivatekey "../@DayZ_Splights/addons/epoch_buildings.pbo"

echo mv and clean files...

rm *.biprivatekey

echo Build missions...

cd ../..
cd "Server Files/MPMissions/"
wine "../../Tools/cpbo.exe" -y -p ./DayZ_Splights_11.Chernarus

mkdir "../../Build/MPMissions/"
mv "./DayZ_Splights_11.Chernarus.pbo" "../../Build/MPMissions/"

echo cp binaries and configs...

cd ../../
cp "Server Files/Binaries/Database.dll" Build
cp "Server Files/Binaries/tbb.dll" Build
cp "Server Files/Binaries/tbbmalloc.dll" Build

mkdir Build/ServerFiles/dayz_splights/dayz_splights_11_Chernarus/
cp "Server Files/Binaries/HiveExt.dll" ./Build/ServerFiles/dayz_splights/@DayZ_Splights_Server/
cp "Server Files/Binaries/HiveExt.ini" ./Build/ServerFiles/dayz_splights/dayz_splights_11_Chernarus/
cp "Server Files/Binaries/basic.cfg" ./Build/ServerFiles/dayz_splights/dayz_splights_11_Chernarus/
cp "Server Files/Binaries/config.cfg" ./Build/ServerFiles/dayz_splights/dayz_splights_11_Chernarus/

cp "Server Files/dayz_game.bat" ./Build
cp "Server Files/dayz_server.bat" ./Build

echo cp tools and database...

mkdir Build/ServerFiles/dayz_splights/dayz_splights_11_Chernarus/BattlEye/
cp "Server Files/Battleye/"*.* Build/ServerFiles/dayz_splights/dayz_splights_11_Chernarus/BattlEye/

mkdir Build/Tools
cp Tools/*.* Build/Tools
mkdir Build/Tools/3rdparty
cp Tools/3rdparty/*.* Build/Tools/3rdparty
mkdir Build/Tools/redist
cp Tools/redist/*.* Build/Tools/redist

exit
