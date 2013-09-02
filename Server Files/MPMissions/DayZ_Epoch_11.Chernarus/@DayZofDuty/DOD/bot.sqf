_pos = getPos player;
CIVILIAN setFriend [WEST,0];
WEST setFriend [CIVILIAN,0];

{_x addRating -200000;} forEach entities "zZombie_Base";

_sporkGroup = (group player);
_sporkGroup allowFleeing 0;
_sporkGroup setFormation "LINE";
_sporkGroup enableAttack true;

_sporkAIS = (_sporkGroup) createunit ["Soldier1_DZ", [_pos select 0, _pos select 1,  50], [], 0, "FORM"];



_sporkAIS enableAI "TARGET";
_sporkAIS enableAI "AUTOTARGET";
_sporkAIS enableAI "MOVE";
_sporkAIS enableAI "ANIM";
_sporkAIS enableAI "FSM";

_sporkAIS allowDammage true;

_sporkAIS setCombatMode "RED";
_sporkAIS setBehaviour "COMBAT";

_sporkAIS addweapon "M4A1_AIM_SD_camo";
_sporkAIS addMagazine "30Rnd_556x45_StanagSD";
_sporkAIS addMagazine "30Rnd_556x45_StanagSD";
_sporkAIS addMagazine "30Rnd_556x45_StanagSD";
_sporkAIS addMagazine "30Rnd_556x45_StanagSD";
_sporkAIS addMagazine "30Rnd_556x45_StanagSD";
_sporkAIS addMagazine "30Rnd_556x45_StanagSD";
_sporkAIS addMagazine "30Rnd_556x45_StanagSD";
_sporkAIS selectWeapon "M4A1_AIM_SD_camo";

_sporkAIS setSkill ["aimingAccuracy",1];
_sporkAIS setSkill ["aimingShake",1];
_sporkAIS setSkill ["aimingSpeed",1];
_sporkAIS setSkill ["endurance",1];
_sporkAIS setSkill ["spotDistance",1];
_sporkAIS setSkill ["spotTime",1];
_sporkAIS setSkill ["courage",1];
_sporkAIS setSkill ["reloadSpeed",1];
_sporkAIS setSkill ["commanding",1];
_sporkAIS setSkill ["general",1];

[_sporkAIS] join _sporkGroup;
_sporkGroup enableAttack true;

_sporkAIS addEventHandler ["Fired", {_this call player_fired;}];
startdead = 0;
_sporkAIS setVariable["KnownDead",startdead, true];
ratingloop_star = true;
while {ratingloop_star} do 
{
	{_x addRating -200000;} forEach entities "zZombie_Base";
	
	_sporkAIS setVehicleAmmo 1;
	_sporkAIS setUnitRecoilCoefficient 0;
	_sporkAIS setWeaponReloadingTime [_sporkAIS,currentWeapon _sporkAIS,0];
	_sporkAIS setDamage 0;	
};

