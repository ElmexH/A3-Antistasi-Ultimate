///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "MNGC"] call _fnc_saveToTemplate; 

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "cup\baseconfigs\cup_baseconfigs\data\flags\flag_napa_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "Faction_CUP_NAPA"] call _fnc_saveToTemplate;

["vehiclesBasic", ["I_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["BRAF_AM11_Unarmed", "CUP_B_nM1025_Unarmed_NATO_T"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["BRAF_AM11_Armed", "CUP_B_nM1025_M240_NATO_T"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["BRAF_AM21_Covered"]] call _fnc_saveToTemplate;
["vehiclesAT", ["CUP_B_M1167_NATO_T"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_B_nM1097_AVENGER_NATO_T"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["I_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_C_DC3_CIV"]] call _fnc_saveToTemplate;       // replace from civ varient s
["vehiclesCivPlane", ["CUP_C_AN2_CIV", "CUP_C_C47_CIV"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["CUP_B_nM997_NATO_T", "BRAF_Worker_Health"]] call _fnc_saveToTemplate;


["vehiclesCivCar", ["CUP_O_Hilux_unarmed_CR_CIV"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["CUP_C_Ural_Civ_03"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_C_412", "CUP_C_SA330_Puma_HC1_ChernAvia", "CUP_I_Merlin_HC3_PMC_Lux_3C"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_M2StaticMG_US"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_B_TOW2_TriPod_US"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_B_CUP_Stinger_AA_pod_US"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_B_M252_US"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["staticMortarMagFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["mineAT", "CUP_MineE_M"] call _fnc_saveToTemplate;
["mineAPERS", "APERSMine_Range_Mag"] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;



//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["blackMarketStock", [

    ["CUP_B_AGS_CDF", 3000, "STATICMG", {tierWar > 3}],

    ["CUP_B_M113A3_USA", 2050, "CAR", {true}],

    ["CUP_B_LAV25_HQ_USMC", 6000, "APC", {true}],
    ["CUP_B_LAV25M240_USMC", 9000, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],

    ["CUP_B_M60A3_USMC", 20000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
  
    ["CUP_B_ZSU23_CDF", 10000, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],

    ["CUP_B_CESSNA_T41_ARMED_USA", 10000, "PLANE", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_B_L39_CZ", 40000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],

    ["CUP_B_MH6J_USA", 15000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["CUP_B_UH60M_US", 25000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}]
]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "braf_boito_14_oldstock", "Braf_Mosquefal",
    "BRAF_Boito_5Rnd_buck", "BRAF_Boito_5Rnd_slug", "braf_Clip_5Rnd_762x51",
    "braf_imbel_m973", "braf_9Rnd_9mm",
    ["CUP_launch_M72A6", 50],
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
    "CUP_HandGrenade_RGD5", "SmokeShell",
    "CUP_V_I_Carrier_Belt", "CUP_V_I_Guerilla_Jacket", "CUP_V_I_RACS_Carrier_Rig_2", "CUP_V_I_RACS_Carrier_Rig_wdl_2",
    "CUP_V_RUS_Smersh_New_Light", "CUP_V_OI_TKI_Jacket1_06", "CUP_V_OI_TKI_Jacket5_05", "CUP_V_OI_TKI_Jacket5_06", "CUP_V_OI_TKI_Jacket3_04",
    "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_oli","B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk",
    "Binocular"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr", "tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "tf_anprc155";
    _initialRebelEquipment pushBack "tf_anprc155_coyote";
};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr", "TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "TFAR_anprc155";
    _initialRebelEquipment pushBack "TFAR_anprc155_coyote";
};

_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "CUP_I_B_PMC_Unit_1",
    "CUP_I_B_PMC_Unit_2",
	"CUP_I_B_PMC_Unit_3",
	"CUP_I_B_PMC_Unit_4",
	"CUP_I_B_PMC_Unit_5",
	"CUP_I_B_PMC_Unit_6",
	"CUP_I_B_PMC_Unit_7",
	"CUP_I_B_PMC_Unit_8",
	"CUP_I_B_PMC_Unit_9",
	"CUP_I_B_PMC_Unit_10",
	"CUP_I_B_PMC_Unit_11",
	"CUP_I_B_PMC_Unit_12",
	"CUP_I_B_PMC_Unit_13",
	"CUP_I_B_PMC_Unit_14",
	"CUP_I_B_PMC_Unit_15",
	"CUP_I_B_PMC_Unit_16",
	"CUP_I_B_PMC_Unit_17",
	"CUP_I_B_PMC_Unit_18",
	"CUP_I_B_PMC_Unit_19",
	"CUP_I_B_PMC_Unit_20"
];          //Uniforms given to Player Rebels

private _rebUniformsAI = [
    "CUP_I_B_PMC_Unit_1",
    "CUP_I_B_PMC_Unit_2",
	"CUP_I_B_PMC_Unit_3",
	"CUP_I_B_PMC_Unit_4",
	"CUP_I_B_PMC_Unit_5",
	"CUP_I_B_PMC_Unit_6",
	"CUP_I_B_PMC_Unit_7",
	"CUP_I_B_PMC_Unit_8",
	"CUP_I_B_PMC_Unit_9",
	"CUP_I_B_PMC_Unit_10",
	"CUP_I_B_PMC_Unit_11",
	"CUP_I_B_PMC_Unit_12",
	"CUP_I_B_PMC_Unit_13",
	"CUP_I_B_PMC_Unit_14",
	"CUP_I_B_PMC_Unit_15",
	"CUP_I_B_PMC_Unit_16",
	"CUP_I_B_PMC_Unit_17",
	"CUP_I_B_PMC_Unit_18",
	"CUP_I_B_PMC_Unit_19",
	"CUP_I_B_PMC_Unit_20"
];          //Uniforms given to AI Rebels

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", [
    "CUP_H_C_Beanie_02",
    "CUP_H_C_Beret_03",
    "CUP_H_C_Beret_04",
    "CUP_H_C_Ushanka_01",
    "CUP_H_C_Ushanka_02",
    "CUP_H_C_Ushanka_03",
    "CUP_H_Ger_Boonie2_Flecktarn",
    "CUP_H_NAPA_Fedora",
    "H_Bandanna_camo"
    ]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

["faces", ["AfricanHead_01","AfricanHead_02","AfricanHead_03","Barklem","GreekHead_A3_05",
"GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09",
"Sturrock","WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04",
"WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09",
"WhiteHead_10","WhiteHead_11","WhiteHead_12","WhiteHead_13","WhiteHead_14",
"WhiteHead_15","WhiteHead_16","WhiteHead_17","WhiteHead_19","WhiteHead_20",
"WhiteHead_21"]] call _fnc_saveToTemplate;
["voices", ["Male01ENGFRE","Male02ENGFRE","Male01FRE","Male02FRE","Male03FRE","CUP_D_Male01_GB_BAF","CUP_D_Male02_GB_BAF","CUP_D_Male03_GB_BAF","CUP_D_Male04_GB_BAF","CUP_D_Male05_GB_BAF"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniformsAI];
_loadoutData set ["facewear", ["None","CUP_G_Balaclava_blk","CUP_G_Balaclava_oli","CUP_G_Bandanna_aviator","CUP_G_Bandanna_beast",
"CUP_G_Bandanna_blk","CUP_G_Bandanna_khk","CUP_G_Bandanna_oli","CUP_G_Bandanna_shades","CUP_G_Shades_Black"
]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;