	sleep 10;
	
	profileNameSpace setVariable ["items3",			  assignedItems player];
	profileNameSpace setVariable ["backpack3",			   backpack player];
	profileNameSpace setVariable ["backpackitems3",   backpackItems player];
	profileNameSpace setVariable ["vest3",					   vest player];
	profileNameSpace setVariable ["vestitems3",			  vestItems player];
	profileNameSpace setVariable ["uniform3",			    uniform player];
	profileNameSpace setVariable ["headgear3",			   headgear player];
	profileNameSpace setVariable ["uniformitems3", 	   uniformItems player];
	profileNameSpace setVariable ["primWepPl3",	  	  primaryWeapon player];
	profileNameSpace setVariable ["primWepIt3",  primaryWeaponItems player];
	profileNameSpace setVariable ["secWepPl3",		secondaryWeapon player];
	profileNameSpace setVariable ["secWepIt3", secondaryWeaponItems player];
	profileNameSpace setVariable ["handgunWepPl3",	  handgunWeapon player];
	profileNameSpace setVariable ["handgunMIt3",	   handgunItems player];
	profileNameSpace setVariable ["binocular3",			  binocular player];
	profileNameSpace setVariable ["goggles3",				goggles player];
	profileNameSpace setVariable ["position3",			  getPosATL player];
	
	("equipDialog" call BIS_fnc_rscLayer) cutRsc ["saveEquipdialog","PLAIN"];
	uiNamespace getVariable "saveEquipdialog" displayCtrl 11000 ctrlSetStructuredText parseText "<t color='#00FF00' align='center' size='0.8'>Позиция и снаряжение сохранены</t>";
	sleep 5;
	("equipDialog" call BIS_fnc_rscLayer) cutText["", "PLAIN", 0, false];