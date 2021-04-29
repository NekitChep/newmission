_prop = _this select 0;
_near = nearestObjects[_prop,["Car","Truck","Tank","Air","Ship","Submarine"],20];

If ((count _near)isEqualto 1) then {
	_veh = _near select 0;
    hint format ["Ремонт начался...."];
    sleep 3;
	hintSilent "";
    _veh setDamage [0,false];
    if(fuel _veh == 1) then {
    	hint format ["Техника уже с полным баком"];
		sleep 2;
		hintSilent "";
    } else {
        _veh setFuel 1;
        sleep 4;
		hint format ["Техника заправлена"]
    };   
	sleep 3;
	_veh setVehicleAmmo 1;
	hint format ["Техника перевооружена"];
	sleep 2;
	hintSilent "";
    hint format ["Ремонт завершён"];
    sleep 2;
    hintSilent ""
} else {
    hint format ["На точке нету техники"];
    addCamShake [5,1,5];
    sleep 2;
    hintSilent "";
};