private [ "_camera", "_welcomeMessage", "_camDistance" ];
_welcomeMessage = format["Welcome to an DayZ Splights server %1, Enjoy your stay!",format["%1", name player]];
_camDistance = 500;
 
waitUntil {!isNil ("dayzLoginRecord")};
 
//intro move
showCinemaBorder true;
camUseNVG false;
playsound "introSong";
 
_camera = "camera" camCreate [(position player select 0)-2, position player select 1,(position player select 2)+_camDistance];
_camera cameraEffect ["internal","back"];
 
_camera camSetFOV 2.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};
 
_camera camSetTarget vehicle player;
_camera camSetRelPos [0,0,2];
_camera camCommit 14;
 
cutText [_welcomeMessage, "PLAIN DOWN"];
 
waitUntil {camCommitted _camera};
 
_camera cameraEffect ["terminate","back"];
camDestroy _camera;