//------------------------
//Sporks gun shop variables
//------------------------
gunshop = _this select 0;
_spawnAIS = _this select 1;	
_builder = _this select 2;
option123 = _this select 3;
noway = _this select 4;

//-------------------------------
//end of sporks gun shop variables
//-------------------------------


while {gunshop} do
{
_closeplayers = _pos nearEntities ["CAManBase",20];
_countplayers = count _closeplayers;
_countplayers = _countplayers - 1;

_pos = getpos player;
_veh = vehicle player;

  
//_checking =  _pos nearObjects ["Land_A_GeneralStore_01a",8];
//_checking1 = _pos nearObjects ["Land_A_GeneralStore_01",8];    
_checking2 = _pos nearObjects ["Land_Church_03",15];    
_checking3 = _pos nearObjects ["Land_Church_02",15];    
_checking4 = _pos nearObjects ["Land_Church_02a",15];    
//_count = count _checking;
//_count1 = count _checking1;
_count2 = count _checking2;
_count3 = count _checking3;
_count4 = count _checking4;
//if (_count >= 1) then {_builder = 1};
//if (_count1 >= 1) then {_builder = 1};
if (_count2 >= 1) then {_builder = 1};
if (_count3 >= 1) then {_builder = 1};
if (_count4 >= 1) then {_builder = 1};

_checkSellers = _pos nearEntities ["Soldier1_DZ",15]; 
_countsellers = count _checkSellers;

if (_builder != 1) then
{
_builder = 0;
};

if ((_count2 == 0) and (_count3 == 0) and (_count4 == 0) and (option123 == 1)) then
{
_builder = 0;
};

if ((noway == 0) and (_builder == 1) and (_countsellers == 0)) then
{
cutText [format["Gun Shop Open\n A vendor has spawned to meet you", name player], "PLAIN"];


_dir = getdir player;
_pos = getpos player;
_pos = [_pos select 0, _pos select 1, (getTerrainHeightASL _pos)+0.5];

_plrGroup = createGroup WEST;
_plrGroup allowFleeing 0;
_plrGroup setFormation "LINE";
_plrGroup enableAttack false;

_spawnAIS = (_plrGroup) createunit ["Soldier1_DZ", _pos, [], 0, "FORM"];
 
_spawnAIS disableAI "TARGET";
_spawnAIS disableAI "AUTOTARGET";
_spawnAIS disableAI "MOVE";
_spawnAIS disableAI "ANIM";
_spawnAIS disableAI "FSM";

_spawnAIS removeAllEventHandlers "handleDamage";
_spawnAIS addEventHandler ["handleDamage", {}];
_spawnAIS allowDamage false; 
 	
startdead = 0;
_spawnAIS setVariable["KnownDead",startdead, true];	
		
_AIaction = cursorTarget;     
_pos = getpos player;	
	
_spawnAIS setPosATL _pos;	
_spawnAIS attachTo [_veh,[0,4,1.25]];
detach _spawnAIS;

option123 = 1;
noway = 1;
};


if ((noway == 1) and (_builder == 0)) then
{
cutText [format["Gun Shop Closed\nYou left gun shop area %1", name player], "PLAIN"];
Deletevehicle _spawnAIS;
AI_action = false;
option123 = 0;
noway = 0;
};

};