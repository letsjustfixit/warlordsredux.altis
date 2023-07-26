params ["_v"];

_a = [];
_reg = [];

_v setVariable ["dapsType", "Dazzler", true];

while {alive _v} do {
	if (_v call DAPS_fnc_active) then {
		_a = (((nearestObjects [_v, ["ammo_Penetrator_Base", "SubmunitionCore", "MissileCore", "RocketCore"], 200]) select {!((typeOf _x) in _reg)}) # 0);
		if !(isNil {_a}) then {
			_reg pushBackUnique _a;
			[_v, _a] spawn DAPS_fnc_Dazzler;
		};

		{
		    if !(alive _x) then {
		        _reg = _reg - [_x];
		    };
		} forEach _reg;
	};
	sleep 0.001;
};