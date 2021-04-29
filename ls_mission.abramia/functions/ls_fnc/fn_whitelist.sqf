private ["_reserved_units_jedi","_reserved_uids_jedi","_reserved_units_jedi_g","_reserved_uids_jedi_g","_reserved_kredo","_reserved_kredo_uid","_reserved_yamato","_reserved_yamato_uid","_uid","_vehPlayer","_errSlot"];

_reserved_units_jedi = getArray (missionConfigFile >> "Whitelists" >> "list_jedi");
_reserved_uids_jedi = getArray (missionConfigFile >> "Whitelists" >> "list_jedi_uids");
_reserved_units_jedi_g = getArray (missionConfigFile >> "Whitelists" >> "list_jedi_g");
_reserved_uids_jedi_g = getArray (missionConfigFile >> "Whitelists" >> "list_jedi_g_uids");
_reserved_kredo = getArray (missionConfigFile >> "Whitelists" >> "list_kredo");
_reserved_kredo_uid = getArray (missionConfigFile >> "Whitelists" >> "list_kredo_uid");
_reserved_yamato = getArray (missionConfigFile >> "Whitelists" >> "list_yamato");
_reserved_yamato_uid = getArray (missionConfigFile >> "Whitelists" >> "list_yamato_uid");

_uid = getPlayerUID player;
_vehPlayer = vehicle player;
_errSlot = {
	waitUntil{isNull findDisplay 53};
	findDisplay 46 createDisplay "errorSlotDialog";
	disableUserInput true;
	for [{private _i = 0}, {_i < 10}, {_i = _i + 1}] do {
		(findDisplay 87997) displayCtrl 11002 ctrlSetStructuredText parseText format ["<t color='#FF0000' valign='center' align='center' size='1.5'>Вы не можете занимать этот слот.Вы будете отправленны в лобби через %1 секунд.</t>", 10-_i];
		sleep 1;
	};
	(findDisplay 87997) closeDisplay 2;	
	["end1", false, 2] call BIS_fnc_endMission;
};

if (((str _vehPlayer in _reserved_units_jedi)&&!(_uid in _reserved_uids_jedi))||((str _vehPlayer in _reserved_units_jedi_g)&&!(_uid in _reserved_uids_jedi_g))||((str _vehPlayer in _reserved_kredo)&&!(_uid in _reserved_kredo_uid))||((str _vehPlayer in _reserved_yamato)&&!(_uid in _reserved_yamato_uid))) then 
{
	[] spawn _errSlot;
	0 cutFadeOut 10;

}else{

[] spawn ls_fnc_equip;

};  