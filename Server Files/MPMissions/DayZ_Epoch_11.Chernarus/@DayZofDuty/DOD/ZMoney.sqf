if (isNil "moneymanager") then {moneymanager = true;} else {moneymanager = true;};
Enddead = 1;
_name = CursorTarget;
_checkKnownmoney = _name getVariable["Deadsmoney",0];
_isAnimal = cursorTarget isKindOf "Animal";
_isMan = cursorTarget isKindOf "Man";
_isZombie = cursorTarget isKindOf "zZombie_base";
_moneywipe = 0;

if (_isZombie) then
{
mymoneyz = mymoneyz + _checkKnownmoney;
for "_i" from 0 to 100 do {vehicle player removeAction _i};
cutText [format["You took $%1 and now have $%2", _checkKnownmoney, mymoneyz], "PLAIN", 3];
_name setVariable["Deadsmoney",_moneywipe, true];
};
