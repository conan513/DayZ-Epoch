all_money = myMoneyZ;
withdraw_amount = nil;
withdrawnow = 

[
	["",true],
	["How much would you like to withdraw?", [-1], "", -5, [["expression", ""]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "1"],
	["10", [], "", -5, [["expression", "withdraw_amount = 10;"]], "1", "1"],
	["50", [], "", -5, [["expression", "withdraw_amount = 50;"]], "1", "1"],
	["100", [], "", -5, [["expression", "withdraw_amount = 100;"]], "1", "1"],
	["200", [], "", -5, [["expression", "withdraw_amount = 200;"]], "1", "1"],
	["300", [], "", -5, [["expression", "withdraw_amount = 300;"]], "1", "1"],
	["400", [], "", -5, [["expression", "withdraw_amount = 400;"]], "1", "1"],
	["500", [], "", -5, [["expression", "withdraw_amount = 500;"]], "1", "1"],
	["600", [], "", -5, [["expression", "withdraw_amount = 600;"]], "1", "1"],
	["700", [], "", -5, [["expression", "withdraw_amount = 700;"]], "1", "1"],
	["800", [], "", -5, [["expression", "withdraw_amount = 800;"]], "1", "1"],
	["900", [], "", -5, [["expression", "withdraw_amount = 900;"]], "1", "1"],
	["1000", [], "", -5, [["expression", "withdraw_amount = 1000;"]], "1", "1"],
	["ALL", [], "", -5, [["expression", "withdraw_amount = bankMoney;"]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:withdrawnow";

waitUntil {!isNil ("withdraw_amount")};
testwithdraw = myMoneyZ + withdraw_amount;
if (testwithdraw > 20000) then
{
cutText [format["You can only hold $20000 and your withdraw will make $%1", testwithdraw], "PLAIN"];
} else {
if (bankMoney >= withdraw_amount)  then
{
_setbank = profileNamespace getVariable ["bank",0];
profileNamespace setVariable ["bank",_setbank-withdraw_amount]; saveProfileNamespace;
cutText [format["You made a withdraw of $%1", withdraw_amount], "PLAIN"];
bankMoney = bankMoney - withdraw_amount;
myMoneyZ = myMoneyZ + withdraw_amount;
} else {
cutText [format["The bank doesn't have $%1", withdraw_amount], "PLAIN"];
};
};
	