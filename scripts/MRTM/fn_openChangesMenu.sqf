/*
	Author: MrThomasM

	Description: Opens the changelogs.
*/

if (isNull (findDisplay 6000)) then {
	createDialog "MRTM_changesMenu";
};
disableSerialization;


private _color = [profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843],profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019],profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862],profilenamespace getvariable ['GUI_BCG_RGB_A',0.7]] call BIS_fnc_colorRGBAtoHTML;
((findDisplay 6000) displayCtrl 6102) ctrlSetStructuredText composeText [
	parseText format ["<t color='%1' underline='1'>%2</t>", _color, "2.5.8 Update:" splitString " " joinString toString [160]], lineBreak,
	"-Performance improved.", lineBreak,
	"-Group system added.", lineBreak,
	"-When in a group and you die within 100m of the SL, you respawn next to him with your last loadout.", lineBreak,
	"-Friendly fire between group members disabled.", lineBreak,
	"-APS Improved. 120m -> 40m interception range.", lineBreak,
	"-User settings are saved acros games.", lineBreak,
	"-Player stats added: Total kills, K/D, Sectors seized, Total CP earned, Longest kill distance.", lineBreak,
	"-Last loadout unavailable if it's the same as your current.", lineBreak,
	"-Option to spawn vehicles with empty inventory added.", lineBreak,
	"-Dynamic sector population. More players means less AI spawns.", lineBreak,
	"-Kill bonus if the unit you killed was in the AO.", lineBreak,
	"-Emotes added.", lineBreak,
	"-AI availability UI improved. *available*/*Total*", lineBreak,
	"-Cheaters can't spawn vehicles anymore.", lineBreak,
	"-Cheaters can't get free vehicles.", lineBreak,
	"-Cheaters can't get sector scans for free or target resets.", lineBreak,
	"-Can't bypass rearm timer anymore.", lineBreak,
	"-New base location code. Bases are now a lot more random and never the same as the game before.", lineBreak,
	"-By default autonomous mode is turned off on vehicles with this option.", lineBreak,
	"-Auto smokes for vehicles when APS is triggered is disabled.", lineBreak,
	"-AAF can capture sectors.", lineBreak,
	"-CP income is only for connected sectors.", lineBreak,
	"-Autonomous HMG/GMG added.", lineBreak,
	"-Option to forgive friendly fire incidents.", lineBreak,
	"-Anti AFK system added.", lineBreak,
	"-UI rework.", lineBreak,
	parseText format ["<t color='%1' underline='1'>%2</t>", _color, "2.5.7.1 Update:" splitString " " joinString toString [160]], lineBreak,
	"-New capping values.", lineBreak,
	"-Easter egg reward fixed.", lineBreak,
	"-Initial spawn position on game start fixed.", lineBreak,
	"-Vehicle garbage clean up enhanced.", lineBreak,
	"-AAF spawning at sectors when enemy team already targeted it fixed.", lineBreak,
	"-Spawn pod doesn't work when slightly crooked, fixed.", lineBreak,
	"-Dazzler fixed. And when enabled it auto turns on the engine so people don't forget.", lineBreak,
	"-APS and Dazzler intercept missiles faster, missiles that are shot fast after eachother should all still get intercepted.", lineBreak,
	"-Attack helicopters don't play altitude or pull-up warnings anymore as they didn't work very well and would play constantly.", lineBreak,
	"-.5 CP Won't happen anymore.", lineBreak,
	"-AI Regeneration speed is back to normal.", lineBreak,
	"-Map icons fixed. (Some stuff not showing up).", lineBreak,
	"-Mine limit updated to more types.", lineBreak,
	"-Refuelling fixed.", lineBreak,
	"-Vehicles pop smoke when APS is triggered and there is a commander in the vehicle.", lineBreak,
	"-HARM and ARM Missil added to medium APS.", lineBreak,
	"-Sharurs added to heavy APS", lineBreak,
	parseText format ["<t color='%1' underline='1'>%2</t>", _color, "2.5.7 Update:" splitString " " joinString toString [160]], lineBreak,
	"-Alot of code improvement, wich leads to better gameplay experience.", lineBreak,
	"-Teleporting issue when joining late game is should be fixed.", lineBreak,
	"-Alot less network traffick.", lineBreak,
	"-Code security improved.", lineBreak,
	"-Zone restriction not killing a person after bar is filled fixed.", lineBreak,
	"-GPS icons are better. you see alot more now then just infantry.", lineBreak,
	"-UAV issue fixed.", lineBreak,
	"-Double spawn truck icon fixed.", lineBreak,
	"-Spawn truck lock action fixed.", lineBreak,
	"-Free AI Fixed.", lineBreak,
	"-Starting a game with less then 1000CP (due to imbalance) fixed.", lineBreak,
	"-Dazzler should work again like intented.", lineBreak,
	"-Friendly fire penalty fixed", lineBreak,
	"-All huron containers and Taru Pods are added as refuel, rearm, repair possibility.", lineBreak,
	"-All Containers, pods, boxes are loadable onto the flatbed and can be loaded into the Y-32 and Blackfish Vehicle transport.", lineBreak,
	"-New fast travel option added. The huron medical container and taru medical pod.", lineBreak,
	"-You now get a CP refund if you where transfering CP and it canceled because of sector voting.", lineBreak,
	"-Rearm resources shows on rearm action's text.", lineBreak,
	"-APS improved, Added Rhino ATGM (Heavy + Medium) + Nyx AT's missile to the list. (Heavy)", lineBreak,
	"-Newly bought assets have FF protection in base.", lineBreak,
	"-Divers added", lineBreak,
	"", lineBreak,
	parseText "<a href='https://github.com/Gamer-Dad/warlordsredux.altis'>Visit our github to view the earlier changes.</a>", lineBreak,
	parseText format ["<t color='%1' underline='1'>%2</t>", _color, "2.1.0001 Update:" splitString " " joinString toString [160]], lineBreak,
	"- Baseline version number"
];