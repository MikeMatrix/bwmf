diag_log text format ["[BW-deleteEmptyVehicles] Running on %1", _this];
if (!isServer) exitWith {};

if (((typeName _this) != "ARRAY") || {_this isEqualTo []}) exitWith {};

sleep 5;

if (isNil "PABST_ADMIN_SAFESTART_public_isSafe") exitWith {diag_log text format ["[BW-deleteEmptyVehicles] Safestart nil"]};

waitUntil {!PABST_ADMIN_SAFESTART_public_isSafe};

diag_log text format ["[BW-deleteEmptyVehicles] Safestart ending"];

{
    _xSide = [_x, true] call BIS_fnc_objectSide;

    if ((true in _this) || {_xSide in _this}) then {
        if ((count (crew _x)) == 0) then {
            diag_log text format ["[BW-deleteEmptyVehicles] Deleting vehicle class %1 - side %2 - var %3", (typeOf _x), _xSide, _x];
            deleteVehicle _x;
        };
    };

} forEach vehicles;