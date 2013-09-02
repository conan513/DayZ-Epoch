all_money = myMoneyZ;
send_amount = nil;
sendnow = 

[
	["",true],
	["How much would you like to send?", [-1], "", -5, [["expression", ""]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "1"],
	["10", [], "", -5, [["expression", "send_amount = 10;"]], "1", "1"],
	["50", [], "", -5, [["expression", "send_amount = 50;"]], "1", "1"],
	["100", [], "", -5, [["expression", "send_amount = 100;"]], "1", "1"],
	["200", [], "", -5, [["expression", "send_amount = 200;"]], "1", "1"],
	["300", [], "", -5, [["expression", "send_amount = 300;"]], "1", "1"],
	["400", [], "", -5, [["expression", "send_amount = 400;"]], "1", "1"],
	["500", [], "", -5, [["expression", "send_amount = 500;"]], "1", "1"],
	["600", [], "", -5, [["expression", "send_amount = 600;"]], "1", "1"],
	["700", [], "", -5, [["expression", "send_amount = 700;"]], "1", "1"],
	["800", [], "", -5, [["expression", "send_amount = 800;"]], "1", "1"],
	["900", [], "", -5, [["expression", "send_amount = 900;"]], "1", "1"],
	["1000", [], "", -5, [["expression", "send_amount = 1000;"]], "1", "1"],
	["ALL", [], "", -5, [["expression", "send_amount = myMoneyZ;"]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:sendnow";


waitUntil {!isNil ("send_amount")};
closeDialog 0;
disableSerialization;
createDialog "RscDisplayPassword";
ctrlSetText [1001,"Money Transfer"];
ctrlSetText [1002,"Players Name:"];
//ctrlSetText [101,"Code goes here..."];
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
if (mymoneyz >= send_amount) then
{
_x setVariable['Cmoney',send_amount, true];
cutText [format['You gave player %1 a total of $%2', _text, send_amount], 'PLAIN'];
myMoneyZ = myMoneyZ - send_amount;
} else {
cutText [format['You dont have %1 to send', send_amount], 'PLAIN'];
};
} else {
cutText [format['%1 is not a player', _text], 'PLAIN'];
};	
} forEach _units;
";

