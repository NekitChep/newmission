
SWOP_FIX = 
{
	for "_x" from 1 to 4 do 
	{
		endLoadingScreen; 
		sleep 3;
	};
};

[] spawn SWOP_FIX;
[] spawn ls_fnc_whitelist;
[] spawn repcom_suit_fnc_suit_ready;


["weapon", {
	if (currentWeapon player isEqualTo "212th_arifle_z6_F")then {
		player setCustomAimCoef 0.4;
		player setUnitRecoilCoefficient 0.4; 
	}else{
		player setUnitRecoilCoefficient 0.7; 
		player setCustomAimCoef 0.7;
	};
	if ((name player) find "RC" !=-1) 
		then 
	{
		player setUnitRecoilCoefficient 0.1; 
		player setCustomAimCoef 0.1
	};
}] call CBA_fnc_addPlayerEventHandler;