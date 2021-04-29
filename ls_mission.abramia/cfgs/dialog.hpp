////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by [RS] CS 2976 Zewa MG, v1.063, #Baguco)
////////////////////////////////////////////////////////
class dialog{
	idd=87998;
	class controls{
class IGUIBack_2200: RscPicture
{
            idc = 2200;
            text = "ls_load\load.paa";
            x = -0.00248301 * safezoneW + safezoneX;
            y = -0.00391678 * safezoneH + safezoneY;
            w = 1.00497 * safezoneW;
            h = 1.00783 * safezoneH;
            colorText[] = {1,1,1,0.7};
};
		class RscActiveText_1700: RscActiveText
		{
			idc = 1700;
	type =11;
	style = ST_PICTURE;
			text="pictures\6.paa";
			action="[1] spawn ls_fnc_position";
			tooltip = "Загрузить позицию";
			color[]={0,0.178,0.238,1};
	colorActive[]={1,1,1,1};
	colorDisabled[]={1,1,1,0.5};
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={0.31,0.31,0.31,1};
	tooltipColorShade[]={0.31,0.31,0.31,1};
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.09,
		1
	};
	x = 0.275205 * safezoneW + safezoneX;
	y = 0.68197 * safezoneH + safezoneY;
	w = 0.0793394 * safezoneW;
	h = 0.125979 * safezoneH;
		};
		class RscActiveText_1701: RscActiveText
		{
			idc = 1701;
	type =11;
	style = ST_PICTURE;
			text="pictures\7.paa";
			action="[2] spawn ls_fnc_position";
			tooltip = "Обнулить позицию";
			color[]={0,0.178,0.238,1};
	colorActive[]={1,1,1,1};
	colorDisabled[]={1,1,1,0.5};
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={0.31,0.31,0.31,1};
	tooltipColorShade[]={0.31,0.31,0.31,1};
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.09,
		1
	};
	x = 0.645456 * safezoneW + safezoneX;
	y = 0.68197 * safezoneH + safezoneY;
	w = 0.0793394 * safezoneW;
	h = 0.125979 * safezoneH;
		};
	};
};
class RscTitles
{
	class saveEquipdialog{
		idd=87999;
		movingEnable = 0;
		duration = 10000;
		fadein = 0;
		fadeout = 0;	
		name = "saveEquipdialog";
		onLoad = "uiNamespace setVariable ['saveEquipdialog', _this select 0]";
		controls[] = {"RscPicture_12000","RscStructuredText_11000"};
		
		class RscPicture_12000: RscPicture
		{
			enable=1;
			idc = 12000;
			text = "pictures\equipbkg.paa";
			x = 0.797523 * safezoneW + safezoneX;
			y = 0.597984 * safezoneH + safezoneY;
			w = 0.152067 * safezoneW;
			h = 0.0839861 * safezoneH;
		};
		
		class RscStructuredText_11000: RscStructuredText
		{
			enable=1;
			idc = 11000;
			text = "";
			x = 0.811485 * safezoneW + safezoneX;
			y = 0.619122 * safezoneH + safezoneY;
			w = 0.119009 * safezoneW;
			h = 0.0419931 * safezoneH;
		};
		
	};
	class massmessage{
		idd=87996;
		movingEnable = 0;
		duration = 100000;
		fadein = 0;
		fadeout = 0;	
		name = "massmessage";
		onLoad = "uiNamespace setVariable ['massmessage', _this select 0]";
		controls[] = {"RscPicture_12001","RscStructuredText_11001"};
		
		class RscPicture_12001: RscPicture
		{
			idc = 12001;
			text = "pictures\equipbkg.paa";
			x = 0.854249 * safezoneW + safezoneX;
			y = 0.626028 * safezoneH + safezoneY;
			w = 0.144324 * safezoneW;
			h = 0.23 * safezoneH;
		};
		class RscStructuredText_11001: RscStructuredText
		{
			idc = 11001;
			text = "";
			x = 0.860077 * safezoneW + safezoneX;
			y = 0.67 * safezoneH + safezoneY;
			w = 0.131203 * safezoneW;
			h = 0.210047 * safezoneH;
		};
	};
	class miningTimer{
		idd=87995;
		movingEnable = 0;
		duration = 100000;
		fadein = 0;
		fadeout = 0;	
		name = "miningTimer";
		onLoad = "uiNamespace setVariable ['miningTimer', _this select 0]";
		controls[] = {"RscStructuredText_11003"};
		class RscStructuredText_11003: RscStructuredText
		{
			idc = 11003;
			text="";
			colorBackground[] = {0,0,0,0.5};
			x = 0.736166 * safezoneW + safezoneX;
			y = 0.919953 * safezoneH + safezoneY;
			w = 0.111523 * safezoneW;
			h = 0.097989 * safezoneH;
		};
	};
};
class errorSlotDialog {
		idd=87997;
	class controls{
		class RscStructuredText_11002: RscStructuredText
		{
			idc = 11002;
			text="";
			colorBackground[] = {0,0,0,0.5};
			x = 0.322875 * safezoneW + safezoneX;
			y = 0.359961 * safezoneH + safezoneY;
			w = 0.354249 * safezoneW;
			h = 0.238067 * safezoneH;
		};
	};
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
