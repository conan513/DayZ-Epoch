/*
	spawnBandits_dynamic

	Usage: Called by an activated dynamic trigger when a player unit enters the trigger area.
	
	Description: Spawns a group of AI units some distance from a dynamically-spawned trigger. These units do not respawn after death.
	
	Last updated: 7:42 PM 10/20/2013
*/

private ["_patrolDist","_trigger","_totalAI","_unitGroup","_targetPlayer","_pList","_pUID","_playerPos","_playerCount","_spawnPos","_startTime","_nearbyPlayers","_revealLevel","_baseDist","_distVariance","_spawnChance","_maxAdded"];
if (!isServer) exitWith {};

_patrolDist = _this select 0;
_trigger = _this select 1;
_pList = _this select 2;
_pUID = _this select 3;
_spawnChance = _this select 4;

if (count (_trigger getVariable ["GroupArray",[]]) > 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Active groups found. Exiting spawn script (spawnBandits_dynamic)";};};	

_startTime = diag_tickTime;

//diag_log format ["Target player UID: %1",_pUID];
//diag_log format ["Number of players in pList: %1.",count _pList];

{
	if ((getPlayerUID _x) == _pUID) exitWith {_targetPlayer = _x};
} forEach _pList;
_playerPos = getPosATL _targetPlayer;

//Count number of players close to the targeted player.
_nearbyPlayers = _playerPos nearEntities [["AllVehicles","CAManBase"],75];
_playerCount = {isPlayer _x} count _nearbyPlayers;
if (_playerCount > 6) then {
	_nearbyPlayers resize 6;
};
if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Counted %1 players within 75m of target player %2 position (spawnBandits_dynamic)",_playerCount,name _targetPlayer];};

_maxAdded = switch (true) do {
	case (_spawnChance < 0.25): {1};
	case ((_spawnChance >= 0.25)&&(_spawnChance < 0.75)): {2};
	case (_spawnChance > 0.75): {3};
	case default {0};
};

//Calculate number of AI to spawn. Equation: (number of players in specified radius) + (random number between 0-2). Maximum AI spawned: 6.
_totalAI = ((_playerCount + floor (random _maxAdded)) min 6);

//No more exitWith statements, so trigger is committed to spawning at this point.
if (DZAI_debugMarkers > 0) then {
	private["_marker"];
	_marker = format["trigger_%1",_trigger];
	//_marker setMarkerPos _playerPos;
	_marker setMarkerColor "ColorOrange";
	_marker setMarkerAlpha 0.9;				//Dark orange: Activated trigger
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Processed dynamic trigger spawn data in %1 seconds (spawnBandits_dynamic).",(diag_tickTime - _startTime)];};

_startTime = diag_tickTime;
_baseDist = 200;
_distVariance = 50;

//Spawn units
_spawnPos = [_playerPos,(_baseDist + random (_distVariance)),random(360),false] call SHK_pos;
_weapongrade = [DZAI_weaponGrades,DZAI_gradeChancesDyn] call fnc_selectRandomWeighted;
_unitGroup = [_totalAI,grpNull,_spawnPos,_trigger,_weapongrade] call fnc_createGroup;

//Set group variables
_unitGroup setVariable ["unitType","dynamic"];
_unitGroup allowFleeing 0;
	
//Reveal target player and nearby players to AI.
_unitGroup setFormDir ([(leader _unitGroup),_targetPlayer] call BIS_fnc_dirTo);
_revealLevel = (1.5 + random (2.5));
{_unitGroup reveal [_x,_revealLevel]} forEach _nearbyPlayers;
(units _unitGroup) doTarget _targetPlayer;
(units _unitGroup) doFire _targetPlayer;

//Update AI count
DZAI_numAIUnits = DZAI_numAIUnits + _totalAI;
if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Group %1 has group size %2.",_unitGroup,_totalAI];};

0 = [_unitGroup,_spawnPos,_patrolDist,_targetPlayer,getPosATL _trigger] spawn fnc_seekPlayer;

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned 1 new AI groups of %1 units each in %2 seconds at %3 (spawnBandits_dynamic).",_totalAI,(diag_tickTime - _startTime),(mapGridPosition _trigger)];};

0 = [_trigger,[_unitGroup]] call fnc_initTrigger;

true
