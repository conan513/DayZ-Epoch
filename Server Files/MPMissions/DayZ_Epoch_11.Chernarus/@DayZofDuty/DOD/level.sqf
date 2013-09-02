if (isNil "levelmanager") then {levelmanager = true;} else {levelmanager = true;};
_isMan = cursorTarget isKindOf "Man";
if ((levelmanager) and (_isMan)) then
{
_name = CursorTarget;
Pname = name _name;
_GetLevel =     _name getVariable["Clevel",0];
_humanity =		_name getVariable["humanity",0]; 
_headShots = 	_name getVariable["headShots",0]; 
_kills = 		_name getVariable["zombieKills",0]; 
_killsH = 		_name getVariable["humanKills",0]; 
_killsB = 		_name getVariable["banditKills",0];  
_totalbank =	_name getVariable["totalbank",0]; 
_totalmoney =	_name getVariable["allmoney",0]; 
_totalEXP =	    _name getVariable["EXP",0]; 
_totalblood =   _name getVariable["MyBlood",0];
cutText [format["Name: %1 \n Level: %2 \n Experience: %10 \n Blood: %11 \n Humanity: %3 \n Headshots: %4 \n Zombie Kills: %5 \n Survivor Kills: %6 \n Bandit Kills: %7 \n Money in Bank: $%8 \n Money: $%9", Pname, _GetLevel, _humanity, _headShots, _kills, _killsH, _killsB, _totalbank, _totalmoney, _totalEXP, _totalblood], "PLAIN", 3];
};