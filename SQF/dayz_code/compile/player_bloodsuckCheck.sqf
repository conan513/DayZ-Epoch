private ["_position","_radius","_spawnTypes","_nearestLoc","_Pos","_LocalBloodsuckers","_NumLocalBloodsuckers","_NumGlobalBloodsuckers","_chance","_LocalHounds","_NumLocalHounds","_NumGlobalHounds"];

_position = getPosATL player;
_radius = 300;

_chance = floor(random(101));
if (_chance < 3) exitWith {
	_LocalBloodsuckers = (position player) nearEntities ["Bloodsucker_Base",_radius];
	_NumLocalBloodsuckers = (count _LocalBloodsuckers);
	_NumGlobalBloodsuckers = (count entities "Bloodsucker_Base");

	if (_NumLocalBloodsuckers > 0) exitWith {};
	if (_NumGlobalBloodsuckers > 24) exitWith {};

	_spawnTypes = ["NameVillage","NameLocal","NameCity"];
	_nearestLoc = (nearestLocations [_position, _spawnTypes,_radius] select 0);

	if (isNil "_nearestLoc") exitWith {};
	_Pos = locationPosition (_nearestLoc);

	[_Pos] spawn bloodsuck_generate;
};

if (_chance < 13) exitWith {
	_LocalHounds = (position player) nearEntities ["DZ_Pastor_Infected",_radius];
	_NumLocalHounds = (count _LocalHounds);
	_NumGlobalHounds = (count entities "DZ_Pastor_Infected");

	if (_NumLocalHounds > 2) exitWith {};
	if (_NumGlobalHounds > 24) exitWith {};

	_spawnTypes = ["NameVillage","NameLocal","NameCity"];
	_nearestLoc = (nearestLocations [_position, _spawnTypes,_radius] select 0);

	if (isNil "_nearestLoc") exitWith {};
	_Pos = locationPosition (_nearestLoc);

	[_Pos] spawn infected_hound_generate;
};