all_money = myMoneyZ;
deposit_amount = nil;
depositnow = 

[
	["",true],
	["How much would you like to deposit?", [-1], "", -5, [["expression", ""]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "1"],
	["10", [], "", -5, [["expression", "deposit_amount = 10;"]], "1", "1"],
	["50", [], "", -5, [["expression", "deposit_amount = 50;"]], "1", "1"],
	["100", [], "", -5, [["expression", "deposit_amount = 100;"]], "1", "1"],
	["200", [], "", -5, [["expression", "deposit_amount = 200;"]], "1", "1"],
	["300", [], "", -5, [["expression", "deposit_amount = 300;"]], "1", "1"],
	["400", [], "", -5, [["expression", "deposit_amount = 400;"]], "1", "1"],
	["500", [], "", -5, [["expression", "deposit_amount = 500;"]], "1", "1"],
	["600", [], "", -5, [["expression", "deposit_amount = 600;"]], "1", "1"],
	["700", [], "", -5, [["expression", "deposit_amount = 700;"]], "1", "1"],
	["800", [], "", -5, [["expression", "deposit_amount = 800;"]], "1", "1"],
	["900", [], "", -5, [["expression", "deposit_amount = 900;"]], "1", "1"],
	["1000", [], "", -5, [["expression", "deposit_amount = 1000;"]], "1", "1"],
	["ALL", [], "", -5, [["expression", "deposit_amount = myMoneyZ;"]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:depositnow";


waitUntil {!isNil ("deposit_amount")};
testdeposit = bankMoney + deposit_amount;
if (testdeposit > 20000) then
{
cutText [format["The bank can only hold $20000 and your deposit will make $%1", testdeposit], "PLAIN"];
} else {
if (myMoneyZ >= deposit_amount) then
{
_setbank = profileNamespace getVariable ["bank",0];
profileNamespace setVariable ["bank",_setbank+deposit_amount]; saveProfileNamespace;
cutText [format["You made a deposit of $%1", deposit_amount], "PLAIN"];
bankMoney = bankMoney + deposit_amount;
myMoneyZ = myMoneyZ - deposit_amount;
} else {
cutText [format["The Dont have $%1 to deposit", deposit_amount], "PLAIN"];
};
};
	
