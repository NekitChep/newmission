private["_txt","_args","_txtcolor"];
_txt = _this select 0;
_args = _txt splitString " ";
_txtcolor = _args # 0;
if(_txtcolor isEqualTo "~r~")then{
_txtcolor = "#FF0013";
_args set [0,""];
}else{
_txtcolor = "#00FF00";
};
_txt = _args joinString " ";
("ivmassmessage" call BIS_fnc_rscLayer) cutRsc ["massmessage","PLAIN"];
_chatlist = uiNamespace getVariable "massmessage" displayCtrl 11001;
_chatlist ctrlSetStructuredText parseText format ["<t color='%1' align='center' size='0.8'>%2</t>",_txtcolor,_txt];
sleep 60;
("ivmassmessage" call BIS_fnc_rscLayer) cutText["", "PLAIN", 0, false];