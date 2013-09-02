Anti_spawnkilling = _this select 0; 
Start_Pos = _this select 1; 
spawndistance = _this select 2; 
Norenew = _this select 3; 



while {Anti_spawnkilling} do 
{
player setVariable["MyBlood",r_player_blood, true];

_pos = getpos player;

if (((Start_Pos distance _pos) < (spawndistance)) and (Norenew)) then
{
_yes = 1;
player setVariable["justspawned", _yes, true];
} else {
_no = 0;
player setVariable["justspawned", _no, true];
Norenew = false;
};

}:


spawnKilling = 
{

_name = cursortarget;
_justspawned = _name getVariable["justspawned",0];
_totalblood =   _name getVariable["MyBlood",0];

if (_justspawned == 1) then
{
r_player_blood = _totalblood;
};
			
};


if (Anti_spawnkilling) then
{
player addEventHandler ["Fired", {call spawnKilling;}];
};

