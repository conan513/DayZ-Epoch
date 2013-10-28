/*
	DZAI Dynamic Spawn Manager
	
	Last updated: 7:43 PM 10/20/2013
*/

diag_log "Starting V2 Dynamic Spawn Manager in 5 minutes.";
sleep 300;
diag_log "V2 Dynamic Spawn Manager started.";

_playerUIDs = [];		//Array of all collected playerUIDs
_timestamps = [];		//Array of timestamps for each corresponding playerUID

_spawnThreshold = 3;	//Current number of dynamic spawns must fall below this number before more can be created.
_spawnMax = 5;			//Maximum number of players to select each cycle. If number of online players is less than _spawnMax, all online players will be selected.
_sleepDelay = 600;		//Frequency of each cycle

while {true} do {
	if ((count DZAI_dynTriggerArray) < _spawnThreshold) then {
		_allPlayers = [];		//Do not edit
		diag_log "V2 Dynamic Spawn: Preparing to spawn dynamic triggers...";
		{
			if (isPlayer _x) then {
				_allPlayers set [count _allPlayers,_x];
				_playerUID = getPlayerUID _x;
				if (!(_playerUID in _playerUIDs)) then {
					_index = (count _playerUIDs);
					_playerUIDs set [_index,_playerUID];
					_timestamps set [_index,(time - _sleepDelay)];
				};
				//diag_log format ["V2 Dynamic Spawn: Found a player at %1 (%2).",mapGridPosition _x,name _x];
			};
			sleep 0.05;
		} forEach playableUnits;

		sleep 3;
		
		for "_i" from 1 to ((ceil (0.25 * (count _allPlayers))) min _spawnMax) do {
			_player = _allPlayers call BIS_fnc_selectRandom2;
			_index = _playerUIDs find (getPlayerUID _player);
			_lastSpawned = _timestamps select _index;
			_spawnChance = ((time - _lastSpawned) / (_sleepDelay*4));
			diag_log format ["V2 Dynamic Spawn: Player %1 has %2 probability of generating dynamic spawn.",name _player,_spawnChance];
			if ((random 1) < _spawnChance) then {
				_playerPos = getPosATL _player;
				_isMan = if (((vehicle _player) isKindOf "Man") or ((vehicle _player) isKindOf "Motorcycle")) then {true} else {false};
				_onLand = if (surfaceIsWater _playerPos) then {false} else {true};
				_noNearbySpawns = if (({(_playerPos distance _x) < (2*(DZAI_dynTriggerRadius - (DZAI_dynTriggerRadius*DZAI_dynOverlap)))} count DZAI_dynTriggerArray) == 0) then {true} else {false};
				_noNearbyTowns = if ((count nearestLocations [_playerPos,["NameCityCapital","NameCity","NameVillage"],400]) == 0) then {true} else {false};
				_noPlotpole = if ((count (_playerPos nearObjects ["Plastic_Pole_EP1_DZ",75])) == 0) then {true} else {false};
				if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Player %1 - isMan: %2, onLand: %3, noNearbySpawns: %4, noNearbyTowns: %5, noPlotpole: %6.",name _player,_isMan,_onLand,_noNearbySpawns,_noNearbyTowns,_noPlotPole]};
				if (_isMan && _onLand && _noNearbySpawns && _noNearbyTowns && _noPlotpole) then {
					_timestamps set [_index,time];
					_trigger = createTrigger ["EmptyDetector",getPosATL _player];
					_trigger setTriggerArea [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius, 0, false];
					_trigger setTriggerActivation ["ANY", "PRESENT", true];
					_trigger setTriggerTimeout [3, 3, 3, true];
					_trigger setTriggerText "V2 Dynamic Trigger";
					_trigActStatements = format ["0 = [225,thisTrigger,thisList,%1,%2] call fnc_spawnBandits_dynamic;",str(getPlayerUID _player),_spawnChance];
					_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;",_trigActStatements, "[thisTrigger] spawn fnc_despawnBandits_dynamic;"];
					if (DZAI_debugMarkers > 0) then {
						private ["_markername","_marker"];
						_markername = format["trigger_%1",_trigger];
						_marker = createMarker[_markername,(getPosATL _trigger)];
						_marker setMarkerShape "ELLIPSE";
						_marker setMarkerType "Flag";
						_marker setMarkerBrush "SOLID";
						_marker setMarkerSize [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius];
						_marker setMarkerAlpha 0;
					};
					diag_log format ["V2 Dynamic Spawn: Created dynamic trigger at %1.",(mapGridPosition _trigger)];
					DZAI_curDynTrigs = DZAI_curDynTrigs + 1;
					DZAI_dynTriggerArray set [count DZAI_dynTriggerArray,_trigger];
				};
			};
			_allPlayers = _allPlayers - [_player];
			sleep 5;
		};
	};
	diag_log format ["V2 Dynamic Spawn: Sleeping for %1 seconds.",_sleepDelay];
	sleep (_sleepDelay);
};
