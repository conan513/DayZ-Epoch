sleeptime = 5;
cutText [format["Loading Databases...", withdraw_amount], "PLAIN"];
sleep sleeptime;
cutText [format["Loading Player Database...", withdraw_amount], "PLAIN"];
sleep sleeptime;
closeDialog 0;
disableSerialization;
createDialog "RscDisplayPassword";
ctrlSetText [1001,"Player Database"];
ctrlSetText [1002,"Players Name:"];
ctrlSetText [101,"Name must be exact!"];
ctrlshow [1,true];
ctrlshow [2,true];


_display = findDisplay 64;
_btn1 = _display displayctrl 2;
_btn1 ctrlSetText "Cancel";
_btn1 buttonSetAction 
"
closeDialog 0;
";

_display = findDisplay 64;
_btn2 = _display displayctrl 1;
_btn2 ctrlSetText "Send";
_btn2 buttonSetAction 
"
	_display = findDisplay 64;
	_textCode = _display displayctrl 101;
	_text = ctrlText 101;
	_units = playableUnits;	
	all_money = myMoneyZ;
{
if (name _x == _text) then 
{
Pname = name _x;
_GetLevel =     _x getVariable['Clevel',0];
_humanity =		_x getVariable['humanity',0]; 
_headShots = 	_x getVariable['headShots',0]; 
_kills = 		_x getVariable['zombieKills',0]; 
_killsH = 		_x getVariable['humanKills',0]; 
_killsB = 		_x getVariable['banditKills',0];  
_totalbank =	_x getVariable['totalbank',0]; 
_totalmoney =	_x getVariable['allmoney',0]; 
_totalEXP =	    _x getVariable['EXP',0]; 
_totalblood =   _x getVariable['MyBlood',0];
cutText [format['Name: %1 \n Level: %2 \n Experience: %10 \n Blood: %11 \n Humanity: %3 \n Headshots: %4 \n Zombie Kills: %5 \n Survivor Kills: %6 \n Bandit Kills: %7 \n Money in Bank: $%8 \n Money: $%9', Pname, _GetLevel, _humanity, _headShots, _kills, _killsH, _killsB, _totalbank, _totalmoney, _totalEXP, _totalblood], 'PLAIN', 3];
} else {
cutText [format['%1 is not a player', _text], 'PLAIN'];
};	
} forEach _units;
";
