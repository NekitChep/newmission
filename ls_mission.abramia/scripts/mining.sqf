private["_varMining","_resource","_varTime","_varNamePlayer"];
_resource = _this # 0;  
_varMining = missionNamespace getVariable "bysyMineWork";
_varTime = missionNamespace getVariable "timeMining"; 

if(_varTime != 0) then {
    hint "Добыча ресурсов уже производится";
    addCamShake [ 5,1,5];
    sleep 2;
    hintSilent "";
}else{
	if(_varTime == 0 && _varMining == 0)then{
		missionNamespace setVariable ["bysyMineWork",1,true];
		missionNamespace setVariable ['timeMining',1,true];
		hint format ["Начата добыча %1",_resource];
		["scripts\timermining.sqf"] remoteExec ["execVM",2];
		sleep 2;
		hintSilent "";
		for [{private _i = 1}, {_i < 5401}, {_i = _i + 1}] do {
			("mining" call BIS_fnc_rscLayer) cutRsc ["miningTimer","PLAIN"];
			uiNamespace getVariable "miningTimer" displayCtrl 11003 ctrlSetStructuredText parseText format ["<t color='#FFFFFF' align='center' size='0.8'>Идёт добыча,<br/><t color='#F4DA00' align='center' size='0.8'> прогресс:<br/><t color='#00FF00' align='center' size='0.8'>%1/5400</t></t></t>", _i];
			sleep 1;
		};
		("mining" call BIS_fnc_rscLayer) cutText["", "PLAIN", 0, false];
		hintC "Добыча ресурсов завершена";
	}else{
		if(_varTime == 0 && _varMining == 2)then{
			hint format ["Вы добыли %2 единиц %1.",_resource, ceil random 100];
			missionNamespace setVariable ["bysyMineWork",0,true];
			sleep 4;
			hintSilent ""; 
		};
	};
};