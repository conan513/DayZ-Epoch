_kills = player getVariable["zombieKills",0]; //dont mess with this
countzombies = _kills;//dont mess with this
Doublekill = 1;//dont mess with this
Multikill = 1;//dont mess with this
Ultrakill = 1;//dont mess with this
monsterkill = 1;//dont mess with this
continueCounting = 0;//dont mess with this
Iscounter = true;


_Doublekill = _this select 0;
_Multikill = _this select 1;
_Ultrakill = _this select 2;
_Monsterkill = _this select 3;



while {Iscounter} do 
{
_killZcount = player getVariable["zombieKills",0]; 

if ((continueCounting < 12) and (_killZcount >= ((countzombies)+1))) then
{
sleep 0.2;
continueCounting = continueCounting + 1;
};





if ((_killZcount == ((countzombies)+2)) and (Doublekill == 1)) then {
cutText [_Doublekill,"PLAIN DOWN"];
playsound "Doublekill";
continueCounting = 0;
Doublekill = 0;
};


if ((_killZcount == ((countzombies)+3)) and (Multikill == 1)) then {
cutText [_Multikill,"PLAIN DOWN"];
playsound "Multikill";
continueCounting = 0;
Multikill = 0;
};


if ((_killZcount == ((countzombies)+4)) and (Ultrakill == 1)) then {
cutText [_Ultrakill,"PLAIN DOWN"];
playsound "Ultrakill";
continueCounting = 0;
Ultrakill = 0;
};


if ((_killZcount >= ((countzombies)+5)) and (Monsterkill == 1)) then {
cutText [_Monsterkill,"PLAIN DOWN"];
playsound "Monsterkill";
continueCounting = 0;
Monsterkill = 0;
};

if (continueCounting >= 10) then
{
countzombies = _killZcount;
continueCounting = 0;
Doublekill = 1;
Multikill = 1;
Ultrakill = 1;
monsterkill = 1;
};

};