////////////////////////////////////////////////////////////////////
// Mission briefing initialization file.                          //
// DO NOT MODIFY.                                                 //
// For custom briefing initialization use file init_briefing.sqf. //
////////////////////////////////////////////////////////////////////

if (isServer) then
{
_missionVersion = 9;
setMissionVersion 9;
if (!isNil "_map") then
{
	call compile preProcessFile "\vbs2\editor\Data\Scripts\init_global.sqf";
	initAmbientLife;
};

_func_COC_Create_Unit = fn_vbs_editor_unit_create;
_func_COC_Update_Unit = fn_vbs_editor_unit_update;
_func_COC_Delete_Unit = fn_vbs_editor_unit_delete;
_func_COC_Import_Unit = fn_vbs_editor_unit_import;
_func_COC_UpdatePlayability_Unit = fn_vbs_editor_unit_updatePlayability;
_func_COC_Create_Group = fn_vbs_editor_group_create;
_func_COC_Update_Group = fn_vbs_editor_group_update;
_func_COC_Delete_Group = fn_vbs_editor_group_delete;
_func_COC_Delete_Group_Only = fn_vbs_editor_group_deleteOnlyGroup;
_func_COC_Attach_Group = fn_vbs_editor_group_attach;
_func_COC_Group_OnCatChanged = fn_vbs_editor_group_onCatChanged;
_func_COC_Group_OnTypeChanged = fn_vbs_editor_group_onTypeChanged;
_func_COC_Group_OnNewCatChanged = fn_vbs_editor_group_onNewCatChanged;
_func_COC_Group_OnNewTypeChanged = fn_vbs_editor_group_onNewTypeChanged;
_func_COC_Group_OnCreateInit = fn_vbs_editor_group_createOnInit;
_func_COC_Group_Selected = fn_vbs_editor_group_groupSelected;
_func_COC_SubTeam_Join = fn_vbs_editor_subteam_join;
_func_COC_Waypoint_Assign = fn_vbs_editor_waypoint_assign;
_func_COC_Waypoint_Update = fn_vbs_editor_waypoint_update;
_func_COC_Waypoint_Draw = fn_vbs_editor_waypoint_draw;
_func_COC_Waypoint_Delete = fn_vbs_editor_waypoint_delete;
_func_COC_Waypoint_Move = fn_vbs_editor_waypoint_move;
_func_COC_Waypoint_Load_Branched = fn_vbs_editor_waypoint_loadBranched;
_func_COC_Waypoint_Find_Config = fn_vbs_editor_waypoint_findConfigEntry;
_func_COC_Marker_Create = fn_vbs_editor_marker_create;
_func_COC_Marker_Update = fn_vbs_editor_marker_update;
_func_COC_Marker_SetDrawIcons = fn_vbs_editor_marker_setDrawIcons;
_func_COC_Marker_DlgChanged = fn_vbs_editor_marker_dlgChanged;
_func_COC_Marker_Tactical_Create = fn_vbs_editor_marker_tactical_create;
_func_COC_Marker_Tactical_Update = fn_vbs_editor_marker_tactical_update;
_func_COC_Marker_Tactical_SetDrawIcons = fn_vbs_editor_marker_tactical_setDrawIcons;
_getCrew = fn_vbs_editor_vehicle_getCrew;
_func_COC_Vehicle_Create = fn_vbs_editor_vehicle_create;
_func_COC_Vehicle_Update = fn_vbs_editor_vehicle_update;
_func_COC_Vehicle_Occupy = fn_vbs_editor_vehicle_occupy;
_func_COC_Vehicle_Delete = fn_vbs_editor_vehicle_delete;
_func_COC_Vehicle_UnJoin = fn_vbs_editor_vehicle_unJoinGroup;
_func_COC_Vehicle_GetInEH = fn_vbs_editor_vehicle_getInEH;
_func_COC_Vehicle_GetOutEH = fn_vbs_editor_vehicle_getOutEH;
_func_COC_Vehicle_OnTypeChanged = fn_vbs_editor_vehicle_onTypeChanged;
_func_COC_Vehicle_UpdatePlayability = fn_vbs_editor_vehicle_updatePlayability;
_func_COC_Import_Vehicle = fn_vbs_editor_vehicle_import;
_func_COC_Vehicle_Set_Arcs = fn_vbs_editor_vehicle_setArcs;
_func_COC_Trigger_SetDisplayName = fn_vbs_editor_trigger_setDisplayName;
_func_COC_Trigger_Create = fn_vbs_editor_trigger_create;
_func_COC_IED_Create = fn_vbs_editor_IED_create;
_func_COC_Set_Display_Names = fn_vbs_editor_setDisplayNames;
_func_COC_Set_Color = fn_vbs_editor_setColor;
_func_COC_PlaceObjOnObj = fn_vbs_editor_placeObjOnObj;
_func_COC_Draw_Distance = fn_vbs_editor_distance_draw;
_func_COC_LookAt_Create = fn_vbs_editor_lookAt_create;
private["_allWaypoints"];

_unit_177 = unit_177;
_marker_70 = (["_marker_70","m0_23","1-1-C-5","TacticalMarker","","ColorBlue",[20, 20],0,[3690.29419, 1845.23889, 122.08824],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_49"]) call fn_vbs_editor_marker_tactical_create;

_unit_68 = unit_68;
_marker_25 = (["_marker_25","m0_8","1-1-A-8","TacticalMarker","","ColorBlue",[20, 20],0,[3619.05371, 2125.19873, 129.12490],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_18"]) call fn_vbs_editor_marker_tactical_create;

_unit_183 = unit_183;
_marker_73 = (["_marker_73","m0_24","1-1-C-6","TacticalMarker","","ColorBlue",[20, 20],0,[3676.77515, 1819.65173, 122.15831],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_51"]) call fn_vbs_editor_marker_tactical_create;

_unit_189 = unit_189;
_marker_76 = (["_marker_76","m0_25","1-1-C-7","TacticalMarker","","ColorBlue",[20, 20],0,[3693.20728, 1760.66541, 122.37782],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_53"]) call fn_vbs_editor_marker_tactical_create;

_unit_24 = unit_24;
_marker_9 = (["_marker_9","m0_4","1-1-A-4","TacticalMarker","","ColorBlue",[20, 20],0,[3601.47705, 2136.93042, 130.24161],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_7"]) call fn_vbs_editor_marker_tactical_create;

_unit_213 = unit_213;
_marker_81 = (["_marker_81","m0_27","1-1-C-9","TacticalMarker","","ColorBlue",[20, 20],0,[3657.61768, 2084.38037, 125.63745],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Infantry","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_57"]) call fn_vbs_editor_marker_tactical_create;

_unit_249 = unit_249;
_marker_87 = (["_marker_87","m0_29","1-1-D-2","TacticalMarker","","ColorBlue",[20, 20],0,[3711.46558, 1898.03308, 122.33281],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Infantry","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_61"]) call fn_vbs_editor_marker_tactical_create;

_unit_267 = unit_267;
_marker_90 = (["_marker_90","m0_30","1-1-D-3","TacticalMarker","","ColorBlue",[20, 20],0,[3713.13965, 1808.09973, 130.25418],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Infantry","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_63"]) call fn_vbs_editor_marker_tactical_create;

_unit_285 = unit_285;
_marker_93 = (["_marker_93","m0_31","1-1-D-4","TacticalMarker","","ColorBlue",[20, 20],0,[3597.60352, 2168.00195, 130.86940],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Infantry","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_65"]) call fn_vbs_editor_marker_tactical_create;

_unit_32 = unit_32;
_marker_12 = (["_marker_12","m0_5","1-1-A-5","TacticalMarker","","ColorBlue",[20, 20],0,[3585.74731, 2142.84204, 130.95148],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_9"]) call fn_vbs_editor_marker_tactical_create;

_unit_405 = unit_405;
_marker_98 = (["_marker_98","m0_26","1-1-E-7","TacticalMarker","","ColorRed",[20, 20],0,[3414.52002, 1724.05176, 121.43889],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_70"]) call fn_vbs_editor_marker_tactical_create;

_unit_76 = unit_76;
_marker_28 = (["_marker_28","m0_9","1-1-A-9","TacticalMarker","","ColorBlue",[20, 20],0,[3626.95605, 2069.19458, 126.87406],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_20"]) call fn_vbs_editor_marker_tactical_create;

_unit_411 = unit_411;
_marker_101 = (["_marker_101","m0_33","1-1-E-8","TacticalMarker","","ColorRed",[20, 20],0,[3410.40967, 1739.59924, 121.44267],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_72"]) call fn_vbs_editor_marker_tactical_create;

_unit_84 = unit_84;
_marker_31 = (["_marker_31","m0_10","1-1-B-1","TacticalMarker","","ColorBlue",[20, 20],0,[3617.01074, 1970.81616, 124.11953],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_22"]) call fn_vbs_editor_marker_tactical_create;

_unit_8 = unit_8;
_marker_3 = (["_marker_3","m0_2","1-1-A-2","TacticalMarker","","ColorBlue",[20, 20],0,[3598.26929, 2097.40625, 129.44910],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_3"]) call fn_vbs_editor_marker_tactical_create;

_unit_92 = unit_92;
_marker_34 = (["_marker_34","m0_11","1-1-B-2","TacticalMarker","","ColorBlue",[20, 20],0,[3637.44678, 1935.89746, 122.42087],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_24"]) call fn_vbs_editor_marker_tactical_create;

_unit_420 = unit_420;
_marker_106 = (["_marker_106","m0_34","1-1-F-2","TacticalMarker","","ColorRed",[20, 20],0,[3344.76318, 1931.05237, 124.91278],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_75"]) call fn_vbs_editor_marker_tactical_create;

_unit_423 = unit_423;
_marker_108 = (["_marker_108","m0_35","1-1-F-3","TacticalMarker","","ColorRed",[20, 20],0,[3340.65283, 1946.59985, 124.98562],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_76"]) call fn_vbs_editor_marker_tactical_create;

_unit_432 = unit_432;
_marker_112 = (["_marker_112","m0_36","1-1-F-4","TacticalMarker","","ColorRed",[20, 20],0,[3306.28662, 2011.68738, 124.87790],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_79"]) call fn_vbs_editor_marker_tactical_create;

_unit_435 = unit_435;
_marker_114 = (["_marker_114","m0_37","1-1-F-5","TacticalMarker","","ColorRed",[20, 20],0,[3302.17651, 2027.23486, 124.82298],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_80"]) call fn_vbs_editor_marker_tactical_create;

_unit_100 = unit_100;
_marker_37 = (["_marker_37","m0_12","1-1-B-3","TacticalMarker","","ColorBlue",[20, 20],0,[3659.93262, 1870.79895, 122.04595],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_26"]) call fn_vbs_editor_marker_tactical_create;

_unit_40 = unit_40;
_marker_15 = (["_marker_15","m0_6","1-1-A-6","TacticalMarker","","ColorBlue",[20, 20],0,[3606.26587, 2054.66675, 128.02440],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_11"]) call fn_vbs_editor_marker_tactical_create;

_unit_108 = unit_108;
_marker_40 = (["_marker_40","m0_13","1-1-B-4","TacticalMarker","","ColorBlue",[20, 20],0,[3672.14624, 1805.40930, 122.21287],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_28"]) call fn_vbs_editor_marker_tactical_create;

_unit_456 = unit_456;
_marker_124 = (["_marker_124","m0_40","1-1-F-8","TacticalMarker","","ColorRed",[20, 20],0,[3356.95654, 1799.95239, 122.82340],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_87"]) call fn_vbs_editor_marker_tactical_create;

_unit_459 = unit_459;
_marker_126 = (["_marker_126","m0_41","1-1-F-9","TacticalMarker","","ColorRed",[20, 20],0,[3352.84619, 1815.49976, 122.94287],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_88"]) call fn_vbs_editor_marker_tactical_create;

_unit_468 = unit_468;
_marker_130 = (["_marker_130","m0_42","1-1-G-1","TacticalMarker","","ColorRed",[20, 20],0,[3330.56714, 1858.72607, 123.81207],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_91"]) call fn_vbs_editor_marker_tactical_create;

_unit_471 = unit_471;
_marker_132 = (["_marker_132","m0_43","1-1-G-2","TacticalMarker","","ColorRed",[20, 20],0,[3328.61371, 1889.68250, 123.94840],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_92"]) call fn_vbs_editor_marker_tactical_create;

_unit_474 = unit_474;
_marker_133 = (["_marker_133","m0_44","1-1-H-4","TacticalMarker","","ColorRed",[20, 20],0,[3329.19946, 1985.89758, 125.20768],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\H_Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_93"]) call fn_vbs_editor_marker_tactical_create;

_unit_484 = unit_484;
_marker_136 = (["_marker_136","m0_45","1-1-H-5","TacticalMarker","","ColorRed",[20, 20],0,[3357.23389, 1875.70068, 123.84525],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\H_Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_95"]) call fn_vbs_editor_marker_tactical_create;

_unit_494 = unit_494;
_marker_139 = (["_marker_139","m0_46","1-1-H-6","TacticalMarker","","ColorRed",[20, 20],0,[3367.18750, 1845.48169, 123.44659],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\H_Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_97"]) call fn_vbs_editor_marker_tactical_create;

_unit_504 = unit_504;
_marker_142 = (["_marker_142","m0_47","1-1-H-7","TacticalMarker","","ColorRed",[20, 20],0,[3410.36426, 1764.32861, 121.77481],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\H_Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_99"]) call fn_vbs_editor_marker_tactical_create;

_unit_132 = unit_132;
_marker_48 = (["_marker_48","m0_16","1-1-B-7","TacticalMarker","","ColorBlue",[20, 20],0,[3558.65039, 2158.40234, 131.46406],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_34"]) call fn_vbs_editor_marker_tactical_create;

_unit_514 = unit_514;
_marker_145 = (["_marker_145","m0_48","1-1-H-8","TacticalMarker","","ColorRed",[20, 20],0,[3424.52539, 1742.41980, 121.51279],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\H_Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_101"]) call fn_vbs_editor_marker_tactical_create;

_unit_16 = unit_16;
_marker_6 = (["_marker_6","m0_3","1-1-A-3","TacticalMarker","","ColorBlue",[20, 20],0,[3624.66138, 2104.21680, 128.12160],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_5"]) call fn_vbs_editor_marker_tactical_create;

_unit_48 = unit_48;
_marker_18 = (["_marker_18","m0_7","1-1-A-7","TacticalMarker","","ColorBlue",[20, 20],0,[3630.14233, 2047.94873, 126.26207],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_13"]) call fn_vbs_editor_marker_tactical_create;

_unit_349 = unit_349;
_marker_150 = (["_marker_150","m0_50","1-1-C-1","TacticalMarker","","ColorRed",[20, 20],0,[3235.29224, 2082.32373, 124.52215],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\H_Infantry","\vbs2\ui\tacticmarkers\data\Modifiers\S_Section","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_105"]) call fn_vbs_editor_marker_tactical_create;

_unit_541 = unit_541;
_marker_154 = (["_marker_154","m0_51","1-1-C-2","TacticalMarker","","ColorRed",[20, 20],0,[3245.47900, 2013.60071, 123.96885],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\H_Infantry","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_107"]) call fn_vbs_editor_marker_tactical_create;

_unit_147 = unit_147;
_marker_55 = (["_marker_55","m0_18","1-1-B-9","TacticalMarker","","ColorBlue",[20, 20],0,[3624.85156, 2146.72510, 129.56506],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_39"]) call fn_vbs_editor_marker_tactical_create;

_unit_562 = unit_562;
_marker_157 = (["_marker_157","m0_52","1-1-B-4","TacticalMarker","","ColorRed",[20, 20],0,[3365.16675, 1731.77295, 121.54615],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\H_Infantry","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_110"]) call fn_vbs_editor_marker_tactical_create;

_unit_576 = unit_576;
_marker_159 = (["_marker_159","m0_53","1-1-B-5","TacticalMarker","","ColorRed",[20, 20],0,[2055.69411, 1641.93509, 120.21119],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_112"]) call fn_vbs_editor_marker_tactical_create;

_unit_153 = unit_153;
_marker_58 = (["_marker_58","m0_19","1-1-C-1","TacticalMarker","","ColorBlue",[20, 20],0,[3649.64429, 2051.35669, 125.42984],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_41"]) call fn_vbs_editor_marker_tactical_create;

_unit_584 = unit_584;
_marker_166 = (["_marker_166","m0_55","1-1-B-7","TacticalMarker","","ColorRed",[20, 20],0,[2026.20935, 1626.12646, 120.73114],"playerSide == east","\vbs2\ui\tacticmarkers\data\Frames\Hostile_Surface","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_116"]) call fn_vbs_editor_marker_tactical_create;

_unit_159 = unit_159;
_marker_61 = (["_marker_61","m0_20","1-1-C-2","TacticalMarker","","ColorBlue",[20, 20],0,[3654.52393, 1953.05359, 122.75114],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_43"]) call fn_vbs_editor_marker_tactical_create;

_unit_592 = unit_592;
_marker_170 = (["_marker_170","m0_57","1-1-D-6","TacticalMarker","","ColorBlue",[20, 20],0,[4350.19990, 2540.31837, 119.88749],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_120"]) call fn_vbs_editor_marker_tactical_create;

_unit_165 = unit_165;
_marker_64 = (["_marker_64","m0_21","1-1-C-3","TacticalMarker","","ColorBlue",[20, 20],0,[3675.70190, 1911.02258, 122.08928],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_45"]) call fn_vbs_editor_marker_tactical_create;

_unit_596 = unit_596;
_marker_174 = (["_marker_174","m0_58","1-1-D-7","TacticalMarker","","ColorBlue",[20, 20],0,[4384.44922, 2543.56543, 120.18065],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_122"]) call fn_vbs_editor_marker_tactical_create;

_unit_600 = unit_600;
_marker_177 = (["_marker_177","m0_59","1-1-D-8","TacticalMarker","","ColorBlue",[20, 20],0,[4356.78516, 2579.23901, 120.22168],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_124"]) call fn_vbs_editor_marker_tactical_create;

_unit_171 = unit_171;
_marker_67 = (["_marker_67","m0_22","1-1-C-4","TacticalMarker","","ColorBlue",[20, 20],0,[3682.65552, 1883.77722, 122.17825],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Mech_Inf","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_47"]) call fn_vbs_editor_marker_tactical_create;

_unit_604 = unit_604;
_marker_180 = (["_marker_180","m0_60","1-1-D-9","TacticalMarker","","ColorBlue",[20, 20],0,[4386.11865, 2573.21021, 120.62770],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_126"]) call fn_vbs_editor_marker_tactical_create;

_unit_0 = unit_0;
_marker_0 = (["_marker_0","m0_1","1-1-A-1","TacticalMarker","","ColorBlue",[20, 20],0,[3592.86011, 2124.77197, 130.27219],"playerSide == west","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Armour","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true,1] + ["_group_1"]) call fn_vbs_editor_marker_tactical_create;

}
