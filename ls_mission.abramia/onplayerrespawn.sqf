[] spawn ls_fnc_zeus;

[] spawn 
{
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [15];
	"dynamicBlur" ppEffectCommit 0;
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 5;
};
// -- Баффы, ограничения, действия.
removeAllActions player; 
[] spawn repcom_suit_fnc_suit_ready;
[] spawn ls_fnc_systems;

//disableUserInput true;
//player switchMove "";
//_playerAnims = ["UnconsciousReviveHead_A","UnconsciousReviveHead_C","UnconsciousReviveArms_A","UnconsciousReviveArms_B","UnconsciousReviveArms_C","UnconsciousReviveBody_A","UnconsciousReviveBody_B","UnconsciousReviveDefault_A","UnconsciousReviveDefault_B","UnconsciousReviveDefault_C","UnconsciousReviveLegs_A","UnconsciousReviveLegs_B"] call BIS_fnc_selectRandom;
//player switchMove _playerAnims;
//cutText ["","BLACK IN",5];
//sleep 5;
//cutText ["","BLACK OUT",5];
//sleep 5;
//player switchMove "UnconsciousReviveHead";
//sleep 3;
//cutText ["","BLACK IN",1];
//disableUserInput false;
////disableUserInput true;
//disableUserInput false;
   
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


hintsilent "Напоминание: НЛР 10 минут, тяжелые ранения";

sleep 15;
[] spawn ls_fnc_credits;