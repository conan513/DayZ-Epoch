private ["_Pos","_mutant","_mutant_skin","_animalID","_fsmid","_blood_skin"];
_Pos = _this select 0;

_mutant_skins = ["Bloodsucker_1","Bloodsucker_2","Bloodsucker_3"];
_mutant_skin =  (_mutant_skins select floor(random(count _mutant_skins)));

_mutant = createAgent [_mutant_skin, _Pos, [], 0, "NONE"];
_mutant setpos _Pos;
_animalID = _mutant getVariable "fsm_handle";
sleep 1;
if (!moveToCompleted _mutant) then {
    _mutant moveTo (position _mutant);
};
_mutant disableAI "FSM";
(group _mutant) setBehaviour "AWARE";
_fsmid = [_mutant, typeOf _mutant] execFSM "\z\addons\dayz_code\system\bloodsucker_agent.fsm";
_fsmid setFSMVariable ["_handle", _fsmid];
_mutant setVariable ["fsm_handle", _fsmid];