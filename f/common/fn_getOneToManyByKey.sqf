/*
 * Author: MikeMatrix
 * Retrieve values for given key from a One To Many Storage
 *
 * Arguments:
 * 0: Storage <ARRAY>
 * 1: Key <ANY>
 *
 * Return Value:
 * Mapped values <ARRAY>
 */

params [
  "_storage",
  "_key"
];

_storage params ["_storageKeys", "_storageMappings", "_storageData"];

private _keyIndex = _storageKeys find _key;
if (_keyIndex == -1) exitWith {};

private _mapping = _storageMappings select _keyIndex;
private _result = [];

{
  private _valuesStorage = _storageData select _forEachIndex;
  _result pushBack (_valuesStorage select _x);
} forEach _mapping;

_result
