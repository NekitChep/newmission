//////////////////////////////////////////////////////////////////////////
//		Система сохранения позиции и всего снаряжения без БД			//
//		v.0.0.3															//
//		Author: KapayJI													//
//		Состав: fn_equip,fn_save, fn_position							//
//		!!!ВАЖНО!!!														//
//		Если, по каким-то причинам, вы решите использовать эту систему	//
//		в своей мисии(на своём сервере),								//
//		то ОБЯЗАТЕЛЬНО переименуйте ВСЕ переменные						//
//																		//
//////////////////////////////////////////////////////////////////////////

private ["_assignItems","_uniformItems","_vestItems","_backpackItems"];

sleep 2;

findDisplay 46 createDisplay "dialog";

waitUntil { isNull findDisplay 87998 };

if(isNil{profileNameSpace getVariable "position3"} && isNil{profileNameSpace getVariable "items3"} && isNil{profileNameSpace getVariable "backpack3"} && isNil{profileNameSpace getVariable "vest3"} && isNil{profileNameSpace getVariable "uniform3"} && isNil{profileNameSpace getVariable "headgear3"})then{
	hint "Вы впервые у нас";
	sleep 2;
	hintSilent "";
	profileNamespace setVariable ["position3",		[[]]	];
	profileNamespace setVariable ["items3",			[[]]	];
	profileNamespace setVariable ["backpack3",		  ""	];
	profileNamespace setVariable ["backpackitems3", [[]]	];
	profileNamespace setVariable ["vest3",			  ""	];
	profileNamespace setVariable ["vestitems3",		[[]]	];
	profileNamespace setVariable ["uniform3", 		  ""	];
	profileNamespace setVariable ["headgear3", 		  ""	];
	profileNamespace setVariable ["uniformitems3",	[[]]	];
	profileNamespace setVariable ["primWepPl3",		  ""	];
	profileNamespace setVariable ["primWepIt3",		[[]]	];
	profileNamespace setVariable ["secWepPl3",		  ""	];
	profileNamespace setVariable ["secWepIt3",		[[]]	];
	profileNamespace setVariable ["handgunWepPl3",	  ""	];
	profileNamespace setVariable ["handgunMIt3",	[[]]	];
	profileNamespace setVariable ["binocular3",		  ""	];
	profileNamespace setVariable ["goggles3",		  ""	];
	
}else{
/////
try{
	_assignItems = profileNameSpace getVariable "items3";
	if((count _assignItems) != 0)then{
		for "_i" from 0 to (count _assignItems) do {
		player addItem (_assignItems select _i);
		player assignItem (_assignItems select _i);
		};
	};
}catch{
	hint str _exception;
};
/////
try{
	if((profileNameSpace getVariable "headgear3") != "")then{
		player addHeadgear (profileNameSpace getVariable "headgear3");
	};
}catch{
	hint str _exception;
};
//////
try{
	if((profileNameSpace getVariable "uniform3") != "")then{
		player addUniform (profileNameSpace getVariable "uniform3");
		_uniformItems = profileNameSpace getVariable "uniformitems3";
		if((count _uniformItems) != 0)then{
			for "_i" from 0 to (count _uniformItems) do {
			player addItemToUniform (_uniformItems select _i);
			};
		};
	};
}catch{
	hint str _exception;
};
//////
try{
	if((profileNameSpace getVariable "vest3") != "")then{
		player addVest (profileNameSpace getVariable "vest3");
		_vestItems = profileNameSpace getVariable "vestitems3";
		if((count _vestItems) != 0)then{
			for "_i" from 0 to (count _vestItems) do {
			player addItemToVest (_vestItems select _i);
			};
		};
	};
}catch{
	hint str _exception;
};
//////
try{
	if((profileNameSpace getVariable "backpack3") != "")then{
		player addBackpack (profileNameSpace getVariable "backpack3");
		_backpackItems = profileNameSpace getVariable "backpackitems3";
		if((count _backpackItems) != 0) then {
			for "_i" from 0 to (count _backpackItems) do {
			player addItemToBackpack (_backpackItems select _i);
			};
		};
	};
}catch{
	hint str _exception;
};
///// Weapons (Primary + Pistol)
try{
	if((profileNameSpace getVariable "primWepPl3") != "")then{
		player addMagazine ((getArray (configFile / "CfgWeapons" / (profileNameSpace getVariable "primWepPl3") / "magazines")) select 0);
		player addWeapon (profileNameSpace getVariable "primWepPl3");
		if(count (profileNameSpace getVariable "primWepIt3") != 0)then{
			for "_i" from 0 to (count (profileNameSpace getVariable "primWepIt3"))do{
				player addPrimaryWeaponItem ((profileNameSpace getVariable "primWepIt3") select _i);
			};
		};
	};
}catch{
	hint str _exception;
};
try{
	if((profileNameSpace getVariable "handgunWepPl3") != "")then{
		player addMagazine ((getArray (configFile / "CfgWeapons" / (profileNameSpace getVariable "handgunWepPl3") / "magazines")) select 0);
		player addWeapon (profileNameSpace getVariable "handgunWepPl3");
		if(count (profileNameSpace getVariable "secWepIt3") != 0)then{
			for "_i" from 0 to (count (profileNameSpace getVariable "handgunMIt3"))do{
				player addHandgunItem((profileNameSpace getVariable "handgunMIt3") select _i);
			};
		};
	};
}catch{
	hint str _exception;
};
try{
	if((profileNameSpace getVariable "binocular3") != "")then{
		player addWeapon (profileNameSpace getVariable "binocular3");
	};
}catch{
	hint str _exception;
};
try{
	if((profileNameSpace getVariable "goggles3") != "")then{
		player addGoggles (profileNameSpace getVariable "goggles3");
	};
}catch{
	hint str _exception;
};
///// Weapons Secondary (Rocket Launchers)
try{
	if((profileNameSpace getVariable "secWepPl3") != "")then{
		player addMagazine ((getArray (configFile / "CfgWeapons" / (profileNameSpace getVariable "secWepPl3") / "magazines")) select 0);
		player addWeapon (profileNameSpace getVariable "secWepPl3");
		if(count (profileNameSpace getVariable "secWepIt3") != 0)then{
			for "_i" from 0 to (count (profileNameSpace getVariable "secWepIt3"))do{
				player addSecondaryWeaponItem ((profileNameSpace getVariable "secWepIt3") select _i);
			};
		};
	};
}catch{
	hint str _exception;
};
};

[] spawn ls_fnc_rank;
[] spawn ls_fnc_zeus;
[] spawn ls_fnc_systems;
[] execVM "scripts\webfix.sqf";

sleep 10;

[] spawn ls_fnc_credits;


["loadout", {
	[] spawn ls_fnc_save;
}] call CBA_fnc_addPlayerEventHandler;

	

//while{true}do{
	
//};