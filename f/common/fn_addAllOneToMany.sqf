/*
 * Author: MikeMatrix
 * Add all keys with given values to a One To Many Storage
 *
 * Arguments:
 * 0: Storage <ARRAY>
 * 1: Keys <ARRAY>
 * 2: Values <ARRAY>
 *
 * Return Value:
 * None
 */

params [
  "_storage",
  ["_keys", [], [[]]],
  ["_values", [], [[]]]
];

_storage params ["_storageKeys", "_storageMappings", "_storageData"];
private _newMapping = [];
{
  private _keyIndex = _storageKeys find _x;
  if (_keyIndex == -1) then {
    _keyIndex = _storageKeys pushBack _x;
  };

  {
    private _valueStorage = _storageData select _forEachIndex;
    if (isNil "_valueStorage") then {
      _storageData set [_forEachIndex, []];
      _valueStorage = _storageData select _forEachIndex;
    };

    private _valueIndex = if ((_valueStorage find _x) != -1) then {
        _valueStorage find _x
      } else {
        _valueStorage pushBack _x
      };
    _newMapping set [_forEachIndex, _valueIndex];
  } forEach _values;

  _storageMappings set [_keyIndex, _newMapping];
} forEach _keys;
