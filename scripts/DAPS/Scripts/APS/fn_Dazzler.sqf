private _v = _this select 0;
private _i = _this select 1;
private _exit = true;
if (_i in dapsDazzled) exitWith {};
dapsDazzled pushBack _i;
if (_i call DAPS_fnc_IsLaserGuided) then {_exit = false};
if (_i call DAPS_fnc_IsIRguided) then {_exit = false};
if (_i call DAPS_fnc_IsVisualGuided) then {_exit = false};
if (typeOf _i == "M_Vorona_HEAT" || typeOf _i == "M_Vorona_HE") then {_exit = false};
if (_exit) exitWith {};

private _d = _v distance _i;
sleep .2;
if ((_v distance _i) > _d) exitWith {dapsDazzled = dapsDazzled - [_i]};

private _p = getPosATL _i;
private _id = getDir _i;
[_v, _id, _p, _i] call DAPS_fnc_React;

if !(alive _i) exitWith {};
if (_exit) exitWith {dapsDazzled = dapsDazzled - [_i]};

[_v, _i] remoteExec ["DAPS_fnc_MisguideMissile", 2];

waitUntil { sleep 2; !(alive _i)};
dapsDazzled = dapsDazzled - [_i];