_posmove = nil;
locationchoice = nil;
mytele = 
[
	["",true],
	["How much would you like to send?", [-1], "", -5, [["expression", ""]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "1"],
	["Balota", [], "", -5, [["expression", "locationchoice = 1;"]], "1", "1"],
	["NEAF", [], "", -5, [["expression", "locationchoice = 2;"]], "1", "1"],
	["NWAF", [], "", -5, [["expression", "locationchoice = 3;"]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:mytele";

waitUntil {!isNil ("locationchoice")};

if (locationchoice == 1) then {_posmove = [5166.35,2387.66,0.001];};

if (locationchoice == 2) then {_posmove = [12041,12599.4,0.001];};

if (locationchoice == 3) then {_posmove = [4051.07,10780.8,0.001];};

waitUntil {!isNil ("_posmove")};
(vehicle player) setPosATL _posmove;
cutText [format["Teleport Success!", addscore3], "PLAIN"];