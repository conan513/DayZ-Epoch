custom_game = _this select 0;
admin_house = _this select 1; 
if (isNil "custom_game") then {custom_game = true;active_game = true;};
if (custom_game) then {active_game = true;};
waitUntil {!isNil ("dayz_animalCheck")};


call compile preprocessFileLineNumbers "@DayZofDuty\dod\settings.sqf";

call compile preprocessFileLineNumbers "@DayZofDuty\dod\Level_addons.sqf";

while {custom_game} do 
{

	
_pos = getpos player;
_veh = vehicle player;


_killsss = player getVariable["zombieKills",0]; 
_killZcount = player getVariable["zombieKills",0]; 
_countBB = player getVariable["banditKills",0];
_countHH = player getVariable["headShots",0];
_countHumans = player getVariable["humanKills",0]; 



TimestartContinue = (timeRestart)-(round(serverTime/60));


if ((TimestartContinue == 5) and (restartfive)) then
{
playsound "5min";
cutText ["5 Minutes until restart","PLAIN DOWN"];
restartfive = false;  
};


if ((TimestartContinue == 3) and (restartthree)) then
{
playsound "3min";
cutText ["3 Minutes until restart","PLAIN DOWN"];
restartthree = false; 
};


if ((TimestartContinue == 1) and (restartone)) then
{
playsound "1min";
cutText ["1 Minutes until restart","PLAIN DOWN"];
restartone = false;
};

if (TimestartContinue == 0) then
{
sleep 3;
endmission "LOSER";
};



	
	if (_killZcount >= zombies10) then
	{
    cutText [_Killingspree,"PLAIN DOWN"];
	playsound "killingspree";
	zombies10 = 9999;
	};	
	
	
	
	if (_killZcount >= zombies25) then
	{ 
    cutText [_Rampage,"PLAIN DOWN"];
	playsound "Rampage";
	zombies25 = 9999;
	};	


	
		
	if (_killZcount >= zombies40) then
	{
    cutText [_Dominating,"PLAIN DOWN"];
	playsound "Dominating";
	zombies40 = 9999;
	};	

	
		
	if (_killZcount >= zombies60) then
	{
   cutText [_Unstoppable,"PLAIN DOWN"];
	playsound "Unstoppable";
	zombies60 = 9999;
	};	

	
		
	if (_killZcount >= zombies100) then
	{
    cutText [_Godlike,"PLAIN DOWN"];
	playsound "Godlike";
	zombies10 = _killZcount + 10;
	zombies25 = _killZcount + 25;
	zombies40 = _killZcount + 40;
	zombies60 = _killZcount + 60;
	zombies100 = _killZcount + 100;
	};	

findObjects = _pos nearObjects ["FlagCarrierGermany_EP1",12000];
Countobjects = count findObjects;
if (Countobjects >= 1) then {_done = 1;player setVariable["firstblood",_done, true];};

	if (_killsss >= pwnagespork4) then
	{
	adding = profileNamespace setVariable ["rewardScore", currentMoney+addscore]; saveProfileNamespace;
	_setscore = profileNamespace getVariable ["rewardScore",0];
	currentMoney = _setscore;
	Exp_Counter = Exp_Counter + addscore;
	pwnagespork4 = _killsss + 1;
	};
	
	
	if (_countBB >= pwnagespork) then
	{
firstblood = player getVariable["firstblood",0];
if (firstblood == 0) then {cutText [_firstblood,"PLAIN DOWN"];playsound "firstblood";player_first = true;};
	adding = profileNamespace setVariable ["rewardScore", currentMoney+addscore2]; saveProfileNamespace;
	_setscore = profileNamespace getVariable ["rewardScore",0];
	currentMoney = _setscore;
	Exp_Counter = Exp_Counter + addscore2;
	pwnagespork = _countBB + 1;
	};
	
	
    if (_countHH >= pwnagespork2) then
	{
	cutText ["Headshot","PLAIN DOWN"];
	adding = profileNamespace setVariable ["rewardScore", currentMoney+addscoreH]; saveProfileNamespace;
	_setscore = profileNamespace getVariable ["rewardScore",0];
	currentMoney = _setscore;
	playsound "headshot";
	Exp_Counter = Exp_Counter + addscoreH;
	pwnagespork2 = _countHH + 1;
	};	
	
	if (_countHumans >= pwnagespork3) then
	{
firstblood = player getVariable["firstblood",0];
if (firstblood == 0) then {cutText [_firstblood,"PLAIN DOWN"];playsound "firstblood";player_first = true;};
	adding = profileNamespace setVariable ["rewardScore", currentMoney+addscore3]; saveProfileNamespace;
	_setscore = profileNamespace getVariable ["rewardScore",0];
	currentMoney = _setscore;
	Exp_Counter = Exp_Counter + addscore3;
	pwnagespork3 = _countHumans + 1;
	};

	
_vehicle_1 = objNull; 
if (player_first) then 
{
_flagpole = createVehicle ["FlagCarrierGermany_EP1", [11438.859, 11369.827, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
_vehicle_1 = _flagpole;
_flagpole setDir 34.523594;
_flagpole setPos [11438.859, 11369.827, -9.1552734e-005];
_flagpole hideobject true;
_flagpole allowdamage false;
};


TimestartContinue = (timeRestart)-(round(serverTime/60));
if (Timestarted > TimestartContinue) then
{
PlayingTime = Timestarted - TimestartContinue;
_timeplayed = profileNamespace getVariable ["TotalTime",0];
profileNamespace setVariable ["TotalTime",_timeplayed+PlayingTime]; saveProfileNamespace;
_timeplayed = profileNamespace getVariable ["TotalTime",0];
Timestarted = TimestartContinue;
};
//Setvehicle   SetBot

if ((findTime >= TimestartContinue) and (Setvehicle == 1)) then
{
_howLong = _howLong * 2;
Setvehicle = 0;
};

vehicle_spawner =
{
if (Setvehicle == 0) then
{
   _allUnits = allUnits;
	player setVehicleInit "allUnits = [];";
	processInitCommands;
	clearVehicleInit player;
	allUnits = _allUnits;
	
	_dir = getdir player;
	_pos = getpos player;
	_pos = [(_pos select 0)+5*sin(_dir),(_pos select 1)+5*cos(_dir),0]; 
	
	sporkulus = createVehicle [spawnthisshit, _pos, [], 0, "CAN_COLLIDE"];
	sporkulus setVariable ["ObjectUID", "script made by Sporkulus", true];	
	Setvehicle = 1;
};
};

profileNamespace setVariable ["MyVehicle", Setvehicle]; saveProfileNamespace;
profileNamespace setVariable ["MyBot",SetBot]; saveProfileNamespace;

if ((currentMoney >= (v2)) and (currentMoney < (v3)) and (Currentlevel == 1)) then
{
Currentlevel = 2;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "Old_bike_TK_CIV_EP1";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};	


if ((currentMoney >= (v3)) and (currentMoney < (v4)) and (Currentlevel == 2)) then
{
Currentlevel = 3;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "Old_bike_TK_CIV_EP1";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";if (allow_rewards) then {genRewards = true;};
};



if ((currentMoney >= (v4)) and (currentMoney < (v5)) and (Currentlevel == 3)) then
{
Currentlevel = 4;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "TT650_Civ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};


if ((currentMoney >= (v5)) and (currentMoney < (v6)) and (Currentlevel == 4)) then
{
Currentlevel = 5;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "TT650_Civ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v6)) and (currentMoney < (v7)) and (Currentlevel == 5)) then
{
Currentlevel = 6;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "ATV_US_EP1";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v7)) and (currentMoney < (v8)) and (Currentlevel == 6)) then
{
Currentlevel = 7;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "ATV_US_EP1";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v8)) and (currentMoney < (v9)) and (Currentlevel == 7)) then
{
Currentlevel = 8;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "tractorOld";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v9)) and (currentMoney < (v10)) and (Currentlevel == 8)) then
{
Currentlevel = 9;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "tractorOld";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v10)) and (currentMoney < (v11)) and (Currentlevel == 9)) then
{
Currentlevel = 10;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "policecar";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v11)) and (currentMoney < (v12)) and (Currentlevel == 10)) then
{
Currentlevel = 11;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "policecar";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v12)) and (currentMoney < (v13)) and (Currentlevel == 11)) then
{
Currentlevel = 12;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "hilux1_civil_3_open";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v13)) and (currentMoney < (v14)) and (Currentlevel == 12)) then
{
Currentlevel = 13;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "hilux1_civil_3_open";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v14)) and (currentMoney < (v15)) and (Currentlevel == 13)) then
{
Currentlevel = 14;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "UAZ_CDF";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v15)) and (currentMoney < (v16)) and (Currentlevel == 14)) then
{
Currentlevel = 15;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "UAZ_CDF";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v16)) and (currentMoney < (v17)) and (Currentlevel == 15)) then
{
Currentlevel = 16;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "UralCivil2";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v17)) and (currentMoney < (v18)) and (Currentlevel == 16)) then
{
Currentlevel = 17;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "UralCivil2";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v18)) and (currentMoney < (v19)) and (Currentlevel == 17)) then
{
Currentlevel = 18;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "V3S_Civ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v19)) and (currentMoney < (v20)) and (Currentlevel == 18)) then
{
Currentlevel = 19;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "V3S_Civ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v20)) and (currentMoney < (v21)) and (Currentlevel == 19)) then
{
Currentlevel = 20;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "HMMWV_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v21)) and (currentMoney < (v22)) and (Currentlevel == 20)) then
{
Currentlevel = 21;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "HMMWV_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v22)) and (currentMoney < (v23)) and (Currentlevel == 21)) then
{
Currentlevel = 22;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "SUV_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v23)) and (currentMoney < (v24)) and (Currentlevel == 22)) then
{
Currentlevel = 23;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "SUV_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v24)) and (currentMoney < (v25)) and (Currentlevel == 23)) then
{
Currentlevel = 24;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "SUV_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v25)) and (currentMoney < (v26)) and (Currentlevel == 24)) then
{
Currentlevel = 25;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "AH6X_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v26)) and (currentMoney < (v27)) and (Currentlevel == 25)) then
{
Currentlevel = 26;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "MH6J_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v27)) and (currentMoney < (v28)) and (Currentlevel == 26)) then
{
Currentlevel = 27;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "MH6J_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v28)) and (currentMoney < (v29)) and (Currentlevel == 27)) then
{
Currentlevel = 28;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "UH1H_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};

if ((currentMoney >= (v29)) and (currentMoney < (v30)) and (Currentlevel == 28)) then
{
Currentlevel = 29;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "UH1H_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
};


if ((currentMoney >= (v30)) and (Currentlevel == 29)) then
{
Currentlevel = 30;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
_setlevel = profileNamespace getVariable ["level",0];
Currentlevel = _setlevel;spawnthisshit = "UH1H_DZ";call vehicle_spawner;
cutText [format["LEVEL %1 REACHED!", Currentlevel], "WHITE IN"];
playsound "Challenge_Completed";genRewards = true;
Sporkhint = format ["%1 reached level %2", name player, Currentlevel];
publicVariable "Sporkhint";
};

_endsending = 0;
_myLevel = currentLevel;
player setVariable["Clevel",_myLevel, true];
player setVariable["allmoney",myMoneyZ, true];
player setVariable["MyBlood",r_player_blood, true];

playername = name player; 
player setVariable["myplayer",playername, true];

totalbank = bankMoney; 
player setVariable["totalbank",totalbank, true];

addmoneyc = player getVariable["Cmoney",0];

if (addmoneyc >= 1) then
{
bankMoney = bankMoney + addmoneyc;
cutText [format["You received $%1 and was transfered to bank!", addmoneyc], "PLAIN"];
player setVariable["Cmoney",_endsending, true];
};




player setVariable["EXP",currentMoney, true];
_units = playableUnits;	
_hasToolbox = "ItemToolbox" in items player;
_pos = getpos player;
_isMan = cursorTarget isKindOf "Man";
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
_isAI = cursorTarget isKindOf "Soldier1_DZ";
_hasMap = "ItemMap" in items player;
_name = CursorTarget;
_myGun = currentWeapon player;
_zombies = _pos nearEntities ["zZombie_Base",10000];
_allplayers = _pos nearEntities ["CAManBase",20000];
theAction = _name getVariable["action",0];
theActionAI = _name getVariable["actionAI",0];

if ((_isAI) and (theActionAI == 0)) then
{

if (currentlevel >= 25) then
{
Myaction7 = _name addaction[("<t color=""#ff0000"">" + ("Teleport to...") +"</t>"),"@DayZofDuty\DOD\teleport.sqf",_myLevel,0,false,true,"", ""];
};
Myaction6 = _name addaction[("<t color=""#ff8800"">" + ("Check Stats") +"</t>"),"@DayZofDuty\dod\stats.sqf",_myLevel,0,false,true,"", ""];
Myaction2 = _name addaction[("<t color=""#ff8800"">" + ("Open Gun Shop") +"</t>"),"@DayZofDuty\dod\gunshop\gunshop.sqs",_myLevel,0,false,true,"", ""];
Myaction3 = _name addaction[("<t color=""#ff8800"">" + ("Send Money") +"</t>"),"@DayZofDuty\dod\send.sqf",_myLevel,0,false,true,"", ""];
Myaction4 = _name addaction[("<t color=""#ff8800"">" + ("Deposit Money") +"</t>"),"@DayZofDuty\dod\deposit.sqf",_myLevel,0,false,true,"", ""];
Myaction5 = _name addaction[("<t color=""#ff8800"">" + ("Withdraw Money") +"</t>"),"@DayZofDuty\dod\withdraw.sqf",_myLevel,0,false,true,"", ""];
_fixaction = 1;
_name setVariable["actionAI",_fixaction, true];
};

if (_isAI) then
{
//isbuying
} else
{ 
	_pos = getPos player;
	_AIS = _pos nearEntities ["CAManBase",20];
	_count = count _AIS;
	for "_i" from 0 to (_count -1) do
	{
		_AI = _AIS select _i;
	if (_AI isKindOf "Soldier1_DZ") then
	{
		_AI removeAction Myaction2;
        _AI removeAction Myaction3;
        _AI removeAction Myaction4;
        _AI removeAction Myaction5;
        _AI removeAction Myaction6;
        _AI removeAction Myaction7;
	};
	};
};




	
_name = CursorTarget;
_isAlive = alive cursorTarget;
_isHarvested = cursorTarget getVariable["meatHarvested",false];
_isVehicle = cursorTarget isKindOf "AllVehicles";
_isVehicletype = typeOf cursorTarget in ["ATV_US_EP1","ATV_CZ_EP1"];
_isMan = cursorTarget isKindOf "Man";
_ownerID = cursorTarget getVariable ["characterID","0"];
_isAnimal = cursorTarget isKindOf "Animal";
_isDog = (cursorTarget isKindOf "DZ_Pastor" || cursorTarget isKindOf "DZ_Fin");
_isZombie = cursorTarget isKindOf "zZombie_base";
_isDestructable = cursorTarget isKindOf "BuiltItems";
_isTent = cursorTarget isKindOf "TentStorage";
_isStash = cursorTarget isKindOf "StashSmall";
_isMediumStash = cursorTarget isKindOf "StashMedium";
_isFuel = false;
_hasFuel20 = "ItemJerrycan" in magazines player;
_hasFuel5 = "ItemFuelcan" in magazines player;
_isAlive = alive cursorTarget;
_canmove = canmove cursorTarget;
_text = getText (configFile >> "CfgVehicles" >> typeOf cursorTarget >> "displayName");
_name = CursorTarget;
Enddead = 1;

{
_checkKnownbody = _x getVariable["KnownDeadbody",0];
if ((_checkKnownbody == 0) and (_x isKindOf "Man") and !(_x isKindOf "Animal") and !(_x isKindOf "zZombie_base")) then
{
_money = random 1000;
_totalmoney = round _money;
_x setVariable["Deadsmoney",_totalmoney, true];
_x setVariable["KnownDeadbody",Enddead, true];
};
} forEach allDEAD;

{
_checkKnownbodyz = _x getVariable["KnownDeadbody",0];
if ((_checkKnownbodyz == 0) and (_x isKindOf "zZombie_base")) then
{
_moneyz = random 30;
_totalmoneyz = round _moneyz;
_x setVariable["Deadsmoney",_totalmoneyz, true];
_x setVariable["KnownDeadbody",Enddead, true];
};
} forEach allDEAD;


_checkKnownmoney = _name getVariable["Deadsmoney",0];
_pos = getPos player;
_name = CursorTarget;
_GetLevelcursor = _name getVariable["Clevel",0];
_zombies = _pos nearEntities ["zZombie_Base",10000];
_allplayers = _pos nearEntities ["CAManBase",20000];

if ((_isMan) and !(_isAnimal) and !(_isZombie)) then 
{
if ((moneyremover < 0) and (_checkKnownmoney >= 0) and (_GetLevelcursor >= 5)) then
{

_takemoney = format["<t color='#0096ff'>Search for Money...</t>",_checkKnownmoney, name _name]; 
Myactionbody = (vehicle player) addAction [_takemoney, "@DayZofDuty\dod\Money.sqf",[_checkKnownmoney,_x], 0, false, true, "",""];
moneyremover = 0;
};
} else {
if (moneyremover == 0) then
{
(vehicle player) removeAction Myactionbody;
moneyremover = -1;
};
};


if (_isZombie) then 
{
if ((moneyremoverz < 0) and (_checkKnownmoney >= 0)) then
{

_takemoneyz = format["<t color='#0096ff'>Search for Money...</t>",_checkKnownmoney]; 
Myactionbodyz = (vehicle player) addAction [_takemoneyz, "@DayZofDuty\dod\ZMoney.sqf",[_checkKnownmoney,_x], 0, false, true, "",""];
moneyremoverz = 0;
};
} else {
if (moneyremoverz == 0) then
{
(vehicle player) removeAction Myactionbodyz;
moneyremoverz = -1;
};
};

if (r_player_blood <= 0) then
{
sleep 1;
mymoneyz = 0;
profileNamespace setVariable ["money",myMoneyZ]; saveProfileNamespace;
for "_i" from 0 to 40 do {deletevehicle _spawnAIS;};
endmission "LOSER";
};

if (mymoneyz > 20000) then
{
mymoneyz = 20000;
};

if (bankmoney > 20000) then
{
bankmoney = 20000;
};	
	
	{
	
	if (_x iskindof "Soldier1_DZ") then 
		{
         deleteVehicle _x;
		};
		
	} forEach allDEAD;



if ((grenadePunish) and (r_player_blood <= 0)) then
{
_pos = getposATL player;
"Grenade" createvehiclelocal ([(_pos select 0),(_pos select 1),(_pos select 2)]);
grenadePunish = false;
};



if ((Currentlevel == 1) and (genRewards)) then
{
genRewards = true;
if (genRewards) then
{
genRewards = false;
};
Nextlvl = v2;Lastlvl = 0;
Should_EXP = 1;
};

if ((Currentlevel == 2) and (genRewards)) then
{
genRewards = true;
if (genRewards) then
{
call _level_2;
genRewards = false;
};
Should_EXP = 2;
Nextlvl = v3;Lastlvl = 0;
};


if ((Currentlevel == 3) and (genRewards)) then
{
Nextlvl = v4;Lastlvl = v2;
genRewards = true;
if (genRewards) then
{
call _level_3;
genRewards = false;
};
Should_EXP = 3;
};

if ((Currentlevel == 4) and (genRewards)) then
{
Nextlvl = v5;Lastlvl = v3;
genRewards = true;
if (genRewards) then
{
call _level_4;
genRewards = false;
Should_EXP = 4;
};

};

if ((Currentlevel == 5) and (genRewards)) then
{
Nextlvl = v6;Lastlvl = v4;
genRewards = true;
if (genRewards) then
{
call _level_5;
genRewards = false;
};
Should_EXP = 5;
};

if ((Currentlevel == 6) and (genRewards)) then
{
Nextlvl = v7;Lastlvl = v5;
genRewards = true;
if (genRewards) then
{
call _level_6;
genRewards = false;
};
Should_EXP = 6;
};

if ((Currentlevel == 7) and (genRewards)) then
{
Nextlvl = v8;Lastlvl = v6;
genRewards = true;
if (genRewards) then
{
call _level_7;
genRewards = false;
};
Should_EXP = 7;
};

if ((Currentlevel == 8) and (genRewards)) then
{
Nextlvl = v9;Lastlvl = v7;
genRewards = true;
if (genRewards) then
{
call _level_8;
genRewards = false;
};
Should_EXP = 8;
};

if ((Currentlevel == 9) and (genRewards)) then
{
Nextlvl = v10;Lastlvl = v8;
genRewards = true;
if (genRewards) then
{
call _level_9;
genRewards = false;
};
Should_EXP = 9;
};

if ((Currentlevel == 10) and (genRewards)) then
{
Nextlvl = v11;Lastlvl = v9;
genRewards = true;
if (genRewards) then
{
call _level_10;
genRewards = false;
};
Should_EXP = 10;
};

if ((Currentlevel == 11) and (genRewards)) then
{
Nextlvl = v12;Lastlvl = v10;
genRewards = true;
if (genRewards) then
{
call _level_11;
genRewards = false;
};
Should_EXP = 11;
};

if ((Currentlevel == 12) and (genRewards)) then
{
Nextlvl = v13;Lastlvl = v11;
genRewards = true;
if (genRewards) then
{
call _level_12;
genRewards = false;
};
Should_EXP = 12;
};

if ((Currentlevel == 13) and (genRewards)) then
{
Nextlvl = v14;Lastlvl = v12;
genRewards = true;
if (genRewards) then
{
call _level_13;
genRewards = false;
};
Should_EXP = 13;
};

if ((Currentlevel == 14) and (genRewards)) then
{
Nextlvl = v15;Lastlvl = v13;
genRewards = true;
if (genRewards) then
{
call _level_14;
genRewards = false;
};
Should_EXP = 14;
};

if ((Currentlevel == 15) and (genRewards)) then
{
Nextlvl = v16;Lastlvl = v14;
genRewards = true;
if (genRewards) then
{
call _level_15;
genRewards = false;
};
Should_EXP = 15;
};

if ((Currentlevel == 16) and (genRewards)) then
{
Nextlvl = v17;Lastlvl = v15;
genRewards = true;
if (genRewards) then
{
call _level_16;
genRewards = false;
};
Should_EXP = 16;
};

if ((Currentlevel == 17) and (genRewards)) then
{
Nextlvl = v18;Lastlvl = v16;
genRewards = true;
if (genRewards) then
{
call _level_17;
genRewards = false;
};
Should_EXP = 17;
};

if ((Currentlevel == 18) and (genRewards)) then
{
Nextlvl = v19;Lastlvl = v17;
genRewards = true;
if (genRewards) then
{
call _level_18;
genRewards = false;
};
Should_EXP = 18;
};

if ((Currentlevel == 19) and (genRewards)) then
{
Nextlvl = v20;
genRewards = true;
if (genRewards) then
{
call _level_19;
genRewards = false;
};
Should_EXP = 19;
};

if ((Currentlevel == 20) and (genRewards)) then
{
Nextlvl = v21;Lastlvl = v19;
genRewards = true;
if (genRewards) then
{
call _level_20;
genRewards = false;
};
Should_EXP = 20;
};

if ((Currentlevel == 21) and (genRewards)) then
{
Nextlvl = v22;Lastlvl = v20;
genRewards = true;
if (genRewards) then
{
call _level_21;
genRewards = false;
};
Should_EXP = 21;
};

if ((Currentlevel == 22) and (genRewards)) then
{
Nextlvl = v23;Lastlvl = v21;
genRewards = true;
if (genRewards) then
{
call _level_22;
genRewards = false;
};
Should_EXP = 22;
};

if ((Currentlevel == 23) and (genRewards)) then
{
Nextlvl = v24;Lastlvl = v22;
genRewards = true;
if (genRewards) then
{
call _level_23;
genRewards = false;
};
Should_EXP = 23;
};

if ((Currentlevel == 24) and (genRewards)) then
{
Nextlvl = v25;Lastlvl = v23;
genRewards = true;
if (genRewards) then
{
call _level_24;
genRewards = false;
};
Should_EXP = 24;
};

if ((Currentlevel == 25) and (genRewards)) then
{
Nextlvl = v26;Lastlvl = v24;
genRewards = true;
if (genRewards) then
{
call _level_25;
genRewards = false;
};
Should_EXP = 24;
};

if ((Currentlevel == 26) and (genRewards)) then
{
Nextlvl = v27;Lastlvl = v25;

genRewards = true;
if (genRewards) then
{
call _level_26;
genRewards = false;
};
Should_EXP = 24;
};

if ((Currentlevel == 27) and (genRewards)) then
{
Nextlvl = v28;Lastlvl = v26;

genRewards = true;
if (genRewards) then
{
call _level_27;
genRewards = false;
};
Should_EXP = 24;
};

if ((Currentlevel == 28) and (genRewards)) then
{
Nextlvl = v29;Lastlvl = v27;

genRewards = true;
if (genRewards) then
{
call _level_28;
genRewards = false;
};
Should_EXP = 24;
};

if ((Currentlevel == 29) and (genRewards)) then
{
Nextlvl = v30;Lastlvl = v28;

genRewards = true;
if (genRewards) then
{
call _level_29;
genRewards = false;
};
Should_EXP = 24;
};

if ((Currentlevel == 30) and (genRewards)) then
{
Nextlvl = "Coming Soon!";Lastlvl = v29;

genRewards = true;
if (genRewards) then
{
call _level_30;
genRewards = false;
};
Should_EXP = 24;
};


	
if (currentMoney > 50000) then
{
currentMoney = 50000;
};


_setscore = profileNamespace getVariable ["rewardScore",0];	
_setlevel = profileNamespace getVariable ["level",0];
profileNamespace setVariable ["rewardScore",currentMoney]; saveProfileNamespace;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
profileNamespace setVariable ["bank",bankMoney]; saveProfileNamespace;
profileNamespace setVariable ["money",mymoneyz]; saveProfileNamespace;


        myhp_fixer = (r_player_blood / 12000) * 100;
        myHp_corrector = round myhp_fixer;
		if (r_player_blood <= 0) then {myHp_corrector = "Dead!";};
        _pos = getpos player;
        _Lastlvlz = Lastlvl;
        _moneyz = currentMoney;
		_shopMoneyz = myMoneyZ;
		_levelz = currentlevel;	
		_Nextlvlz = Nextlvl;
  		Pname = name player;
		MaxMoney = 100000;
		MaxMoneyz = 20000;
	   _EXPz = Exp_Counter;
	   _maxedlvl = 30;
	   _checkEXP = Should_EXP;
	   My_speed = speed (vehicle player);
	   
	    //#ff0000 = red
		//#FFFFFF = white
		//#00FF00 = green
	    //#00FFFF = blue
		//#c72842 = redish pink
		//#ffff00 = yellow
		//#ff8800 = orange
		

if (IsDebug) then
{
			hintSilent parseText format ["
			<t size='1.3' color='#FFFFFF'>Player Stats</t><br/>
			<t size='1' color='#ff8800'></t><br/>
			<t size='1' color='#ff8800'>Health: </t><t size='1' color='#ff0000'>%6</t><br/>
			<t size='1' color='#ff8800'>Level: </t><t size='1' color='#ff0000'>%2</t><br/>
			<t size='1' color='#ff8800'>Speed: </t><t size='1' color='#ff0000'>%9</t><br/>
			<t size='1' color='#ff8800'></t><br/>
			<t size='1' color='#ff8800'>Exp: </t><t size='1' color='#ff0000'>%3\%1</t><br/>
			<t size='1' color='#ff8800'>Money: </t><t size='1' color='#ff0000'>$%7</t><br/>
			<t size='1' color='#ff8800'>Money in Bank: </t><t size='1' color='#ff0000'>$%10</t><br/>
			(_Nextlvlz),
			(_levelz),
			(_moneyz),
			(_EXPz),
			((TimeToRestart)-(round(serverTime/60))),
			(myHp_corrector),
			(_shopMoneyz),
			(_highest),
			(round My_speed),
			(bankMoney),
			(Web_name),
			(TS_name)];		
};

		
		
	
if (currentlevel != 30) then
{			
if ((_moneyz) > ((_Nextlvlz)+100)) then
{
Currentlevel = 1;
currentMoney = 0;
_setscore = profileNamespace getVariable ["rewardScore",0];	
_setlevel = profileNamespace getVariable ["level",0];
profileNamespace setVariable ["rewardScore",currentMoney]; saveProfileNamespace;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
Sporkhint = format ["%1 Hacked his EXP!", name player];
publicVariable "Sporkhint";
};
};

if ((_levelz) > (_maxedlvl)) then
{
Currentlevel = 1;
currentMoney = 0;
_setscore = profileNamespace getVariable ["rewardScore",0];	
_setlevel = profileNamespace getVariable ["level",0];
profileNamespace setVariable ["rewardScore",currentMoney]; saveProfileNamespace;
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
Sporkhint = format ["%1 Hacked his level!", name player];
publicVariable "Sporkhint";
};


if (((_moneyz) < (_Lastlvlz)) and (currentlevel > 2)) then
{
Currentlevel = Currentlevel - 1;
_setlevel = profileNamespace getVariable ["level",0];
profileNamespace setVariable ["level", Currentlevel]; saveProfileNamespace;	
genRewards = true;
};
};