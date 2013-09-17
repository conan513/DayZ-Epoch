private ["_Pos","_mutant","_mutant_skin","_animalID","_fsmid","_blood_skin"];
_Pos = _this select 0;

_type = "DZ_Pastor_Infected";
_dog = createAgent [_type, _Pos, [], 0, "NONE"];
_dog setpos _Pos;

_animalID = _dog getVariable "fsm_handle";
//_animalID setFSMVariable ["_isTamed", true];
sleep 1;
diag_log format["DEBUG: %1, id: %2 [%3]",_dog,_animalID,completedFSM _animalID];
if (!moveToCompleted _dog) then {
	_dog moveTo (position _dog);
};
_dog disableAI "FSM";
(group _dog) setBehaviour "AWARE";
_fsmid = [_dog, typeOf _dog] execFSM "\z\addons\dayz_code\system\infected_hound_agent.fsm";