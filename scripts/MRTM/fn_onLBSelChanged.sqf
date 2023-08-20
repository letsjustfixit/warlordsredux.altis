/*
	Author: MrThomasM

	Description: Updates the group buttons/data.
*/
params ["_lb"];

lbClear 4009;
ctrlShow [4009, false];
ctrlShow [4106, false];

private _number = random 200;

if (_lb == "Players") then {
	if ((lbCurSel 4006) < 0) exitWith {};

	_data = lbData [4006, (lbCurSel 4006)];
	_unit = _data call BIS_fnc_getUnitByUID;
	[format ["%1: _data: %2", _number, _data]] remoteExec ["systemChat", player];
	[format ["%1: _unit: %2", _number, _unit]] remoteExec ["systemChat", player];
	if (!((getPlayerUID _unit) in (player getVariable ["MRTM_invitesOut", []])) && {(count ((units _unit) select {isPlayer _x}) == 1) && {leader player == player}}) then {
		ctrlEnable [4101, true];
		[format ["%1: Can Invite", _number]] remoteExec ["systemChat", player];
	} else {
		ctrlEnable [4101, false];
		[format ["%1: Can't Invite", _number]] remoteExec ["systemChat", player];
	};
	if ((getPlayerUID _unit) in (player getVariable ["MRTM_invitesIn", []])) then {
		[format ["%1: Can accept", _number]] remoteExec ["systemChat", player];
		ctrlEnable [4105, true];
		ctrlEnable [4102, true];
	} else {
		[format ["%1: Can't accept", _number]] remoteExec ["systemChat", player];
		ctrlEnable [4105, false];
		ctrlEnable [4102, false];
	};
} else {
	if ((lbCurSel 4005) < 0) exitWith {};
	_data = lbData [4005, (lbCurSel 4005)];
	_unit = _data call BIS_fnc_getUnitByUID;
	[format ["%1, %2", (_unit == player), ((count ((units player) select {isPlayer _x})) > 1)]] remoteExec ["systemChat", player];
	if (_unit == player && {(count ((units player) select {isPlayer _x})) > 1}) then {
		ctrlEnable [4103, true];
	} else {
		ctrlEnable [4103, false];
	};
	if ((leader _unit) == player && {isPlayer _unit}) then {
		//ctrlShow [4009, true];
		//ctrlShow [4106, true];
		{
			_index = lbAdd [4009, _x];
			lbSetData [4009, _index, (lbData [4005, (lbCurSel 4005)])];
		} forEach (["Engineer", "Rifleman", "TeamLeader", "AT", "AA", "Pilot"] select {(_unit getUnitTrait _x) == false});
	} else {
		ctrlShow [4009, false];
		ctrlShow [4106, false];
	};
};

0 spawn MRTM_fnc_openGroupMenu;