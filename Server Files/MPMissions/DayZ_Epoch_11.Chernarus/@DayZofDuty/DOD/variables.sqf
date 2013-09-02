
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
_howLong = 20; //every X amount of mins they can respawn the earned vehicle
sporkstatchecker = 0; //to check stats
spawnthisshit = ""; //To spawn vehicles correctly

TimeToRestart = 15; //restart time in minutes.



addscore = 5; // How many points for every zombie kill
addscoreH = 10; // How many points for every headshot kill
addscore2 = 35; // How many points for every bandit kill
addscore3 = 20; // How many points for every human kill
addscoreZdouble = 15; // How many points for every 10 zombies


_myblood = r_player_blood;//variable i use for their Health
_myHp = r_player_blood; //variable i use for their Health
_maxblood = 12000; //maxium blood
HP_percentage = 120; //1 percent of 12000

genRewards = true; //allow rewards for leveling up
allow_rewards = true; //make this same as line above

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


deathofplayermessage = true; //allow death messages

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