/*
Level                         XP Needed        */
v2        =                   83;
v3        =                   174;
v4        =                   276;
v5        =                   388;
v6        =                   512;
v7        =                   650;
v8        =                   801;
v9        =                   969;
v10       =                   1154;
v11       =                   1358;
v12       =                   1584;
v13       =                   1833;
v14       =                   2107;
v15       =                   2411;
v16       =                   2746;
v17       =                   3115;
v18       =                   3523;
v19       =                   3973;
v20       =                   4470;
v21       =                   5018;
v22       =                   5624;
v23       =                   6291;
v24       =                   7028;
v25       =                   7842;
v26       =                   8740;
v27       =                   9730;
v28       =                   10824;
v29       =                   12031;
v30       =                   13363;
Nextlvl = "Generating";
//------------------------
//Sporks game variables
//------------------------
_unit = player; 

_setscore = profileNamespace getVariable ["rewardScore",0];
currentMoney = _setscore;

if (currentMoney >= 1) then
{
//spork pwns
} else 
{
currentMoney = 0;
};

_setlevel = profileNamespace getVariable ["level",0];
currentlevel = _setlevel;

if (currentlevel >= 1) then
{
//spork pwns
} else 
{
currentlevel = 1;
};

_setscorez = profileNamespace getVariable ["money",0];
myMoneyZ = _setscorez;

if (myMoneyZ >= 1) then
{
//spork pwns
} else 
{
myMoneyZ = 0;
};

_setbank = profileNamespace getVariable ["bank",0];
bankMoney = _setbank;

if (bankMoney >= 1) then
{
//spork pwns
} else 
{
bankMoney = 0;
};

_spawnBot = profileNamespace getVariable ["MyBot",0];
SetBot = _spawnBot;

if (SetBot >= 1) then
{
//spork pwns
} else 
{
SetBot = 0;
};

_spawnVehicle = profileNamespace getVariable ["MyVehicle",0];
Setvehicle = _spawnVehicle;

if (Setvehicle >= 1) then
{
//spork pwns
} else 
{
Setvehicle = 0;
};

_timeplayed = profileNamespace getVariable ["TotalTime",0];
PlayingTime = _timeplayed;

if (PlayingTime >= 1) then
{
//spork pwns
} else 
{
PlayingTime = 0;
};

maxlvl = 30;
Pname = name player;
_uid = getPlayerUID player;
 

if (_uid in admin_house) then
{
mymoneyz = 20000;
};


/*
Sporks variables
*/

Web_name = "Not Configured";    /*    Make this you website name!  */
TS_name = "Not Configured";    /*    Make this you TeamSpeak name!  */

//------------------------
//Sporks gun shop variables
//------------------------
Not_killed = false;
_startsending = 0;
_endsending = 0;
player setVariable["Cmoney",_startsending, true];
player setVariable["Cmessage",_startsending, true];
actionstart = 0;
player setVariable["action",actionstart, true];
AI_actionstart = 0;
player setVariable["actionAI",AI_actionstart, true];
startdead = 0;
player setVariable["KnownDead",startdead, true];
MakeTheShop = true;		
_uid = getPlayerUID player; //dont mess with this
nothappening = 0;
_builder2 = 0;
oncetimes = 1; //dont mess with this
_highest = "Waiting Results";
debugMonitorz = 1; 
//-------------------------------
//end of sporks gun shop variables
//-------------------------------


//------------------------
//Sporks MOD variables
//------------------------
allplayers = allMissionObjects "playableUnits";
sporkstatchecker = 0; //to check stats
spawnthisshit = ""; //To spawn vehicles correctly

TimeToRestart = 180; //restart time in minutes.
IsDebug = true; //make this false to disable the debug.


addscore = 5; // How many points for every zombie kill
addscoreH = 10; // How many points for every headshot kill
addscore2 = 35; // How many points for every bandit kill
addscore3 = 20; // How many points for every survivor kill
addscoreZdouble = 15; // How many points for every 10 zombies


genRewards = true; //allow rewards for leveling up
allow_rewards = true; //make this same as line above
TheeAI = "";
"Sporkhint" addPublicVariableEventHandler {taskHint [_this select 1, [1, 0.05, 0.55, 1], "taskNew"];};	//so i can send messages to server
Exp_Counter = 0; //counts exp this session
Should_EXP = 0; //the exp they should have
myHp_corrector = 0; //correction of the health for dayz
reward_weapon = ""; //to generate ammo correctly
player setVariable["warnings",_warnings, true];//To set the warnings
doremove = false;//dont mess with this
doSuicide = false;//dont mess with this
doBloodbag = false;//dont mess with this
grenadePunish = false;//dont mess with this
allowtele = true;//dont mess with this
_Ztimer = true;//dont mess with this
moneyremover = -1;//dont mess with this
moneyremoverz = -1;//dont mess with this
Timestart = (timeRestart)-(round(serverTime/60));
Timestarted = (timeRestart)-(round(serverTime/60));
findTime = Timestart - _howLong;


//Do not mess with stuff below!

_dikCode = "";
_killsBB = player getVariable["banditKills",0]; //dont mess with this
_killsHH = 	player getVariable["humanKills",0]; //dont mess with this
_headShotss = player getVariable["headShots",0]; //dont mess with this
_humanity =		player getVariable["humanity",0]; //dont mess with this
_headShots = 	player getVariable["headShots",0]; //dont mess with this
_kills = 		player getVariable["zombieKills",0]; //dont mess with this
_killsH = 		player getVariable["humanKills",0]; //dont mess with this
_killsB = 		player getVariable["banditKills",0]; //dont mess with this
_humanity =		player getVariable["humanity",0]; //dont mess with this
_myblood = r_player_blood; //dont mess with this
pwnagespork =  _killsB + 1;//dont mess with this
pwnagespork2 = _headShots + 1;//dont mess with this
pwnagespork3 = _killsH + 1;//dont mess with this
pwnagespork4 = _kills + 1;//dont mess with this
zombiesTEN = _kills + 10;//dont mess with this
zombies10 = _kills + 10;//dont mess with this
zombies25 = _kills + 25;//dont mess with this
zombies40 = _kills + 40;//dont mess with this
zombies60 = _kills + 60;//dont mess with this
zombies100 = _kills + 100;//dont mess with this
pwnagespork_level = currentlevel + 1;//dont mess with this
currentZombies = _kills;//dont mess with this
countbandits =  _killsB;//dont mess with this
countheadshots = _headShots;//dont mess with this
counthumans = _killsH + 1;//dont mess with this
countzombies = _kills;//dont mess with this
z_counter = 0;//dont mess with this
restartfive = true;
restartthree = true;   
restartone = true;
player_first = false;


//sound files and texts
_firstblood = format["First Blood!",name player];   //what it says for getting for getting first blood.
_Killingspree = format["CONTINUE THE RAMPAGE!",name player];   //what it says for getting 10 zombies kills in the session you joined.
_Rampage = format["YOU ARE ON A RAMPAGE!",name player];   //what it says for getting 25 zombies kills in the session you joined.
_Dominating = format["YOU ARE DOMINATING!",name player];  //what it says for getting 40 zombies kills in the session you joined.
_Unstoppable = format["YOU ARE UNSTOPPABLE!",name player];  //what it says for getting 60 zombies kills in the session you joined.
_Godlike = format["YOU ARE GODLIKE!",name player];   //what it says for getting 100 zombies kills in the session you joined.


//sound files and texts
_firstblood = format["First Blood!",name player];   //what it says for getting for getting first blood.
_Killingspree = format["CONTINUE THE RAMPAGE!",name player];   //what it says for getting 10 zombies kills in the session you joined.
_Rampage = format["YOU ARE ON A RAMPAGE!",name player];   //what it says for getting 25 zombies kills in the session you joined.
_Dominating = format["YOU ARE DOMINATING!",name player];  //what it says for getting 40 zombies kills in the session you joined.
_Unstoppable = format["YOU ARE UNSTOPPABLE!",name player];  //what it says for getting 60 zombies kills in the session you joined.
_Godlike = format["YOU ARE GODLIKE!",name player];   //what it says for getting 100 zombies kills in the session you joined.

//Killstreak script by sporkulus

_Doublekill = format["DOUBLE KILL",name player]; //what it says for getting 2 zombie kills within a 2 seconds time limit
_Multikill = format["MULTIKILL",name player]; //what it says for getting 3 zombie kills within a 4 seconds time limit
_Ultrakill = format["ULTRAKILL",name player]; //what it says for getting 4 zombie kills within a 6 seconds time limit
_Monsterkill = format["MONSTER KILLER",name player]; //what it says for getting 5 zombie kills within a 8 seconds time limit

[_Doublekill , _Multikill, _Ultrakill, _Monsterkill] execvm "@DayZofDuty\dod\killstreak.sqf";





//gunshop script by sporkulus

gunshop = true; //disable gunshop? make this false if so.
_spawnAIS = "";//dont mess with this
_builder = 0; //dont mess with this
option123 = 0; //dont mess with this
noway = 0; //dont mess with this

[gunshop, _spawnAIS, _builder, option123, noway] execvm "@DayZofDuty\dod\gunshop.sqf";





//Anti spawn killing script by sporkulus

Anti_spawnkilling = true; //use this script? if not then make this false.
Start_Pos = getpos player; //where they started.
spawndistance = 50; //how far a player must go before the spawn killing protection stops | this is in meters
Norenew = true; //once then leave where they spawned in then they can not go back in to be safe again.

[Anti_spawnkilling, Start_Pos, spawndistance, Norenew] execvm "@DayZofDuty\dod\spawn.sqf";

_myblood = r_player_blood;//variable i use for their Health
_myHp = r_player_blood; //variable i use for their Health
_maxblood = 12000; //maxium blood
HP_percentage = 120; //1 percent of 12000