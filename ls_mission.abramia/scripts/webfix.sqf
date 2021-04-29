waitUntil {player == player};
waitUntil{!isNull player};
waituntil {!isnull (finddisplay 46)};
sleep 20; // Обязательно ждём пока мили система загрузиться и уже после меняем функцию.
SW_AdditionalDamage = {
_unitToPlay = _this select 0;
if (lifeState _unitToPlay == "INCAPACITATED") exitWith {};
_var = player getVariable "IMS_LaF_ShotsToTakeOutOneGuy";
_var = _var - 1;
hintSilent str _var;
if (_var <= 0) exitWith {
[_unitToPlay, 0.1, "body", "bullet"] remoteExec ["ace_medical_fnc_addDamageToUnit", _unitToPlay];
[_unitToPlay, true] remoteExec ["ace_medical_fnc_setUnconscious", _unitToPlay];
};
player setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",_var,true];
}; 





///////Оверрайдим скрипты на подхил чтобы они работали с системой сверху.
["WebKnight's Force Use", "WBK_ForceUse_HealSelf", [localize "STR_SW_FORCEHEALSELF", "Heal yourself using force"], { 
player spawn {
_unit = _this;
////Хил Себя
if (("Force_tir_2" in magazines _unit) or ("Force_tir_3" in magazines _unit) or ("Force_tir_Sith" in magazines _unit)) then {
if (PlayerForceMana == 0) then {
[_unit, "random_shhh", 20, 7] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
PlayerForceMana = 1;
systemChat localize "STR_SW_RELOAD30";
_unit setVariable ["canMakeAttack",1, true];
_unit playActionNow "starWars_force_fireball";
sleep 1.05;
[_unit, "Jedi_Freeze_Over", 70, 7] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_unit] call ace_medical_treatment_fnc_fullHealLocal;
_unit setVariable ["concentrationParam",0.5, true];
if (typeOf player == "B_recon_F") exitWith { 
_unit setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",25,true];
sleep 1;
_unit setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
if (typeOf player == "B_recon_medic_F") exitWith { 
_unit setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",50,true];
_unit setVariable ["LaF_HitCountToKill",2,true];
sleep 1;
_unit setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
if (typeOf player == "B_sniper_F") exitWith { 
_unit setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",100,true];
_unit setVariable ["LaF_HitCountToKill",3,true];
sleep 1;
_unit setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
if (typeOf player == "I_Soldier_AR_F") exitWith { 
_unit setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",100,true];
_unit setVariable ["LaF_HitCountToKill",3,true];
sleep 1;
_unit setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
if (typeOf player == "I_Soldier_M_F") exitWith { 
_unit setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",150,true];
_unit setVariable ["LaF_HitCountToKill",5,true];
sleep 1;
_unit setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
_unit setDamage ((damage _unit) - 0.5);
_unit setVariable ["concentrationParam",0.5, true];
systemChat localize "STR_SW_FORCEHEALED";
sleep 1;
_unit setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
};
};
}, {}, [2, [false, false, false]]] call cba_fnc_addKeybind; 

["WebKnight's Force Use", "WBK_ForceUse_HealOther", [localize "STR_SW_FORCEHEALOTHER", "Heal other person using force"], { 
player spawn {
_unit = _this;
////Хил Другого персонажа
if (("Force_tir_2" in magazines _unit) or ("Force_tir_3" in magazines _unit) or ("Force_tir_Sith" in magazines _unit)) then {
if (PlayerForceMana == 0) then {
[_unit, "random_shhh", 20, 7] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
PlayerForceMana = 1;
systemChat localize "STR_SW_RELOAD30";
_unit setVariable ["canMakeAttack",1, true];
_unit playActionNow "starWars_force_fireball";
sleep 0.85;
_unit playActionNow "starWars_force_push";
sleep 0.85;
if (alive _unit) then {
[_unit, "Jedi_Freeze_Over", 70, 7] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
{
if (!(_x == _unit)) then {
if (((_unit worldToModel (_x modelToWorld [0, 0, 0])) select 1) < 0) then 
{}else{
[_x] remoteExecCall ["ace_medical_treatment_fnc_fullHealLocal"]; 
[_x,  ((damage _x) - 0.5)] remoteExec ["setDamage", 0];
if (typeOf player == "B_recon_F") then { 
_x setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",25,true];
sleep 1;
_x setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
if (typeOf player == "B_recon_medic_F") then { 
_x setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",50,true];
_x setVariable ["LaF_HitCountToKill",2,true];
sleep 1;
_x setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
if (typeOf player == "B_sniper_F") then { 
_x setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",100,true];
_x setVariable ["LaF_HitCountToKill",3,true];
sleep 1;
_x setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
if (typeOf player == "I_Soldier_AR_F") then { 
_x setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",100,true];
_x setVariable ["LaF_HitCountToKill",3,true];
sleep 1;
_x setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
if (typeOf player == "I_Soldier_M_F") then { 
_x setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",150,true];
_x setVariable ["LaF_HitCountToKill",5,true];
sleep 1;
_x setVariable ["canMakeAttack",0, true];
sleep 30;
PlayerForceMana = 0;
systemChat localize "STR_SW_FORCERELOADED";
};
};
};
} forEach nearestObjects [_unit, ["Man"], 8];
};
};
};
};
}, {}, [2, [false, true, false]]] call cba_fnc_addKeybind; 




if (typeOf player == "B_recon_F") exitWith { 
player setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",25,true]; ///Падаван
};
if (typeOf player == "B_recon_medic_F") exitWith { 
player setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",50,true]; ///Рыцарь
player setVariable ["LaF_HitCountToKill",2,true];
};
if (typeOf player == "B_sniper_F") exitWith { 
player setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",100,true]; ///Мастер
player setVariable ["LaF_HitCountToKill",3,true];
};
if (typeOf player == "I_Soldier_AR_F") exitWith { 
player setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",100,true]; ///Серые джедаи
player setVariable ["LaF_HitCountToKill",3,true];
};
if (typeOf player == "I_Soldier_M_F") exitWith { 
player setVariable ["IMS_LaF_ShotsToTakeOutOneGuy",150,true]; /// Кредо-Данжен-Мастер
player setVariable ["LaF_HitCountToKill",5,true];
player addWeapon "LFP_lightsaber";
player addWeapon "LFP_lightsaber_Second";
};