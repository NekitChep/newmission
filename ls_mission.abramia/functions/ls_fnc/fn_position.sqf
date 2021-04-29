private["_position","_savePose"];
_savePose = _this select 0;

switch(_savePose)do{
	case 1 : {
		_position = profileNameSpace getVariable "position3";
		player setPosATL [_position select 0, _position select 1, _position select 2];
		(findDisplay 87998) closeDisplay 2;
	};
	case 2 : {
		(findDisplay 87998) closeDisplay 2;
	};
	default {
		hint "Что-то пошло не так...";
		sleep 2;
		hintSilent "";
	}
}
