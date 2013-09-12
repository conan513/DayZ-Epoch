private ["_unit","_ammo","_audible","_distance","_listTalk","_weapon","_group","_targets","_i","_projectile","_id","_caliber"];
//[unit, weapon, muzzle, mode, ammo, magazine, projectile]
_unit = 		_this select 0;
_weapon = 		_this select 1;
_ammo = 		_this select 4;
_projectile = 	_this select 6;

//Alert Nearby
_audible = getNumber (configFile >> "CfgAmmo" >> _ammo >> "audibleFire");
_caliber = getNumber (configFile >> "CfgAmmo" >> _ammo >> "caliber");
_distance = round(_audible * 10 * _caliber);

// Modified for sound dampening if raining (based upon intensity) by ^bdc
    _newDistance = _distance; // default in case of problem
    _RainAmt = drn_var_DynamicWeather_Rain; // referenced from \z\addons\dayz_code\system\DynamicWeatherEffects.sqf
    if ((_distance > 0) and (_RainAmt > 0)) then {
        if (_RainAmt > 0.72) then { // very heavy rain
            _CorrectionFactor = 0.40; };  // 40%
        if (_RainAmt > 0.53) then { // heavy rain
            _CorrectionFactor = 0.55; };  // 55%
        if (_RainAmt > 0.25) then { // medium rain
            _CorrectionFactor = 0.70; };  // 70%
        if (_RainAmt < 0.25) then { // light rain
            _CorrectionFactor = 0.85; };  // 85%
        _newDistance = (_distance * _CorrectionFactor);
    } else {
        _newDistance = _distance;
    };

dayz_disAudial = _newDistance;
dayz_firedCooldown = time;
// Color in the combat icon
dayz_combat = 1;

if (_ammo isKindOf "Melee") exitWith {
	_unit playActionNow "GestureSwing";
};

//Smoke Grenade
if (_ammo isKindOf "SmokeShell") then {
	//Alert Zed's to smoke
	_i = 0;
	_projectile = nearestObject [_unit, _ammo];
	_listTalk = (getPosATL _projectile) nearEntities ["zZombie_Base",50];
	{
		_group = group _x;
		if (isNull group _x) then {
			_group = _x;
		};
		_x reveal [_projectile,4];
		_targets = _group getVariable ["targets",[]];
		if (!(_projectile in _targets)) then {
			_targets set [count _targets,_projectile];
			_group setVariable ["targets",_targets,true];
		};
		_i = _i + 1;
	} forEach _listTalk;
} else {
	[_unit,_newDistance/2,true,(getPosATL player)] spawn player_alertZombies;
	//Check if need to place arrow
	if (_ammo isKindOf "Bolt") then {
		_id = _this spawn player_crossbowBolt;
	};
	if (_ammo isKindOf "GrenadeHand") then {
		
		if (_ammo isKindOf "ThrownObjects") then {
			_id = _this spawn player_throwObject;
		};
		if (_ammo isKindOf "RoadFlare") then {
			//hint str(_ammo);
			_projectile = nearestObject [_unit, "RoadFlare"];
			_id = [_projectile,0] spawn object_roadFlare;
			dayzRoadFlare = [_projectile,0];
			publicVariable "dayzRoadFlare";
			_id = _this spawn player_throwObject;
		};
		if (_ammo isKindOf "ChemLight") then {
			_projectile = nearestObject [_unit, "ChemLight"];
			_id = [_projectile,1] spawn object_roadFlare;
			dayzRoadFlare = [_projectile,1];
			publicVariable "dayzRoadFlare";
			_id = _this spawn player_throwObject;
		};
	};	
};