["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

enableSaving [false,false];


UsableUniformsJump = ["SWOP_Reb_f_WW_Chewbacca1_CombatUniform","SWOP_Reb_f_WW_Chewbacca3_CombatUniform","SWOP_Reb_f_WW_Chewbacca5_CombatUniform"];
player setVariable ["Last_Jump", 0, true];
player addAction ["<t color='#00FF00'>Прыгнуть</t>", "[] spawn ls_fnc_jump", [], 6, false, true,"User11","((vehicle player == player) && (uniform player in UsableUniformsJump))"];

UniformList = [
    "RC_Nemesis_Uniform_Tech","RC_Solus_Helmet_09","RC_Solus_Helmet_83","RC_Solus_s1_armor_83","RC_Solus_Uniform_09","RC_Solus_Uniform_83","RC_Void_Uniform_Roon","RC_Nemesis_Uniform_Scroll","RC_Nemesis_Uniform_Gordon","RC_Nemesis_Uniform_EOD",
	"RC_Uniform","RC_MPGunner_Uniform","RC_Uniform_13","SWLB_CEE_Gregor_Uniform","RC_Solus_Uniform_83","RC_Solus_Uniform_99",
	"RC_Solus_Uniform_47","RC_Solus_Uniform_66","RC_Solus_Uniform_Forest","RC_Solus_Uniform_Sand","RC_Solus_Uniform_Clever","RC_Solus_Uniform_Tox",
	"RC_AiwhaDikut_Uniform","RC_AiwhaSarge_Uniform","RC_AiwhaTyto_Uniform","RC_AiwhaZag_Uniform",
	"RC_Alpha1_Uniform","RC_Alpha2_Uniform",
	"RC_DeltaBoss_Uniform","RC_DeltaFixer_Uniform","RC_DeltaScorch_Uniform","RC_DeltaSev_Uniform",
	"RC_Bravo2_Uniform","RC_BravoRam_Uniform","RC_Bravo3_Uniform","RC_Bravo4_Uniform",
	"RC_MPGunner_Uniform","RC_MPMarksman_Uniform","RC_MPRecon_Uniform","RC_MPStealth_Uniform",
	"RC_Omega_Uniform","RC_OmegaFi_Uniform","RC_OmegaDarman_Uniform","RC_OmegaNiner_Uniform",
	"RC_YayaxCov_Uniform","RC_YayaxDev_Uniform","RC_YayaxJind_Uniform","RC_YayaxYover_Uniform",
	"RC_Yivra_Uniform_Naak","RC_Yivra_Uniform_Goran","RC_Yivra_Uniform_Elyrea","RC_Yivra_Uniform_Aden",
	"RC_Solus_Uniform_Kappa","RC_Solus_Uniform_Nort", "RC_Solus_Uniform_02",
	"RC_Solus_Helmet_45","RC_Solus_Uniform_45","RC_Solus_eod_armor_45_V2"
			  ];
player setVariable ["Heal_Used",0,true];
player setVariable ["Last_Used",0,true];
player addAction ["<t color='#2ECC71'> Использовать бакту </t>", "[] spawn ls_fnc_bacta", [], -1, false, true,"User10", "((uniform player in UniformList) && ('ACE_personalAidKit' in (items _this)))"];
["ace_unconscious", {[] spawn ls_fnc_autobacta;}] call CBA_fnc_addEventHandler;

