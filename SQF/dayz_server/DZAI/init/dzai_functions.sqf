/*
	DZAI Functions
	
	Last Updated: 7:49 PM 10/30/2013
*/

waituntil {!isnil "bis_fnc_init"};
diag_log "[DZAI] Compiling DZAI functions.";
// [] call BIS_fnc_help;
//Compile general functions.
if (isNil "SHK_pos_getPos") then {call compile preprocessFile "\z\addons\dayz_server\DZAI\SHK_pos\shk_pos_init.sqf";};
BIS_fnc_selectRandom2 = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_selectRandom.sqf";	//Altered version
fnc_unitLoadout = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitLoadout.sqf";
fnc_addLoot = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_addLoot.sqf";
if (DZAI_zombieEnemy && (DZAI_weaponNoise > 0)) then { // Optional Zed-to-AI aggro functions
	ai_fired = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\ai_fired.sqf";		//Calculates weapon noise of AI unit
};
if (DZAI_passiveAggro or (DZAI_zombieEnemy && (DZAI_weaponNoise > 0))) then {
	ai_alertzombies = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\ai_alertzombies.sqf"; //AI weapon noise attracts zombie attention
};
fnc_banditAIKilled = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_banditAIKilled.sqf";
fnc_staticAIDeath = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_banditAIRespawn.sqf";
fnc_selectRandomWeighted = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_selectRandomWeighted.sqf";
fnc_createGroup = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_createGroup.sqf";
fnc_damageAI = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_damageHandlerAI.sqf";
fnc_initTrigger = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_initTrigger.sqf";
fnc_BIN_taskPatrol = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\BIN_taskPatrol.sqf";
if (DZAI_debugMarkers < 1) then {
	fnc_unit_resupply = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\unit_resupply.sqf";
} else {
	fnc_unit_resupply = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\unit_resupply_debug.sqf";
};
fnc_dynAIDeath = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_updateDead.sqf";
if (DZAI_findKiller) then {
	fnc_findKiller = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_findKiller.sqf";};
fnc_seekPlayer =				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_seekPlayer.sqf";
fnc_randomizeTriggers = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_randomizeTriggers.sqf";
	
//Compile spawn scripts
fnc_spawnBandits = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits.sqf";
fnc_spawnBandits_custom	=		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits_custom.sqf";
fnc_respawnBandits = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\respawnBandits.sqf";
fnc_respawnHandler = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\respawnHandler.sqf";
fnc_despawnBandits = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits.sqf";
if !(DZAI_V2dynSpawns) then {
	fnc_spawnBandits_dynamic = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits_dynamic.sqf";
	fnc_despawnBandits_dynamic = 	compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits_dynamic.sqf";
} else {
	fnc_spawnBandits_dynamic = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits_dynamicV2.sqf";
	fnc_despawnBandits_dynamic = 	compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits_dynamicV2.sqf";
};

//Helicopter patrol scripts
fnc_heliDespawn =				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\heli_despawn.sqf";
if (DZAI_debugMarkers < 1) then {
	fnc_heliResupply = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\heli_resupply.sqf";} else {
	fnc_heliResupply =			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\heli_resupply_debug.sqf";};
fnc_spawnHeliPatrol	=			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawn_heliPatrol.sqf";

//DZAI custom spawns function.
DZAI_spawn = {
	private ["_spawnMarker","_patrolRadius","_trigStatements","_trigger","_respawn","_weapongrade","_totalAI","_useUPS"];
	
	_spawnMarker = _this select 0;
	if ((typeName _spawnMarker) != "STRING") exitWith {diag_log "DZAI Error: Marker string not given!"};
	_totalAI = if ((typeName (_this select 1)) == "SCALAR") then {_this select 1} else {1};
	_weapongrade = if ((typeName (_this select 2)) == "SCALAR") then {_this select 2} else {1};
	_respawn = if ((typeName (_this select 3)) == "BOOL") then {_this select 3} else {true};
	//_useUPS = if ((count _this) > 3) then {_this select 3} else {false};

	_patrolRadius = ((((getMarkerSize _spawnMarker) select 0) min ((getMarkerSize _spawnMarker) select 1)) min 300);

	_trigStatements = format ["0 = [%1,0,%2,thisTrigger,%3] call fnc_spawnBandits_custom;",_totalAI,_patrolRadius,_weapongrade];
	_trigger = createTrigger ["EmptyDetector", getMarkerPos(_spawnMarker)];
	_trigger setTriggerArea [600, 600, 0, false];
	_trigger setTriggerActivation ["ANY", "PRESENT", true];
	_trigger setTriggerTimeout [5, 5, 5, true];
	_trigger setTriggerText _spawnMarker;
	_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;",_trigStatements,"0 = [thisTrigger] spawn fnc_despawnBandits;"];
	_trigger setVariable ["respawn",_respawn];
	//diag_log format ["DEBUG :: %1",_trigStatements];
	
	if ((markerAlpha _spawnMarker) > 0) then {
		_spawnMarker setMarkerAlpha 0;
	};
	if ((markerShape _spawnMarker) == "ELLIPSE") then {
		_spawnMarker setMarkerShape "RECTANGLE";
	};
	
	diag_log format ["DEBUG :: Created custom spawn area with %1 AI units, weapongrade %2, respawn %3.",_totalAI,_weapongrade,_respawn];
	true
};

//Miscellaneous functions 
//------------------------------------------------------------------------------------------------------------------------

//DZAI group side assignment function. Detects when East side has too many groups, then switches to Resistance side.
DZAI_getFreeSide = {
	private["_groupSide"];
	_groupSide = (if (({(side _x) == east} count allGroups) <= 140) then {east} else {resistance});
	//diag_log format ["Assigned side %1 to AI group",_groupSide];
	
	_groupSide
};

//Selects a random dynamic trigger to use as AI helicopter's next waypoint
DZAI_heliRandomPatrol = {
	private ["_unitGroup","_tooClose","_wpSelect"];
	_unitGroup = _this select 0;

	_tooClose = true;
	while {_tooClose} do {
		_wpSelect = (DZAI_locations call BIS_fnc_selectRandom2) select 1;
		if (((waypointPosition [_unitGroup,0]) distance _wpSelect) > 0) then {
			_tooClose = false;
		};
	};
	_wpSelect = [_wpSelect,200+(random 100),(random 360),true] call SHK_pos;
	[_unitGroup,0] setWPPos _wpSelect; 
	if ((waypointType [_unitGroup,0]) == "MOVE") then {
		if ((random 1) < 0.30) then {
			[_unitGroup,0] setWaypointType "SAD";
			[_unitGroup,0] setWaypointTimeout [20,40,60];
		};
	} else {
		[_unitGroup,0] setWaypointType "MOVE";
		[_unitGroup,0] setWaypointTimeout [3,7,10];
	};
	[_unitGroup,0] setWaypointCompletionRadius 150;
	_unitGroup setCurrentWaypoint [_unitGroup,0];
};

//Sets skills for unit based on their weapongrade value.
DZAI_setSkills = {
	private["_unit","_weapongrade","_skillArray"];
	_unit = _this select 0;
	_weapongrade = _this select 1;

	_skillArray = switch (_weapongrade) do {
		case 0: {DZAI_skill0};
		case 1: {DZAI_skill1};
		case 2: {DZAI_skill2};
		case 3: {DZAI_skill3};
		case "helicrew": {DZAI_heliCrewSkills};
		case default {DZAI_skill2};
	};
	{
		_unit setskill [_x select 0,((_x select 1) + random (_x select 2))];
	} foreach _skillArray;
};

//Spawns flies on AI corpse
DZAI_deathFlies = {
	private ["_soundFlies"];
	_soundFlies = createSoundSource["Sound_Flies",getPosATL _this,[],0];
	_this setVariable ["sound_flies",_soundFlies];
};

//Returns probabilities of generating different grades of weapons based on equipType value
DZAI_getGradeChances = {
	private ["_equipType", "_gradeChances"];
	_equipType = _this select 0;

	_gradeChances = switch (_equipType) do {
		case 0: {DZAI_gradeChances0};
		case 1: {DZAI_gradeChances1};
		case 2: {DZAI_gradeChances2};
		case 3: {DZAI_gradeChances3};
		case default {DZAI_gradeChancesDyn};
	};
	
	_gradeChances
};

//Convert server uptime in seconds to formatted time (days/hours/minutes/seconds)
DZAI_getUptime = {
	private ["_iS","_oS","_oM","_oH","_oD"];

	_iS = time;
	
	_oS = floor (_iS % 60);
	_oM = floor ((_iS % 3600)/60);
	_oH = floor ((_iS % 86400)/3600);
	_oD = floor ((_iS % 2592000)/86400);
	
	[_oD,_oH,_oM,_oS]
};

//Combines two arrays and returns the combined array. Does not add duplicate values. Second array is appended to first array.
DZAI_append = {
	{
		if !(_x in (_this select 0)) then {
			(_this select 0) set [(count (_this select 0)),_x];
		};
	} forEach (_this select 1);
	
	(_this select 0)
};

//Knocks an AI unit unconscious for x seconds - determines the correct animation to use, and returns unit to standing state after waking.
DZAI_unconscious = {
	private ["_unit","_anim"];
	_unit = _this select 0;
	
	if ((animationState _unit) in ["amovppnemrunsnonwnondf","amovppnemstpsnonwnondnon","amovppnemstpsraswrfldnon","amovppnemsprslowwrfldf","aidlppnemstpsnonwnondnon0s","aidlppnemstpsnonwnondnon01"]) then {
		_anim = "adthppnemstpsraswpstdnon_2";
	} else {
		_anim = "adthpercmstpslowwrfldnon_4";
	};
	_unit switchMove _anim;
	_nul = [objNull, _unit, rSWITCHMOVE, _anim] call RE;  
	//diag_log "DEBUG :: AI unit is unconscious.";

	sleep 12.5;

	_nul = [objNull, _unit, rSWITCHMOVE, "amovppnemrunsnonwnondf"] call RE;
	sleep 0.1;
	_unit switchMove "amovppnemrunsnonwnondf";
	//diag_log "DEBUG :: AI unit is conscious.";
	_unit setVariable ["unconscious",false];
};

//Killed eventhandler script used by both static and dynamic AI.
DZAI_unitDeath = {
	private["_victim","_killer","_unitGroup"];
	_victim = _this select 0;
	_killer = _this select 1;
	
	_unitGroup = (group _victim);

	switch (_unitGroup getVariable "unitType") do {
		case "static":
		{
			[_victim,_unitGroup] spawn fnc_staticAIDeath;
		};
		case "dynamic":
		{
			[_victim,_unitGroup] spawn fnc_dynAIDeath;
		};
	};
	
	[_victim,_killer,_unitGroup] call fnc_banditAIKilled;
	_victim spawn DZAI_deathFlies;
	
	//diag_log format ["DEBUG :: AI %1 (Group %2) killed by %3",_victim,_unitGroup,_killer];
	
	true
};

//Generic function to delete a specified object (or array of objects) after a specified time (seconds).
DZAI_deleteObject = {
	private["_obj","_delay"];
	_obj = _this select 0;
	_delay = if ((count _this) > 1) then {_this select 1} else {300};
	
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Deleting object(s) %1 in %2 seconds.",_obj,_delay];};
	sleep _delay;
	
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Deleting object(s) %1 now.",_obj];};
	
	if ((typeName _obj) == "ARRAY") then {
		{deleteVehicle _x} forEach _obj;
	} else {deleteVehicle _obj};
};

//If a trigger's calculated totalAI value is zero, then add new group to respawn queue to retry spawn until a nonzero value is found.
DZAI_retrySpawn = {
	private ["_trigger","_unitGroup","_dummy","_grpArray"];

	_trigger = _this select 0;

	waitUntil {sleep 0.1; (_trigger getVariable ["initialized",false])};

	//Create placeholder dummy unit.
	_unitGroup = createGroup (call DZAI_getFreeSide);
	_dummy = _unitGroup createUnit ["Survivor2_DZ",[0,0,0],[],0,"FORM"];
	[_dummy] joinSilent _unitGroup;
	_dummy setVehicleInit "this hideObject true;this allowDamage false;this enableSimulation false;"; processInitCommands;
	_dummy disableAI "FSM";
	_dummy disableAI "ANIM";
	_dummy disableAI "MOVE";
	_dummy disableAI "TARGET";
	_dummy disableAI "AUTOTARGET";

	//Initialize group variables.
	_unitGroup setVariable ["dummyUnit",_dummy];
	_unitGroup setVariable ["groupSize",0];
	_unitGroup setVariable ["trigger",_trigger];
	_unitGroup setVariable ["unitType","static"];
	_unitGroup setVariable ["deadUnits",[]];
	_unitGroup allowFleeing 0;

	//Add new group to trigger's group array.
	_grpArray = _trigger getVariable "GroupArray";
	_grpArray set [(count _grpArray),_unitGroup];

	0 = [(time + DZAI_respawnTime),_trigger,_unitGroup] spawn fnc_respawnHandler;

	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Inserted group %1 into respawn queue. (retryRespawn)",_unitGroup];};
};

//Refreshes position of debug markers of active static triggers for JIP players. Terminates once trigger is marked inactive.
DZAI_updateSpawnMarker = {
	private ["_trigger","_markername","_marker"];
	_trigger = _this select 0;

	_marker = str (_trigger);

	while {(getMarkerColor _marker) != "ColorGreen"} do {
		_marker setMarkerPos (getMarkerPos _marker);
		sleep 30;
	};
};

//Finds a position that does not have a player within a certain distance.
DZAI_findSpawnPos = {
	private ["_spawnPos","_attempts","_continue"];
	
	_attempts = 0;
	_continue = true;
	while {((_attempts <= 5)&&_continue)} do {
		_spawnPos = _this select floor (random count _this); 
		if ((typeName _spawnPos) == "OBJECT") then {_spawnPos = getPosATL _spawnPos}; 
		if (({isPlayer _x} count (_spawnPos nearEntities [["AllVehicles","CAManBase"],40])) == 0) then {_continue = false};
		_attempts = _attempts + 1;
		if ((DZAI_debugLevel > 0)&&(_attempts > 1)) then {diag_log format ["DZAI Debug: Player found within 40m of chosen spawn position. (attempt %1/5).",_attempts];};
	};
	_spawnPos
};

//Relocates a dynamic trigger
DZAI_relocDynTrigger = {
	private ["_newPos","_attempts"];

	_attempts = 0;	
	while {_newPos = ["DZAI_centerMarker",false,DZAI_dynBlacklist] call SHK_pos; (_attempts < 4)&&(({([_newPos select 0,_newPos select 1] distance _x) < (2*(DZAI_dynTriggerRadius - (DZAI_dynTriggerRadius*DZAI_dynOverlap)))} count DZAI_dynTriggerArray) > 0)} do {
	_attempts = _attempts +1;
		if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Calculated trigger position intersects with at least 1 other trigger (attempt %1/4).",_attempts];};
	};
	if (DZAI_debugMarkers > 0) then {
		private["_marker"];
		_marker = format["trigger_%1",_this];
		_marker setMarkerPos _newPos;
		_marker setMarkerColor "ColorYellow";			//Reset trigger indicator to Ready.
		_marker setMarkerAlpha 0.8;
	};
	_this setPosATL _newPos;

	_newPos
};

//Creates static spawn trigger (in development)
/*Syntax: 	[
				_spawnMarker, 		//Circular marker defining patrol radius.
				[_minAI,_addAI],	//(Optiona, default [1,1]) Minimum and maximum bonus amount of AI units per group.
				_positionArray,		//(Optional, default []): Array of markers defining possible spawn points. If omitted or left empty, nearby buildings within 250m radius will be used as spawn points.
				_equipType,			//(Optional, default 1): Number between 0-3. Defines AI weapon selection and skill parameters.
				_numGroups			//(Optional, default 1): Number of AI groups to spawn using the above parameters.			
			] call DZAI_static_spawn;
*/			
DZAI_static_spawn = {
	private ["_spawnMarker","_minAI","_addAI","_positionArray","_equipType","_numGroups","_patrolRadius","_trigStatements","_trigger"];
	
	if ((count _this) < 1) exitWith {diag_log format ["DZAI Error: DZAI_static_spawn expected at least 1 argument, found %1.",(count _this)]; false};
	_spawnMarker = _this select 0;
	_spawnMarker setMarkerAlpha 0;
	
	if ((count _this) > 1) then {
		_minAI = (_this select 1) select 0;
		_addAI = (_this select 1) select 1;
	} else {
		_minAI = 1;
		_addAI = 1;
	};
	_positionArray = if ((count _this) > 2) then {_this select 2} else {[]};
	_equipType = if ((count _this) > 3) then {_this select 3} else {1};
	_numGroups = if ((count _this) > 4) then {_this select 4} else {1};
	
	_patrolRadius = (getMarkerSize _spawnMarker) select 0;
	
	_trigStatements = format ["_nul = [%1,%2,%3,thisTrigger,%4,%5,%6] call fnc_spawnBandits;",_minAI,_addAI,_patrolRadius,_positionArray,_equipType,_numGroups];
	_trigger = createTrigger ["EmptyDetector", getMarkerPos(_spawnMarker)];
	_trigger setTriggerArea [600, 600, 0, false];
	_trigger setTriggerActivation ["ANY", "PRESENT", true];
	_trigger setTriggerTimeout [10, 15, 20, true];
	_trigger setTriggerText _spawnMarker;
	_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;",_trigStatements,"_nul = [thisTrigger] spawn fnc_despawnBandits;"];
	
	true
};

DZAI_findLootPile = {
	private ["_lootPiles","_lootPos","_unitGroup","_searchRange"];
	_unitGroup = _this select 0;
	_searchRange = _this select 1;
	
	_lootPiles = (getPosATL (leader _unitGroup)) nearObjects ["ReammoBox",_searchRange];
	if ((count _lootPiles) > 0) then {
		_lootPos = getPosATL (_lootPiles call BIS_fnc_selectRandom2);
		(units _unitGroup) doMove _lootPos;
		{_x moveTo _lootPos} forEach (units _unitGroup);
		//diag_log format ["DEBUG :: AI group %1 is investigating a loot pile at %2.",_unitGroup,_lootPos];
	};
};

DZAI_shuffleWP = {
	private ["_unitGroup","_locationArray","_newWPPos","_wp"];
	_unitGroup = _this select 0;
	_locationArray = (_unitGroup getVariable "trigger") getVariable "locationArray";
	_newWPPos = _locationArray call BIS_fnc_selectRandom2;
	//diag_log format ["DEBUG :: Chosen position: %1.",_newWPPos];
	_wp = (currentWaypoint _unitGroup);
	if (DZAI_debugMarkers > 0) then {
		private["_markername"];
		_markername = format ["[%1,%2]",_unitGroup,_wp];
		//diag_log format ["DEBUG :: Relocating marker %1.",_markername];
		_markername setMarkerPos _newWPPos;
	};
	[_unitGroup,_wp] setWPPos _newWPPos;
};

DZAI_bldgPatrol = {
	private ["_unitGroup","_locationArray"];
	_unitGroup = _this select 0;
	_locationArray = _this select 1;

	//diag_log format ["DEBUG :: Counted %1 spawn positions.",count _locationArray];
	
	for "_i" from 1 to 5 do {
		private ["_loc","_wp"];
		_loc = _locationArray call BIS_fnc_selectRandom2;
		//diag_log format ["DEBUG :: Chosen position: %1.",_loc];
		_wp = _unitGroup addWaypoint [_loc,0];
		_wp setWaypointType "MOVE";
		_wp setWaypointCompletionRadius 35;
		_wp setWaypointTimeout [0,2,15];
		_wp setWaypointStatements ["true", "if ((random 3) > 2) then {_nul = [(group this)] spawn DZAI_shuffleWP;} else {_nul = [(group this),100] spawn DZAI_findLootPile;};"];
		if (DZAI_debugMarkers > 0) then {
			private["_markername","_marker"];
			_markername = str (_wp);
			if ((getMarkerColor _markername) != "") then {deleteMarker _markername};
			_marker = createMarker [_markername,[_loc select 0,_loc select 1]];
			//diag_log format ["DEBUG :: Creating marker %1.",_markername];
			_marker setMarkerShape "ELLIPSE";
			_marker setMarkerType "Dot";
			_marker setMarkerColor "ColorOrange";
			_marker setMarkerBrush "SolidBorder";
			_marker setMarkerSize [20, 20];
		};
		if (_i == 5) then {
			_wp = _unitGroup addWaypoint [_loc, 0];
			_wp setWaypointType "CYCLE";
			_wp setWaypointCompletionRadius 100;
		};
		sleep 0.5;
	};
};