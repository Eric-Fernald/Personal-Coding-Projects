activateAddons [ 
  "vbs2_vehicles_land_tracked_m1abrams_usarmy_m1a2",
  "vbs2_vehicles_land_tracked_uvz_t72_opfor_t72",
  "vbs2_vehicles_land_tracked_bae_m2_us_m2a3",
  "vbs2_vehicles_land_tracked_kmzap_bmp3_zz_bmp3",
  "vbs2_vehicles_air_helicopters_mil_mi24_zz_mi24",
  "vbs2_vehicles_air_helicopters_boeing_ah64_us_ah64d",
  "vbs2_people_us_army_rifleman_ocp",
  "vbs2_people_wp_wp_rifleman",
  "customer_tboc_invisible_spectator",
  "vbs2_editor",
  "vbs_systems_modular_artillery_strike",
  "vbs2_people_us_army_rifleman_ucp",
  "vbs2_people_us_army_pilot_heli",
  "cabuildings"
];

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

_group_3 = ["_group_3","1-1-A-2",[3598.26929, 2097.40625, 129.44910],"WEST","","","",0,[],"",false,false,"m0_2",""] call fn_vbs_editor_group_create;

_group_5 = ["_group_5","1-1-A-3",[3624.66138, 2104.21680, 128.12160],"WEST","","","",0,[],"",false,false,"m0_3",""] call fn_vbs_editor_group_create;

_group_7 = ["_group_7","1-1-A-4",[3601.47705, 2136.93042, 130.24161],"WEST","","","",0,[],"",false,false,"m0_4",""] call fn_vbs_editor_group_create;

_group_9 = ["_group_9","1-1-A-5",[3585.74731, 2142.84204, 130.95148],"WEST","","","",0,[],"",false,false,"m0_5",""] call fn_vbs_editor_group_create;

_group_11 = ["_group_11","1-1-A-6",[3606.26587, 2054.66675, 128.02440],"WEST","","","",0,[],"",false,false,"m0_6",""] call fn_vbs_editor_group_create;

_group_13 = ["_group_13","1-1-A-7",[3630.14233, 2047.94873, 126.26207],"WEST","","","",0,[],"",false,false,"m0_7",""] call fn_vbs_editor_group_create;

_group_18 = ["_group_18","1-1-A-8",[3619.05371, 2125.19873, 129.12490],"WEST","","","",0,[],"",false,false,"m0_8",""] call fn_vbs_editor_group_create;

_group_20 = ["_group_20","1-1-A-9",[3626.95605, 2069.19458, 126.87406],"WEST","","","",0,[],"",false,false,"m0_9",""] call fn_vbs_editor_group_create;

_group_22 = ["_group_22","1-1-B-1",[3617.01074, 1970.81616, 124.11953],"WEST","","","",0,[],"",false,false,"m0_10",""] call fn_vbs_editor_group_create;

_group_24 = ["_group_24","1-1-B-2",[3637.44678, 1935.89746, 122.42087],"WEST","","","",0,[],"",false,false,"m0_11",""] call fn_vbs_editor_group_create;

_group_26 = ["_group_26","1-1-B-3",[3659.93262, 1870.79895, 122.04595],"WEST","","","",0,[],"",false,false,"m0_12",""] call fn_vbs_editor_group_create;

_group_28 = ["_group_28","1-1-B-4",[3672.14624, 1805.40930, 122.21287],"WEST","","","",0,[],"",false,false,"m0_13",""] call fn_vbs_editor_group_create;

_group_34 = ["_group_34","1-1-B-7",[3558.65039, 2158.40234, 131.46406],"WEST","","","",0,[],"",false,false,"m0_16",""] call fn_vbs_editor_group_create;

_group_39 = ["_group_39","1-1-B-9",[3624.85156, 2146.72510, 129.56506],"WEST","","","",0,[],"",false,false,"m0_18",""] call fn_vbs_editor_group_create;

_group_41 = ["_group_41","1-1-C-1",[3649.64429, 2051.35669, 125.42984],"WEST","","","",0,[],"",false,false,"m0_19",""] call fn_vbs_editor_group_create;

_group_43 = ["_group_43","1-1-C-2",[3654.52393, 1953.05359, 122.75114],"WEST","","","",0,[],"",false,false,"m0_20",""] call fn_vbs_editor_group_create;

_group_45 = ["_group_45","1-1-C-3",[3675.70190, 1911.02258, 122.08928],"WEST","","","",0,[],"",false,false,"m0_21",""] call fn_vbs_editor_group_create;

_group_47 = ["_group_47","1-1-C-4",[3682.65552, 1883.77722, 122.17825],"WEST","","","",0,[],"",false,false,"m0_22",""] call fn_vbs_editor_group_create;

_group_49 = ["_group_49","1-1-C-5",[3690.29419, 1845.23889, 122.08824],"WEST","","","",0,[],"",false,false,"m0_23",""] call fn_vbs_editor_group_create;

_group_51 = ["_group_51","1-1-C-6",[3676.77515, 1819.65173, 122.15831],"WEST","","","",0,[],"",false,false,"m0_24",""] call fn_vbs_editor_group_create;

_group_53 = ["_group_53","1-1-C-7",[3693.20728, 1760.66541, 122.37782],"WEST","","","",0,[],"",false,false,"m0_25",""] call fn_vbs_editor_group_create;

_group_57 = ["_group_57","1-1-C-9",[3657.61768, 2084.38037, 125.63745],"west","west","VBS2_US_ARMY_OCP_IOTV","weaponsSquad",0,[],"",false,false,"m0_27","Wedge"] call fn_vbs_editor_group_create;

_group_61 = ["_group_61","1-1-D-2",[3711.46558, 1898.03308, 122.33281],"west","west","VBS2_US_ARMY_OCP_IOTV","weaponsSquad",0,[],"",false,false,"m0_29","Wedge"] call fn_vbs_editor_group_create;

_group_63 = ["_group_63","1-1-D-3",[3713.13965, 1808.09973, 130.25418],"west","west","VBS2_US_ARMY_OCP_IOTV","weaponsSquad",0,[],"",false,false,"m0_30","Wedge"] call fn_vbs_editor_group_create;

_group_65 = ["_group_65","1-1-D-4",[3597.60352, 2168.00195, 130.86940],"west","west","VBS2_US_ARMY_OCP_IOTV","weaponsSquad",0,[],"",false,false,"m0_31","Wedge"] call fn_vbs_editor_group_create;

_group_70 = ["_group_70","1-1-E-7",[3414.52002, 1724.05176, 121.43889],"EAST","","","",0,[],"",false,false,"m0_26",""] call fn_vbs_editor_group_create;

_group_72 = ["_group_72","1-1-E-8",[3410.40967, 1739.59924, 121.44267],"EAST","","","",0,[],"",false,false,"m0_33",""] call fn_vbs_editor_group_create;

_group_75 = ["_group_75","1-1-F-2",[3344.76318, 1931.05237, 124.91278],"EAST","","","",0,[],"",false,false,"m0_34",""] call fn_vbs_editor_group_create;

_group_76 = ["_group_76","1-1-F-3",[3340.65283, 1946.59985, 124.98562],"EAST","","","",0,[],"",false,false,"m0_35",""] call fn_vbs_editor_group_create;

_group_79 = ["_group_79","1-1-F-4",[3306.28662, 2011.68738, 124.87790],"EAST","","","",0,[],"",false,false,"m0_36",""] call fn_vbs_editor_group_create;

_group_80 = ["_group_80","1-1-F-5",[3302.17651, 2027.23486, 124.82298],"EAST","","","",0,[],"",false,false,"m0_37",""] call fn_vbs_editor_group_create;

_group_87 = ["_group_87","1-1-F-8",[3356.95654, 1799.95239, 122.82340],"EAST","","","",0,[],"",false,false,"m0_40",""] call fn_vbs_editor_group_create;

_group_88 = ["_group_88","1-1-F-9",[3352.84619, 1815.49976, 122.94287],"EAST","","","",0,[],"",false,false,"m0_41",""] call fn_vbs_editor_group_create;

_group_91 = ["_group_91","1-1-G-1",[3330.56714, 1858.72607, 123.81207],"EAST","","","",0,[],"",false,false,"m0_42",""] call fn_vbs_editor_group_create;

_group_92 = ["_group_92","1-1-G-2",[3328.61371, 1889.68250, 123.94840],"EAST","","","",0,[],"",false,false,"m0_43",""] call fn_vbs_editor_group_create;

_group_93 = ["_group_93","1-1-H-4",[3329.19946, 1985.89758, 125.20768],"EAST","","","",0,[],"",false,false,"m0_44",""] call fn_vbs_editor_group_create;

_group_95 = ["_group_95","1-1-H-5",[3357.23389, 1875.70068, 123.84525],"EAST","","","",0,[],"",false,false,"m0_45",""] call fn_vbs_editor_group_create;

_group_97 = ["_group_97","1-1-H-6",[3367.18750, 1845.48169, 123.44659],"EAST","","","",0,[],"",false,false,"m0_46",""] call fn_vbs_editor_group_create;

_group_99 = ["_group_99","1-1-H-7",[3410.36426, 1764.32861, 121.77481],"EAST","","","",0,[],"",false,false,"m0_47",""] call fn_vbs_editor_group_create;

_group_101 = ["_group_101","1-1-H-8",[3424.52539, 1742.41980, 121.51279],"EAST","","","",0,[],"",false,false,"m0_48",""] call fn_vbs_editor_group_create;

_group_1 = ["_group_1","1-1-A-1",[3592.86011, 2124.77197, 130.27219],"WEST","","","",0,[],"_group_57",false,false,"m0_1",""] call fn_vbs_editor_group_create;

_group_105 = ["_group_105","1-1-C-1",[3235.29224, 2082.32373, 124.52215],"EAST","","","",0,[],"",false,false,"m0_50",""] call fn_vbs_editor_group_create;

_group_107 = ["_group_107","1-1-C-2",[3245.47900, 2013.60071, 123.96885],"EAST","","","",0,[],"",false,false,"m0_51",""] call fn_vbs_editor_group_create;

_group_110 = ["_group_110","1-1-B-4",[3365.16675, 1731.77295, 121.54615],"EAST","","","",0,[],"",false,false,"m0_52",""] call fn_vbs_editor_group_create;

_group_112 = ["_group_112","1-1-B-5",[2055.69411, 1641.93509, 120.21119],"EAST","","","",0,[],"",false,false,"m0_53",""] call fn_vbs_editor_group_create;

_group_116 = ["_group_116","1-1-B-7",[2026.20935, 1626.12646, 120.73114],"EAST","","","",0,[],"",false,false,"m0_55",""] call fn_vbs_editor_group_create;

_group_120 = ["_group_120","1-1-D-6",[4350.19990, 2540.31837, 119.88749],"WEST","","","",0,[],"",false,false,"m0_57",""] call fn_vbs_editor_group_create;

_group_122 = ["_group_122","1-1-D-7",[4384.44922, 2543.56543, 120.18065],"WEST","","","",0,[],"",false,false,"m0_58",""] call fn_vbs_editor_group_create;

_group_124 = ["_group_124","1-1-D-8",[4356.78516, 2579.23901, 120.22168],"WEST","","","",0,[],"",false,false,"m0_59",""] call fn_vbs_editor_group_create;

_group_126 = ["_group_126","1-1-D-9",[4386.11865, 2573.21021, 120.62770],"WEST","","","",0,[],"",false,false,"m0_60",""] call fn_vbs_editor_group_create;

_azimuth = -100.25;
if (false) then
{
	_azimuth = 0;
};
_vehicle_17 = [
 '_vehicle_17', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3619.05371, 2125.19873, 129.12490], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_18', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98247,-0.17764,0.056479], [0.062067,-0.026053,0.99773], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_vehicle_2 = [
 '_vehicle_2', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3598.26929, 2097.40625, 129.44910], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_3', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98347,-0.17564,0.044002], [0.049263,-0.025702,0.99846], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_vehicle_59 = [
 '_vehicle_59', true, "vbs_op_army_t72_grn_x", [3344.76318, 1931.05237, 124.91278], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_75', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.98683,0.16179,0], [0,0,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 80.693;
if (false) then
{
	_azimuth = 0;
};
_vehicle_60 = [
 '_vehicle_60', true, "vbs_op_army_t72_grn_x", [3340.65283, 1946.59985, 124.98562], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_76', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.9868,0.16172,0.0082922], [-0.0068344,-0.0095688,0.99993], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.21;
if (false) then
{
	_azimuth = 0;
};
_vehicle_19 = [
 '_vehicle_19', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3626.95605, 2069.19458, 126.87406], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_20', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.9836,-0.17718,0.033672], [0.040569,-0.035449,0.99855], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.22;
if (false) then
{
	_azimuth = 0;
};
_vehicle_21 = [
 '_vehicle_21', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3617.01074, 1970.81616, 124.11953], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_22', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98383,-0.17738,0.024671], [0.035547,-0.058401,0.99766], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 80.681;
if (false) then
{
	_azimuth = 0;
};
_vehicle_63 = [
 '_vehicle_63', true, "vbs_op_army_t72_grn_x", [3306.28662, 2011.68738, 124.87790], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_79', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.98638,0.16186,0.029313], [-0.029689,-9.5075e-005,0.99956], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_vehicle_64 = [
 '_vehicle_64', true, "vbs_op_army_t72_grn_x", [3302.17651, 2027.23486, 124.82298], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_80', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.98682,0.16179,0.0018038], [-0.0019106,0.00050462,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_vehicle_23 = [
 '_vehicle_23', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3637.44678, 1935.89746, 122.42087], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_24', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98442,-0.17582,-0.0031273], [0.00020919,-0.018955,0.99982], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_vehicle_25 = [
 '_vehicle_25', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3659.93262, 1870.79895, 122.04595], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_26', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98441,-0.17588,0], [0,0,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_vehicle_27 = [
 '_vehicle_27', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3672.14624, 1805.40930, 122.21287], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_28', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98426,-0.17593,-0.016796], [-0.017257,0.0010919,0.99985], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_vehicle_71 = [
 '_vehicle_71', true, "vbs_op_army_t72_grn_x", [3356.95654, 1799.95239, 122.82340], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_87', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.98683,0.16179,0], [0,0,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 80.69;
if (false) then
{
	_azimuth = 0;
};
_vehicle_72 = [
 '_vehicle_72', true, "vbs_op_army_t72_grn_x", [3352.84619, 1815.49976, 122.94287], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_88', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.98683,0.16178,0.0015681], [-3.412e-008,-0.0096921,0.99995], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_vehicle_33 = [
 '_vehicle_33', true, "VBS2_US_ARMY_M2A3_W_X", [3558.65039, 2158.40234, 131.46406], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_34', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.96483,-0.2627,0.0099805], [0.012415,-0.0076091,0.99989], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_vehicle_75 = [
 '_vehicle_75', true, "vbs_op_army_t72_grn_x", [3330.56714, 1858.72607, 123.81207], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_91', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.98683,0.16179,0], [0,0,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 80.688;
if (false) then
{
	_azimuth = 0;
};
_vehicle_76 = [
 '_vehicle_76', true, "vbs_op_army_t72_grn_x", [3328.61371, 1889.68250, 123.94840], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_92', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.9868,0.16181,-0.0061133], [0.0064784,-0.0017286,0.99998], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 62.128;
if (false) then
{
	_azimuth = 0;
};
_vehicle_77 = [
 '_vehicle_77', true, "VBS2_OPFOR_Army_BMP3_W_X", [3329.19946, 1985.89758, 125.20768], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_93', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.8838,0.4674,0.020969], [-0.019437,-0.0080998,0.99978], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.19;
if (false) then
{
	_azimuth = 0;
};
_vehicle_4 = [
 '_vehicle_4', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3624.66138, 2104.21680, 128.12160], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_5', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98233,-0.17666,0.061746], [0.068447,-0.032083,0.99714], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 62.132;
if (false) then
{
	_azimuth = 0;
};
_vehicle_79 = [
 '_vehicle_79', true, "VBS2_OPFOR_Army_BMP3_W_X", [3357.23389, 1875.70068, 123.84525], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_95', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.88396,0.4674,0.012438], [-0.0083235,-0.010867,0.99991], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -105.3;
if (false) then
{
	_azimuth = 0;
};
_vehicle_38 = [
 '_vehicle_38', true, "VBS2_US_ARMY_M2A3_W_X", [3624.85156, 2146.72510, 129.56506], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_39', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.96406,-0.26375,0.031982], [0.041031,-0.028872,0.99874], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 62.139;
if (false) then
{
	_azimuth = 0;
};
_vehicle_81 = [
 '_vehicle_81', true, "VBS2_OPFOR_Army_BMP3_W_X", [3367.18750, 1845.48169, 123.44659], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_97', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.88404,0.46731,0.0095809], [0.00057062,-0.021577,0.99977], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -105.34;
if (false) then
{
	_azimuth = 0;
};
_vehicle_40 = [
 '_vehicle_40', true, "VBS2_US_ARMY_M2A3_W_X", [3649.64429, 2051.35669, 125.42984], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_41', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.96277,-0.26411,0.057652], [0.064374,-0.016861,0.99778], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 62.13;
if (false) then
{
	_azimuth = 0;
};
_vehicle_83 = [
 '_vehicle_83', true, "VBS2_OPFOR_Army_BMP3_W_X", [3410.36426, 1764.32861, 121.77481], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_99', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.88401,0.46746,0.0035214], [0.0026998,-0.012638,0.99992], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -105.22;
if (false) then
{
	_azimuth = 0;
};
_vehicle_42 = [
 '_vehicle_42', true, "VBS2_US_ARMY_M2A3_W_X", [3654.52393, 1953.05359, 122.75114], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_43', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.9649,-0.26258,-0.0053708], [0.0004741,-0.022191,0.99975], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 62.119;
if (false) then
{
	_azimuth = 0;
};
_vehicle_85 = [
 '_vehicle_85', true, "VBS2_OPFOR_Army_BMP3_W_X", [3424.52539, 1742.41980, 121.51279], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_101', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.8838,0.46758,0.016494], [-0.01918,0.00098429,0.99982], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_vehicle_44 = [
 '_vehicle_44', true, "VBS2_US_ARMY_M2A3_W_X", [3675.70190, 1911.02258, 122.08928], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_45', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.96488,-0.26269,0], [0,0,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.04;
if (false) then
{
	_azimuth = 0;
};
_vehicle_0 = [
 '_vehicle_0', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3592.86011, 2124.77197, 130.27219], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 10, '_group_1', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98376,-0.17417,0.043424], [0.047133,-0.017216,0.99874], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_vehicle_46 = [
 '_vehicle_46', true, "VBS2_US_ARMY_M2A3_W_X", [3682.65552, 1883.77722, 122.17825], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_47', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.96485,-0.26274,-0.0053128], [-0.0076072,0.0077161,0.99994], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_vehicle_6 = [
 '_vehicle_6', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3601.47705, 2136.93042, 130.24161], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_7', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98373,-0.17571,0.037526], [0.044058,-0.033422,0.99847], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_vehicle_89 = [
 '_vehicle_89', true, "vbs2_opfor_army_mil_mi24V_W_X", [2055.69411, 1641.93509, 120.21119], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_112', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0,1,0], [0,0,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_vehicle_48 = [
 '_vehicle_48', true, "VBS2_US_ARMY_M2A3_W_X", [3690.29419, 1845.23889, 122.08824], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_49', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.96488,-0.26269,-0.00068681], [-0.00070736,-1.6347e-005,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_vehicle_50 = [
 '_vehicle_50', true, "VBS2_US_ARMY_M2A3_W_X", [3676.77515, 1819.65173, 122.15831], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_51', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.96489,-0.26261,0.0054143], [0.0010918,0.016603,0.99986], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_vehicle_52 = [
 '_vehicle_52', true, "VBS2_US_ARMY_M2A3_W_X", [3693.20728, 1760.66541, 122.37782], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_53', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.96488,-0.26269,-0.0013032], [-0.000218,-0.0041602,0.99999], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_vehicle_93 = [
 '_vehicle_93', true, "vbs2_opfor_army_mil_mi24V_W_X", [2026.20935, 1626.12646, 120.73114], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_116', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0,1,0], [0,0,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.07;
if (false) then
{
	_azimuth = 0;
};
_vehicle_8 = [
 '_vehicle_8', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3585.74731, 2142.84204, 130.95148], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_9', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98447,-0.17475,0.016982], [0.021291,-0.022812,0.99951], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -0.0016989;
if (false) then
{
	_azimuth = 0;
};
_vehicle_97 = [
 '_vehicle_97', true, "vbs_us_army_ah64d_grn_x", [4350.19990, 2540.31837, 119.88749], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_120', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-2.965e-005,0.99994,0.010808], [-0.0027431,-0.010808,0.99994], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_vehicle_54 = [
 '_vehicle_54', true, "vbs_op_army_t72_grn_x", [3414.52002, 1724.05176, 121.43889], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_70', "", "YELLOW", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.98682,0.16179,0.0042512], [-0.0031878,-0.0068314,0.99997], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.12;
if (false) then
{
	_azimuth = 0;
};
_vehicle_10 = [
 '_vehicle_10', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3606.26587, 2054.66675, 128.02440], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_11', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98379,-0.17557,0.036618], [0.042601,-0.030428,0.99863], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -0.003398;
if (false) then
{
	_azimuth = 0;
};
_vehicle_99 = [
 '_vehicle_99', true, "vbs_us_army_ah64d_grn_x", [4384.44922, 2543.56543, 120.18065], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_122', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-5.9303e-005,0.99994,0.010808], [-0.0027431,-0.010808,0.99994], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -100.09;
if (false) then
{
	_azimuth = 0;
};
_vehicle_12 = [
 '_vehicle_12', true, "VBS2_US_ARMY_M1A2_W_AT_X", [3630.14233, 2047.94873, 126.26207], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_13', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.98305,-0.17493,0.054849], [0.056786,-0.0060829,0.99837], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -0.0017075;
if (false) then
{
	_azimuth = 0;
};
_vehicle_101 = [
 '_vehicle_101', true, "vbs_us_army_ah64d_grn_x", [4356.78516, 2579.23901, 120.22168], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_124', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-2.9802e-005,1,-0.00016335], [0.00091989,0.00016338,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_vehicle_56 = [
 '_vehicle_56', true, "vbs_op_army_t72_grn_x", [3410.40967, 1739.59924, 121.44267], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_72', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [0.98683,0.16179,0.00038407], [-0.00028556,-0.00063215,1], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

_azimuth = -0.012767;
if (false) then
{
	_azimuth = 0;
};
_vehicle_103 = [
 '_vehicle_103', true, "vbs_us_army_ah64d_grn_x", [4386.11865, 2573.21021, 120.62770], [], 0, "CAN_COLLIDE", _azimuth, '',
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, '_group_126', "", "NO CHANGE", "AWARE",
 true, 1, 'on', 'off', [], [], [], [],
 '', "", -1, -1, [], [],
 [-0.00022281,0.99989,0.014599], [-0.013228,-0.014601,0.99981], "FALSE",
 [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
 "", ""
] call fn_vbs_editor_vehicle_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_17";
_strGunner = "_vehicle_17";
_azimuth = -100.25;
if (false) then
{
	_azimuth = 0;
};
_unit_68 = (
[
	"_unit_68", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3619.05371, 2125.19873, 129.12490], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_18", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_18]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_17";
_azimuth = -100.25;
if (false) then
{
	_azimuth = 0;
};
_unit_69 = (
[
	"_unit_69", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3619.05371, 2125.19873, 129.12490], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_18", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_68', 1
] + [_group_18]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_48";
_strGunner = "_vehicle_48";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_177 = (
[
	"_unit_177", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3690.29419, 1845.23889, 122.08824], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_49", "WEST", "M2A3 Bradley Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_49]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_48";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_178 = (
[
	"_unit_178", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3690.29419, 1845.23889, 122.08824], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_49", "WEST", "M2A3 Bradley Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_177', 1
] + [_group_49]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_48";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_179 = (
[
	"_unit_179", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3690.29419, 1845.23889, 122.08824], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_49", "WEST", "M2A3 Bradley Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_177', 1
] + [_group_49]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_6";
_strGunner = "_vehicle_6";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_24 = (
[
	"_unit_24", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3601.47705, 2136.93042, 130.24161], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_7", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_7]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_50";
_strGunner = "_vehicle_50";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_183 = (
[
	"_unit_183", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3676.77515, 1819.65173, 122.15831], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_51", "WEST", "M2A3 Bradley Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_51]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_50";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_184 = (
[
	"_unit_184", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3676.77515, 1819.65173, 122.15831], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_51", "WEST", "M2A3 Bradley Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_183', 1
] + [_group_51]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_50";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_185 = (
[
	"_unit_185", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3676.77515, 1819.65173, 122.15831], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_51", "WEST", "M2A3 Bradley Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_183', 1
] + [_group_51]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_6";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_25 = (
[
	"_unit_25", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3601.47705, 2136.93042, 130.24161], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_7", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_24', 1
] + [_group_7]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_17";
_azimuth = -100.25;
if (false) then
{
	_azimuth = 0;
};
_unit_70 = (
[
	"_unit_70", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3619.05371, 2125.19873, 129.12490], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_18", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_68', 1
] + [_group_18]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_52";
_strGunner = "_vehicle_52";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_189 = (
[
	"_unit_189", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3693.20728, 1760.66541, 122.37782], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_53", "WEST", "M2A3 Bradley Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_53]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_52";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_190 = (
[
	"_unit_190", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3693.20728, 1760.66541, 122.37782], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_53", "WEST", "M2A3 Bradley Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_189', 1
] + [_group_53]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_52";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_191 = (
[
	"_unit_191", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3693.20728, 1760.66541, 122.37782], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_53", "WEST", "M2A3 Bradley Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_189', 1
] + [_group_53]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_213 = (
[
	"_unit_213", true, "VBS2_US_ARMY_Leader_OCP_M_medium_iotv_none_M4RCO", [3657.61768, 2084.38037, 125.63745], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SSG", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_57", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_57]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_214 = (
[
	"_unit_214", true, "VBS2_US_ARMY_MGunner_OCP_M_medium_iotv_none_M240MGO", [3658.28564, 2088.44971, 125.63177], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_57", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_213', 1
] + [_group_57]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_215 = (
[
	"_unit_215", true, "VBS2_US_ARMY_AssistantMGunnerM240_OCP_M_medium_iotv_none_M4CCO", [3658.94336, 2080.47681, 125.64502], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_57", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_213', 1
] + [_group_57]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_216 = (
[
	"_unit_216", true, "VBS2_US_ARMY_MGunner_OCP_M_medium_iotv_none_M240MGO", [3658.95361, 2092.51880, 125.60702], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_57", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_213', 1
] + [_group_57]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_217 = (
[
	"_unit_217", true, "VBS2_US_ARMY_AssistantMGunnerM240_OCP_M_medium_iotv_none_M4CCO", [3660.26831, 2076.57178, 125.64662], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_57", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_213', 1
] + [_group_57]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_218 = (
[
	"_unit_218", true, "VBS2_US_ARMY_ATGunner_OCP_M_medium_iotv_none_M4CCOJavelin", [3659.62158, 2096.58691, 125.59381], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_57", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_213', 1
] + [_group_57]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_219 = (
[
	"_unit_219", true, "VBS2_US_ARMY_ATAmmoBearer_OCP_M_medium_iotv_none_M4CCOJavelin", [3661.59473, 2072.66821, 125.64794], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_57", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_213', 1
] + [_group_57]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_220 = (
[
	"_unit_220", true, "VBS2_US_ARMY_ATGunner_OCP_M_medium_iotv_none_M4CCOJavelin", [3660.28979, 2100.65576, 125.56218], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_57", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_213', 1
] + [_group_57]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_221 = (
[
	"_unit_221", true, "VBS2_US_ARMY_ATAmmoBearer_OCP_M_medium_iotv_none_M4CCOJavelin", [3662.91919, 2068.76343, 125.64741], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_57", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_213', 1
] + [_group_57]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_6";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_26 = (
[
	"_unit_26", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3601.47705, 2136.93042, 130.24161], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_7", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_24', 1
] + [_group_7]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_6";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_27 = (
[
	"_unit_27", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3601.47705, 2136.93042, 130.24161], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_7", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_24', 1
] + [_group_7]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_249 = (
[
	"_unit_249", true, "VBS2_US_ARMY_Leader_OCP_M_medium_iotv_none_M4RCO", [3711.46558, 1898.03308, 122.33281], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SSG", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_61", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_61]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_250 = (
[
	"_unit_250", true, "VBS2_US_ARMY_MGunner_OCP_M_medium_iotv_none_M240MGO", [3712.13354, 1902.10242, 122.32714], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_61", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_249', 1
] + [_group_61]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_251 = (
[
	"_unit_251", true, "VBS2_US_ARMY_AssistantMGunnerM240_OCP_M_medium_iotv_none_M4CCO", [3712.79126, 1894.12952, 122.34040], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_61", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_249', 1
] + [_group_61]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_252 = (
[
	"_unit_252", true, "VBS2_US_ARMY_MGunner_OCP_M_medium_iotv_none_M240MGO", [3712.80151, 1906.17151, 122.30239], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_61", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_249', 1
] + [_group_61]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_253 = (
[
	"_unit_253", true, "VBS2_US_ARMY_AssistantMGunnerM240_OCP_M_medium_iotv_none_M4CCO", [3714.11621, 1890.22449, 122.34198], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_61", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_249', 1
] + [_group_61]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_254 = (
[
	"_unit_254", true, "VBS2_US_ARMY_ATGunner_OCP_M_medium_iotv_none_M4CCOJavelin", [3713.46948, 1910.23962, 122.28918], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_61", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_249', 1
] + [_group_61]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_255 = (
[
	"_unit_255", true, "VBS2_US_ARMY_ATAmmoBearer_OCP_M_medium_iotv_none_M4CCOJavelin", [3715.44263, 1886.32092, 122.34330], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_61", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_249', 1
] + [_group_61]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_256 = (
[
	"_unit_256", true, "VBS2_US_ARMY_ATGunner_OCP_M_medium_iotv_none_M4CCOJavelin", [3714.13770, 1914.30847, 122.25756], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_61", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_249', 1
] + [_group_61]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_257 = (
[
	"_unit_257", true, "VBS2_US_ARMY_ATAmmoBearer_OCP_M_medium_iotv_none_M4CCOJavelin", [3716.76709, 1882.41614, 122.34278], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_61", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_249', 1
] + [_group_61]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_267 = (
[
	"_unit_267", true, "VBS2_US_ARMY_Leader_OCP_M_medium_iotv_none_M4RCO", [3713.13965, 1808.09973, 130.25418], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SSG", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_63", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_63]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_268 = (
[
	"_unit_268", true, "VBS2_US_ARMY_MGunner_OCP_M_medium_iotv_none_M240MGO", [3713.80762, 1812.16907, 130.24850], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_63", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_267', 1
] + [_group_63]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_269 = (
[
	"_unit_269", true, "VBS2_US_ARMY_AssistantMGunnerM240_OCP_M_medium_iotv_none_M4CCO", [3714.46533, 1804.19617, 130.26173], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_63", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_267', 1
] + [_group_63]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_270 = (
[
	"_unit_270", true, "VBS2_US_ARMY_MGunner_OCP_M_medium_iotv_none_M240MGO", [3714.47559, 1816.23816, 130.22375], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_63", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_267', 1
] + [_group_63]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_271 = (
[
	"_unit_271", true, "VBS2_US_ARMY_AssistantMGunnerM240_OCP_M_medium_iotv_none_M4CCO", [3715.79028, 1800.29114, 130.26333], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_63", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_267', 1
] + [_group_63]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_272 = (
[
	"_unit_272", true, "VBS2_US_ARMY_ATGunner_OCP_M_medium_iotv_none_M4CCOJavelin", [3715.14355, 1820.30627, 130.21054], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_63", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_267', 1
] + [_group_63]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_273 = (
[
	"_unit_273", true, "VBS2_US_ARMY_ATAmmoBearer_OCP_M_medium_iotv_none_M4CCOJavelin", [3717.11670, 1796.38757, 130.26466], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_63", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_267', 1
] + [_group_63]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_274 = (
[
	"_unit_274", true, "VBS2_US_ARMY_ATGunner_OCP_M_medium_iotv_none_M4CCOJavelin", [3715.81177, 1824.37512, 130.17889], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_63", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_267', 1
] + [_group_63]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_275 = (
[
	"_unit_275", true, "VBS2_US_ARMY_ATAmmoBearer_OCP_M_medium_iotv_none_M4CCOJavelin", [3718.44116, 1792.48279, 130.26414], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_63", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_267', 1
] + [_group_63]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_17";
_azimuth = -100.25;
if (false) then
{
	_azimuth = 0;
};
_unit_71 = (
[
	"_unit_71", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3619.05371, 2125.19873, 129.12490], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_18", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_68', 1
] + [_group_18]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_285 = (
[
	"_unit_285", true, "VBS2_US_ARMY_Leader_OCP_M_medium_iotv_none_M4RCO", [3597.60352, 2168.00195, 130.86940], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SSG", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_65", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_65]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_286 = (
[
	"_unit_286", true, "VBS2_US_ARMY_MGunner_OCP_M_medium_iotv_none_M240MGO", [3598.27148, 2172.07129, 130.86372], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_65", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_285', 1
] + [_group_65]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_287 = (
[
	"_unit_287", true, "VBS2_US_ARMY_AssistantMGunnerM240_OCP_M_medium_iotv_none_M4CCO", [3598.92920, 2164.09839, 130.87698], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_65", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_285', 1
] + [_group_65]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_288 = (
[
	"_unit_288", true, "VBS2_US_ARMY_MGunner_OCP_M_medium_iotv_none_M240MGO", [3598.93945, 2176.14038, 130.83897], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_65", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_285', 1
] + [_group_65]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_289 = (
[
	"_unit_289", true, "VBS2_US_ARMY_AssistantMGunnerM240_OCP_M_medium_iotv_none_M4CCO", [3600.25415, 2160.19336, 130.87857], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_65", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_285', 1
] + [_group_65]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_290 = (
[
	"_unit_290", true, "VBS2_US_ARMY_ATGunner_OCP_M_medium_iotv_none_M4CCOJavelin", [3599.60742, 2180.20850, 130.82576], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_65", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_285', 1
] + [_group_65]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_291 = (
[
	"_unit_291", true, "VBS2_US_ARMY_ATAmmoBearer_OCP_M_medium_iotv_none_M4CCOJavelin", [3601.58057, 2156.28979, 130.87988], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_65", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_285', 1
] + [_group_65]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_292 = (
[
	"_unit_292", true, "VBS2_US_ARMY_ATGunner_OCP_M_medium_iotv_none_M4CCOJavelin", [3600.27563, 2184.27734, 130.79414], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "SPC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_65", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_285', 1
] + [_group_65]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -94.714;
if (false) then
{
	_azimuth = 0;
};
_unit_293 = (
[
	"_unit_293", true, "VBS2_US_ARMY_ATAmmoBearer_OCP_M_medium_iotv_none_M4CCOJavelin", [3602.90503, 2152.38501, 130.87936], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PFC", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_65", "WEST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_285', 1
] + [_group_65]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_8";
_strGunner = "_vehicle_8";
_azimuth = -100.07;
if (false) then
{
	_azimuth = 0;
};
_unit_32 = (
[
	"_unit_32", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3585.74731, 2142.84204, 130.95148], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_9", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_9]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_8";
_azimuth = -100.07;
if (false) then
{
	_azimuth = 0;
};
_unit_35 = (
[
	"_unit_35", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3585.74731, 2142.84204, 130.95148], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_9", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_32', 1
] + [_group_9]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_8";
_azimuth = -100.07;
if (false) then
{
	_azimuth = 0;
};
_unit_33 = (
[
	"_unit_33", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3585.74731, 2142.84204, 130.95148], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_9", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_32', 1
] + [_group_9]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_8";
_azimuth = -100.07;
if (false) then
{
	_azimuth = 0;
};
_unit_34 = (
[
	"_unit_34", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3585.74731, 2142.84204, 130.95148], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_9", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_32', 1
] + [_group_9]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 73.12;
if (false) then
{
	_azimuth = 0;
};
_unit_349 = (
[
	"_unit_349", true, "vbs2_wp_leader_ak47", [3235.29224, 2082.32373, 124.52215], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_105", "east", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_105]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 74.11;
if (false) then
{
	_azimuth = 0;
};
_unit_350 = (
[
	"_unit_350", true, "vbs2_wp_soldier_ak74", [3232.67700, 2084.41943, 124.52101], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_105", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_349', 1
] + [_group_105]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 75.272;
if (false) then
{
	_azimuth = 0;
};
_unit_351 = (
[
	"_unit_351", true, "vbs2_wp_soldier_ak74", [3228.04272, 2087.65186, 124.47036], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_105", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_349', 1
] + [_group_105]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 75.125;
if (false) then
{
	_azimuth = 0;
};
_unit_352 = (
[
	"_unit_352", true, "vbs2_wp_soldier_at13", [3232.30957, 2076.77515, 124.46714], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_105", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_349', 1
] + [_group_105]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 83.679;
if (false) then
{
	_azimuth = 0;
};
_unit_353 = (
[
	"_unit_353", true, "vbs2_wp_soldier_rpg", [3229.15674, 2072.07690, 124.44336], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_105", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_349', 1
] + [_group_105]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 81.93;
if (false) then
{
	_azimuth = 0;
};
_unit_354 = (
[
	"_unit_354", true, "vbs2_wp_machinegunner_pk", [3225.96460, 2068.17920, 124.42137], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_105", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_349', 1
] + [_group_105]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 79.659;
if (false) then
{
	_azimuth = 0;
};
_unit_355 = (
[
	"_unit_355", true, "vbs2_wp_soldier_rpg", [3222.94800, 2090.29614, 124.40979], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_105", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_349', 1
] + [_group_105]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_19";
_strGunner = "_vehicle_19";
_azimuth = -100.21;
if (false) then
{
	_azimuth = 0;
};
_unit_76 = (
[
	"_unit_76", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3626.95605, 2069.19458, 126.87406], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_20", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_20]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_54";
_strGunner = "_vehicle_54";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_405 = (
[
	"_unit_405", true, "vbs2_wp_AFVcrew", [3414.52002, 1724.05176, 121.43889], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_70", "EAST", "T-72 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_70]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_54";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_406 = (
[
	"_unit_406", true, "vbs2_wp_AFVcrew", [3414.52002, 1724.05176, 121.43889], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_70", "EAST", "T-72 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_405', 1
] + [_group_70]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_19";
_azimuth = -100.21;
if (false) then
{
	_azimuth = 0;
};
_unit_77 = (
[
	"_unit_77", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3626.95605, 2069.19458, 126.87406], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_20", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_76', 1
] + [_group_20]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_54";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_407 = (
[
	"_unit_407", true, "vbs2_wp_AFVcrew", [3414.52002, 1724.05176, 121.43889], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_70", "EAST", "T-72 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_405', 1
] + [_group_70]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_19";
_azimuth = -100.21;
if (false) then
{
	_azimuth = 0;
};
_unit_78 = (
[
	"_unit_78", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3626.95605, 2069.19458, 126.87406], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_20", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_76', 1
] + [_group_20]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_19";
_azimuth = -100.21;
if (false) then
{
	_azimuth = 0;
};
_unit_79 = (
[
	"_unit_79", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3626.95605, 2069.19458, 126.87406], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_20", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_76', 1
] + [_group_20]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_2";
_strGunner = "_vehicle_2";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_8 = (
[
	"_unit_8", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3598.26929, 2097.40625, 129.44910], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_3", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_3]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_21";
_strGunner = "_vehicle_21";
_azimuth = -100.22;
if (false) then
{
	_azimuth = 0;
};
_unit_84 = (
[
	"_unit_84", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3617.01074, 1970.81616, 124.11953], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_22", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_22]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_56";
_strGunner = "_vehicle_56";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_411 = (
[
	"_unit_411", true, "vbs2_wp_AFVcrew", [3410.40967, 1739.59924, 121.44267], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_72", "EAST", "T-72 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_72]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_56";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_412 = (
[
	"_unit_412", true, "vbs2_wp_AFVcrew", [3410.40967, 1739.59924, 121.44267], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_72", "EAST", "T-72 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_411', 1
] + [_group_72]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_56";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_413 = (
[
	"_unit_413", true, "vbs2_wp_AFVcrew", [3410.40967, 1739.59924, 121.44267], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_72", "EAST", "T-72 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_411', 1
] + [_group_72]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_21";
_azimuth = -100.22;
if (false) then
{
	_azimuth = 0;
};
_unit_85 = (
[
	"_unit_85", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3617.01074, 1970.81616, 124.11953], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_22", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_84', 1
] + [_group_22]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_21";
_azimuth = -100.22;
if (false) then
{
	_azimuth = 0;
};
_unit_86 = (
[
	"_unit_86", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3617.01074, 1970.81616, 124.11953], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_22", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_84', 1
] + [_group_22]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_21";
_azimuth = -100.22;
if (false) then
{
	_azimuth = 0;
};
_unit_87 = (
[
	"_unit_87", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3617.01074, 1970.81616, 124.11953], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_22", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_84', 1
] + [_group_22]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_2";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_9 = (
[
	"_unit_9", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3598.26929, 2097.40625, 129.44910], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_3", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_8', 1
] + [_group_3]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_2";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_10 = (
[
	"_unit_10", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3598.26929, 2097.40625, 129.44910], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_3", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_8', 1
] + [_group_3]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_2";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_11 = (
[
	"_unit_11", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3598.26929, 2097.40625, 129.44910], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_3", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_8', 1
] + [_group_3]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_10";
_strGunner = "_vehicle_10";
_azimuth = -100.12;
if (false) then
{
	_azimuth = 0;
};
_unit_40 = (
[
	"_unit_40", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3606.26587, 2054.66675, 128.02440], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_11", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_11]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_23";
_strGunner = "_vehicle_23";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_92 = (
[
	"_unit_92", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3637.44678, 1935.89746, 122.42087], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_24", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_24]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_23";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_93 = (
[
	"_unit_93", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3637.44678, 1935.89746, 122.42087], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_24", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_92', 1
] + [_group_24]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_59";
_strGunner = "_vehicle_59";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_420 = (
[
	"_unit_420", true, "vbs2_wp_AFVcrew", [3344.76318, 1931.05237, 124.91278], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_75", "EAST", "T-72 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_75]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_59";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_421 = (
[
	"_unit_421", true, "vbs2_wp_AFVcrew", [3344.76318, 1931.05237, 124.91278], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_75", "EAST", "T-72 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_420', 1
] + [_group_75]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_59";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_422 = (
[
	"_unit_422", true, "vbs2_wp_AFVcrew", [3344.76318, 1931.05237, 124.91278], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_75", "EAST", "T-72 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_420', 1
] + [_group_75]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_60";
_strGunner = "_vehicle_60";
_azimuth = 80.693;
if (false) then
{
	_azimuth = 0;
};
_unit_423 = (
[
	"_unit_423", true, "vbs2_wp_AFVcrew", [3340.65283, 1946.59985, 124.98562], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_76", "EAST", "T-72 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_76]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_60";
_azimuth = 80.693;
if (false) then
{
	_azimuth = 0;
};
_unit_424 = (
[
	"_unit_424", true, "vbs2_wp_AFVcrew", [3340.65283, 1946.59985, 124.98562], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_76", "EAST", "T-72 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_423', 1
] + [_group_76]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_60";
_azimuth = 80.693;
if (false) then
{
	_azimuth = 0;
};
_unit_425 = (
[
	"_unit_425", true, "vbs2_wp_AFVcrew", [3340.65283, 1946.59985, 124.98562], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_76", "EAST", "T-72 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_423', 1
] + [_group_76]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_23";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_94 = (
[
	"_unit_94", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3637.44678, 1935.89746, 122.42087], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_24", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_92', 1
] + [_group_24]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_23";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_95 = (
[
	"_unit_95", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3637.44678, 1935.89746, 122.42087], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_24", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_92', 1
] + [_group_24]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_10";
_azimuth = -100.12;
if (false) then
{
	_azimuth = 0;
};
_unit_41 = (
[
	"_unit_41", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3606.26587, 2054.66675, 128.02440], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_11", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_40', 1
] + [_group_11]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_25";
_strGunner = "_vehicle_25";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_100 = (
[
	"_unit_100", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3659.93262, 1870.79895, 122.04595], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_26", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_26]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_63";
_strGunner = "_vehicle_63";
_azimuth = 80.681;
if (false) then
{
	_azimuth = 0;
};
_unit_432 = (
[
	"_unit_432", true, "vbs2_wp_AFVcrew", [3306.28662, 2011.68738, 124.87790], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_79", "EAST", "T-72 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_79]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_63";
_azimuth = 80.681;
if (false) then
{
	_azimuth = 0;
};
_unit_433 = (
[
	"_unit_433", true, "vbs2_wp_AFVcrew", [3306.28662, 2011.68738, 124.87790], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_79", "EAST", "T-72 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_432', 1
] + [_group_79]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_63";
_azimuth = 80.681;
if (false) then
{
	_azimuth = 0;
};
_unit_434 = (
[
	"_unit_434", true, "vbs2_wp_AFVcrew", [3306.28662, 2011.68738, 124.87790], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_79", "EAST", "T-72 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_432', 1
] + [_group_79]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_64";
_strGunner = "_vehicle_64";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_435 = (
[
	"_unit_435", true, "vbs2_wp_AFVcrew", [3302.17651, 2027.23486, 124.82298], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_80", "EAST", "T-72 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_80]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_64";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_436 = (
[
	"_unit_436", true, "vbs2_wp_AFVcrew", [3302.17651, 2027.23486, 124.82298], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_80", "EAST", "T-72 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_435', 1
] + [_group_80]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_64";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_437 = (
[
	"_unit_437", true, "vbs2_wp_AFVcrew", [3302.17651, 2027.23486, 124.82298], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_80", "EAST", "T-72 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_435', 1
] + [_group_80]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_25";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_101 = (
[
	"_unit_101", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3659.93262, 1870.79895, 122.04595], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_26", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_100', 1
] + [_group_26]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_25";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_102 = (
[
	"_unit_102", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3659.93262, 1870.79895, 122.04595], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_26", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_100', 1
] + [_group_26]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_25";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_103 = (
[
	"_unit_103", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3659.93262, 1870.79895, 122.04595], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_26", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_100', 1
] + [_group_26]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_27";
_strGunner = "_vehicle_27";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_108 = (
[
	"_unit_108", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3672.14624, 1805.40930, 122.21287], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_28", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_28]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_27";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_109 = (
[
	"_unit_109", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3672.14624, 1805.40930, 122.21287], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_28", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_108', 1
] + [_group_28]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_71";
_strGunner = "_vehicle_71";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_456 = (
[
	"_unit_456", true, "vbs2_wp_AFVcrew", [3356.95654, 1799.95239, 122.82340], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_87", "EAST", "T-72 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_87]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_71";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_457 = (
[
	"_unit_457", true, "vbs2_wp_AFVcrew", [3356.95654, 1799.95239, 122.82340], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_87", "EAST", "T-72 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_456', 1
] + [_group_87]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_71";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_458 = (
[
	"_unit_458", true, "vbs2_wp_AFVcrew", [3356.95654, 1799.95239, 122.82340], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_87", "EAST", "T-72 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_456', 1
] + [_group_87]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_72";
_strGunner = "_vehicle_72";
_azimuth = 80.69;
if (false) then
{
	_azimuth = 0;
};
_unit_459 = (
[
	"_unit_459", true, "vbs2_wp_AFVcrew", [3352.84619, 1815.49976, 122.94287], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_88", "EAST", "T-72 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_88]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_72";
_azimuth = 80.69;
if (false) then
{
	_azimuth = 0;
};
_unit_460 = (
[
	"_unit_460", true, "vbs2_wp_AFVcrew", [3352.84619, 1815.49976, 122.94287], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_88", "EAST", "T-72 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_459', 1
] + [_group_88]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_72";
_azimuth = 80.69;
if (false) then
{
	_azimuth = 0;
};
_unit_461 = (
[
	"_unit_461", true, "vbs2_wp_AFVcrew", [3352.84619, 1815.49976, 122.94287], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_88", "EAST", "T-72 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_459', 1
] + [_group_88]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_27";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_110 = (
[
	"_unit_110", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3672.14624, 1805.40930, 122.21287], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_28", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_108', 1
] + [_group_28]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_27";
_azimuth = -100.13;
if (false) then
{
	_azimuth = 0;
};
_unit_111 = (
[
	"_unit_111", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3672.14624, 1805.40930, 122.21287], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_28", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_108', 1
] + [_group_28]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_10";
_azimuth = -100.12;
if (false) then
{
	_azimuth = 0;
};
_unit_42 = (
[
	"_unit_42", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3606.26587, 2054.66675, 128.02440], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_11", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_40', 1
] + [_group_11]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_75";
_strGunner = "_vehicle_75";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_468 = (
[
	"_unit_468", true, "vbs2_wp_AFVcrew", [3330.56714, 1858.72607, 123.81207], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_91", "EAST", "T-72 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_91]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_75";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_469 = (
[
	"_unit_469", true, "vbs2_wp_AFVcrew", [3330.56714, 1858.72607, 123.81207], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_91", "EAST", "T-72 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_468', 1
] + [_group_91]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_75";
_azimuth = 80.689;
if (false) then
{
	_azimuth = 0;
};
_unit_470 = (
[
	"_unit_470", true, "vbs2_wp_AFVcrew", [3330.56714, 1858.72607, 123.81207], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_91", "EAST", "T-72 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_468', 1
] + [_group_91]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_76";
_strGunner = "_vehicle_76";
_azimuth = 80.688;
if (false) then
{
	_azimuth = 0;
};
_unit_471 = (
[
	"_unit_471", true, "vbs2_wp_AFVcrew", [3328.61371, 1889.68250, 123.94840], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_92", "EAST", "T-72 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_92]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_76";
_azimuth = 80.688;
if (false) then
{
	_azimuth = 0;
};
_unit_472 = (
[
	"_unit_472", true, "vbs2_wp_AFVcrew", [3328.61371, 1889.68250, 123.94840], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_92", "EAST", "T-72 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_471', 1
] + [_group_92]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_76";
_azimuth = 80.688;
if (false) then
{
	_azimuth = 0;
};
_unit_473 = (
[
	"_unit_473", true, "vbs2_wp_AFVcrew", [3328.61371, 1889.68250, 123.94840], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_92", "EAST", "T-72 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_471', 1
] + [_group_92]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_10";
_azimuth = -100.12;
if (false) then
{
	_azimuth = 0;
};
_unit_43 = (
[
	"_unit_43", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3606.26587, 2054.66675, 128.02440], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_11", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_40', 1
] + [_group_11]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_77";
_strGunner = "_vehicle_77";
_azimuth = 62.128;
if (false) then
{
	_azimuth = 0;
};
_unit_474 = (
[
	"_unit_474", true, "vbs2_wp_AFVcrew", [3329.19946, 1985.89758, 125.20768], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_93", "EAST", "BMP-3 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_93]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_77";
_azimuth = 62.128;
if (false) then
{
	_azimuth = 0;
};
_unit_475 = (
[
	"_unit_475", true, "vbs2_wp_AFVcrew", [3329.19946, 1985.89758, 125.20768], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_93", "EAST", "BMP-3 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_474', 1
] + [_group_93]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_77";
_azimuth = 62.128;
if (false) then
{
	_azimuth = 0;
};
_unit_476 = (
[
	"_unit_476", true, "vbs2_wp_AFVcrew", [3329.19946, 1985.89758, 125.20768], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_93", "EAST", "BMP-3 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_474', 1
] + [_group_93]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_77";
_azimuth = 62.128;
if (false) then
{
	_azimuth = 0;
};
_unit_477 = (
[
	"_unit_477", true, "vbs2_wp_AFVcrew", [3329.19946, 1985.89758, 125.20768], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_93", "EAST", "BMP-3 Gunner", [1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_474', 1
] + [_group_93]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_77";
_azimuth = 62.128;
if (false) then
{
	_azimuth = 0;
};
_unit_478 = (
[
	"_unit_478", true, "vbs2_wp_AFVcrew", [3329.19946, 1985.89758, 125.20768], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_93", "EAST", "BMP-3 Gunner", [2], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_474', 1
] + [_group_93]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_79";
_strGunner = "_vehicle_79";
_azimuth = 62.132;
if (false) then
{
	_azimuth = 0;
};
_unit_484 = (
[
	"_unit_484", true, "vbs2_wp_AFVcrew", [3357.23389, 1875.70068, 123.84525], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_95", "EAST", "BMP-3 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_95]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_79";
_azimuth = 62.132;
if (false) then
{
	_azimuth = 0;
};
_unit_485 = (
[
	"_unit_485", true, "vbs2_wp_AFVcrew", [3357.23389, 1875.70068, 123.84525], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_95", "EAST", "BMP-3 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_484', 1
] + [_group_95]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_79";
_azimuth = 62.132;
if (false) then
{
	_azimuth = 0;
};
_unit_486 = (
[
	"_unit_486", true, "vbs2_wp_AFVcrew", [3357.23389, 1875.70068, 123.84525], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_95", "EAST", "BMP-3 Gunner", [1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_484', 1
] + [_group_95]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_79";
_azimuth = 62.132;
if (false) then
{
	_azimuth = 0;
};
_unit_487 = (
[
	"_unit_487", true, "vbs2_wp_AFVcrew", [3357.23389, 1875.70068, 123.84525], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_95", "EAST", "BMP-3 Gunner", [2], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_484', 1
] + [_group_95]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_79";
_azimuth = 62.132;
if (false) then
{
	_azimuth = 0;
};
_unit_488 = (
[
	"_unit_488", true, "vbs2_wp_AFVcrew", [3357.23389, 1875.70068, 123.84525], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_95", "EAST", "BMP-3 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_484', 1
] + [_group_95]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_33";
_strGunner = "_vehicle_33";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_132 = (
[
	"_unit_132", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3558.65039, 2158.40234, 131.46406], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_34", "WEST", "M2A3 Bradley Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_34]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_81";
_strGunner = "_vehicle_81";
_azimuth = 62.139;
if (false) then
{
	_azimuth = 0;
};
_unit_494 = (
[
	"_unit_494", true, "vbs2_wp_AFVcrew", [3367.18750, 1845.48169, 123.44659], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_97", "EAST", "BMP-3 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_97]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_81";
_azimuth = 62.139;
if (false) then
{
	_azimuth = 0;
};
_unit_495 = (
[
	"_unit_495", true, "vbs2_wp_AFVcrew", [3367.18750, 1845.48169, 123.44659], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_97", "EAST", "BMP-3 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_494', 1
] + [_group_97]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_81";
_azimuth = 62.139;
if (false) then
{
	_azimuth = 0;
};
_unit_496 = (
[
	"_unit_496", true, "vbs2_wp_AFVcrew", [3367.18750, 1845.48169, 123.44659], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_97", "EAST", "BMP-3 Gunner", [1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_494', 1
] + [_group_97]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_81";
_azimuth = 62.139;
if (false) then
{
	_azimuth = 0;
};
_unit_497 = (
[
	"_unit_497", true, "vbs2_wp_AFVcrew", [3367.18750, 1845.48169, 123.44659], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_97", "EAST", "BMP-3 Gunner", [2], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_494', 1
] + [_group_97]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_81";
_azimuth = 62.139;
if (false) then
{
	_azimuth = 0;
};
_unit_498 = (
[
	"_unit_498", true, "vbs2_wp_AFVcrew", [3367.18750, 1845.48169, 123.44659], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_97", "EAST", "BMP-3 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_494', 1
] + [_group_97]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_33";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_133 = (
[
	"_unit_133", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3558.65039, 2158.40234, 131.46406], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_34", "WEST", "M2A3 Bradley Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_132', 1
] + [_group_34]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_33";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_134 = (
[
	"_unit_134", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3558.65039, 2158.40234, 131.46406], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_34", "WEST", "M2A3 Bradley Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_132', 1
] + [_group_34]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_83";
_strGunner = "_vehicle_83";
_azimuth = 62.13;
if (false) then
{
	_azimuth = 0;
};
_unit_504 = (
[
	"_unit_504", true, "vbs2_wp_AFVcrew", [3410.36426, 1764.32861, 121.77481], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_99", "EAST", "BMP-3 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_99]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_83";
_azimuth = 62.13;
if (false) then
{
	_azimuth = 0;
};
_unit_505 = (
[
	"_unit_505", true, "vbs2_wp_AFVcrew", [3410.36426, 1764.32861, 121.77481], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_99", "EAST", "BMP-3 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_504', 1
] + [_group_99]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_83";
_azimuth = 62.13;
if (false) then
{
	_azimuth = 0;
};
_unit_506 = (
[
	"_unit_506", true, "vbs2_wp_AFVcrew", [3410.36426, 1764.32861, 121.77481], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_99", "EAST", "BMP-3 Gunner", [1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_504', 1
] + [_group_99]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_83";
_azimuth = 62.13;
if (false) then
{
	_azimuth = 0;
};
_unit_507 = (
[
	"_unit_507", true, "vbs2_wp_AFVcrew", [3410.36426, 1764.32861, 121.77481], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_99", "EAST", "BMP-3 Gunner", [2], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_504', 1
] + [_group_99]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_83";
_azimuth = 62.13;
if (false) then
{
	_azimuth = 0;
};
_unit_508 = (
[
	"_unit_508", true, "vbs2_wp_AFVcrew", [3410.36426, 1764.32861, 121.77481], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_99", "EAST", "BMP-3 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_504', 1
] + [_group_99]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_4";
_strGunner = "_vehicle_4";
_azimuth = -100.19;
if (false) then
{
	_azimuth = 0;
};
_unit_16 = (
[
	"_unit_16", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3624.66138, 2104.21680, 128.12160], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", true, "_group_5", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_5]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_85";
_strGunner = "_vehicle_85";
_azimuth = 62.119;
if (false) then
{
	_azimuth = 0;
};
_unit_514 = (
[
	"_unit_514", true, "vbs2_wp_AFVcrew", [3424.52539, 1742.41980, 121.51279], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_101", "EAST", "BMP-3 Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_101]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_85";
_azimuth = 62.119;
if (false) then
{
	_azimuth = 0;
};
_unit_515 = (
[
	"_unit_515", true, "vbs2_wp_AFVcrew", [3424.52539, 1742.41980, 121.51279], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_101", "EAST", "BMP-3 Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_514', 1
] + [_group_101]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_85";
_azimuth = 62.119;
if (false) then
{
	_azimuth = 0;
};
_unit_516 = (
[
	"_unit_516", true, "vbs2_wp_AFVcrew", [3424.52539, 1742.41980, 121.51279], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_101", "EAST", "BMP-3 Gunner", [1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_514', 1
] + [_group_101]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_85";
_azimuth = 62.119;
if (false) then
{
	_azimuth = 0;
};
_unit_517 = (
[
	"_unit_517", true, "vbs2_wp_AFVcrew", [3424.52539, 1742.41980, 121.51279], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_101", "EAST", "BMP-3 Gunner", [2], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_514', 1
] + [_group_101]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_85";
_azimuth = 62.119;
if (false) then
{
	_azimuth = 0;
};
_unit_518 = (
[
	"_unit_518", true, "vbs2_wp_AFVcrew", [3424.52539, 1742.41980, 121.51279], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_101", "EAST", "BMP-3 Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_514', 1
] + [_group_101]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_12";
_strGunner = "_vehicle_12";
_azimuth = -100.09;
if (false) then
{
	_azimuth = 0;
};
_unit_48 = (
[
	"_unit_48", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3630.14233, 2047.94873, 126.26207], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_13", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_13]) call fn_vbs_editor_unit_create;

_veh = [];
['_waypoint_0',['name','_waypoint_0','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3413.01825, 2002.62976, 128.65475],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_84] + [_group_22] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_4',['name','_waypoint_4','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3472.44562, 1758.34283, 121.93575],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_189] + [_group_53] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_6',['name','_waypoint_6','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3474.63205, 1803.17249, 122.42338],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_108] + [_group_28] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_8',['name','_waypoint_8','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3472.71906, 1840.34802, 122.66889],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_183] + [_group_51] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_10',['name','_waypoint_10','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3483.64951, 1788.95844, 122.20187],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_267] + [_group_63] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_12',['name','_waypoint_12','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3473.26550, 1856.20270, 122.71248],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_177] + [_group_49] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_14',['name','_waypoint_14','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3470.25983, 1875.88422, 123.26788],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_100] + [_group_26] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_20',['name','_waypoint_20','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3464.24805, 1889.00494, 123.96917],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_249] + [_group_61] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_22',['name','_waypoint_22','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3468.34726, 1930.82721, 126.13713],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_92] + [_group_24] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_28',['name','_waypoint_28','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3406.59097, 2023.49261, 128.26443],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_40] + [_group_11] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_30',['name','_waypoint_30','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3415.06198, 2012.83197, 128.88276],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_48] + [_group_13] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_34',['name','_waypoint_34','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3399.21329, 2049.73450, 127.12050],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_76] + [_group_20] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_36',['name','_waypoint_36','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3398.93985, 2097.84454, 125.80114],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_8] + [_group_3] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_38',['name','_waypoint_38','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3394.56784, 2075.15607, 126.08056],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_213] + [_group_57] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_42',['name','_waypoint_42','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3396.75577, 2110.71234, 125.78855],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_68] + [_group_18] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_44',['name','_waypoint_44','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3397.84866, 2138.86743, 126.40305],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_32] + [_group_9] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_46',['name','_waypoint_46','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3398.66855, 2131.48718, 126.19856],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_24] + [_group_7] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_50',['name','_waypoint_50','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3388.83099, 2159.36884, 126.77147],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_132] + [_group_34] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_52',['name','_waypoint_52','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3342.92404, 2173.58289, 126.14967],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_285] + [_group_65] call fn_vbs_editor_waypoint_assign;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_4";
_azimuth = -100.19;
if (false) then
{
	_azimuth = 0;
};
_unit_17 = (
[
	"_unit_17", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3624.66138, 2104.21680, 128.12160], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_5", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_16', 1
] + [_group_5]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_12";
_azimuth = -100.09;
if (false) then
{
	_azimuth = 0;
};
_unit_49 = (
[
	"_unit_49", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3630.14233, 2047.94873, 126.26207], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_13", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_48', 1
] + [_group_13]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_4";
_azimuth = -100.19;
if (false) then
{
	_azimuth = 0;
};
_unit_18 = (
[
	"_unit_18", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3624.66138, 2104.21680, 128.12160], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_5", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_16', 1
] + [_group_5]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_12";
_azimuth = -100.09;
if (false) then
{
	_azimuth = 0;
};
_unit_50 = (
[
	"_unit_50", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3630.14233, 2047.94873, 126.26207], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_13", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_48', 1
] + [_group_13]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_4";
_azimuth = -100.19;
if (false) then
{
	_azimuth = 0;
};
_unit_19 = (
[
	"_unit_19", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3624.66138, 2104.21680, 128.12160], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_5", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_16', 1
] + [_group_5]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_12";
_azimuth = -100.09;
if (false) then
{
	_azimuth = 0;
};
_unit_51 = (
[
	"_unit_51", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3630.14233, 2047.94873, 126.26207], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_13", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_48', 1
] + [_group_13]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_38";
_strGunner = "_vehicle_38";
_azimuth = -105.3;
if (false) then
{
	_azimuth = 0;
};
_unit_147 = (
[
	"_unit_147", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3624.85156, 2146.72510, 129.56506], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_39", "WEST", "M2A3 Bradley Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_39]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_38";
_azimuth = -105.3;
if (false) then
{
	_azimuth = 0;
};
_unit_148 = (
[
	"_unit_148", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3624.85156, 2146.72510, 129.56506], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_39", "WEST", "M2A3 Bradley Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_147', 1
] + [_group_39]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 73.12;
if (false) then
{
	_azimuth = 0;
};
_unit_541 = (
[
	"_unit_541", true, "vbs2_wp_leader_ak47", [3245.47900, 2013.60071, 123.96885], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_107", "east", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_107]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 74.11;
if (false) then
{
	_azimuth = 0;
};
_unit_542 = (
[
	"_unit_542", true, "vbs2_wp_soldier_ak74", [3242.86377, 2015.69641, 123.96772], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_107", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_541', 1
] + [_group_107]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 75.272;
if (false) then
{
	_azimuth = 0;
};
_unit_543 = (
[
	"_unit_543", true, "vbs2_wp_soldier_ak74", [3238.22949, 2018.92883, 123.91706], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_107", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_541', 1
] + [_group_107]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 75.125;
if (false) then
{
	_azimuth = 0;
};
_unit_544 = (
[
	"_unit_544", true, "vbs2_wp_soldier_at13", [3242.49634, 2008.05212, 123.91384], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_107", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_541', 1
] + [_group_107]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 83.679;
if (false) then
{
	_azimuth = 0;
};
_unit_545 = (
[
	"_unit_545", true, "vbs2_wp_soldier_rpg", [3239.34351, 2003.35388, 123.89006], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_107", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_541', 1
] + [_group_107]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 81.93;
if (false) then
{
	_azimuth = 0;
};
_unit_546 = (
[
	"_unit_546", true, "vbs2_wp_machinegunner_pk", [3236.15137, 1999.45618, 123.86808], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_107", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_541', 1
] + [_group_107]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 79.659;
if (false) then
{
	_azimuth = 0;
};
_unit_547 = (
[
	"_unit_547", true, "vbs2_wp_soldier_rpg", [3233.13477, 2021.57312, 123.85649], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_107", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_541', 1
] + [_group_107]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 73.12;
if (false) then
{
	_azimuth = 0;
};
_unit_562 = (
[
	"_unit_562", true, "vbs2_wp_leader_ak47", [3365.16675, 1731.77295, 121.54615], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_110", "east", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_110]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 74.11;
if (false) then
{
	_azimuth = 0;
};
_unit_563 = (
[
	"_unit_563", true, "vbs2_wp_soldier_ak74", [3362.55151, 1733.86865, 121.54500], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_110", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_562', 1
] + [_group_110]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 75.272;
if (false) then
{
	_azimuth = 0;
};
_unit_564 = (
[
	"_unit_564", true, "vbs2_wp_soldier_ak74", [3357.91724, 1737.10107, 121.49436], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_110", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_562', 1
] + [_group_110]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 75.125;
if (false) then
{
	_azimuth = 0;
};
_unit_565 = (
[
	"_unit_565", true, "vbs2_wp_soldier_at13", [3362.18408, 1726.22437, 121.49115], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_110", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_562', 1
] + [_group_110]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 83.679;
if (false) then
{
	_azimuth = 0;
};
_unit_566 = (
[
	"_unit_566", true, "vbs2_wp_soldier_rpg", [3359.03125, 1721.52612, 121.46736], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_110", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_562', 1
] + [_group_110]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 81.93;
if (false) then
{
	_azimuth = 0;
};
_unit_567 = (
[
	"_unit_567", true, "vbs2_wp_machinegunner_pk", [3355.83911, 1717.62842, 121.44536], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_110", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_562', 1
] + [_group_110]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 79.659;
if (false) then
{
	_azimuth = 0;
};
_unit_568 = (
[
	"_unit_568", true, "vbs2_wp_soldier_rpg", [3352.82251, 1739.74536, 121.43380], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_110", "EAST", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_562', 1
] + [_group_110]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_38";
_azimuth = -105.3;
if (false) then
{
	_azimuth = 0;
};
_unit_149 = (
[
	"_unit_149", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3624.85156, 2146.72510, 129.56506], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_39", "WEST", "M2A3 Bradley Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_147', 1
] + [_group_39]) call fn_vbs_editor_unit_create;

_veh = [];
['_waypoint_48',['name','_waypoint_48','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3397.02878, 2148.70819, 126.63691],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_147] + [_group_39] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_68',['name','_waypoint_68','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3568.44739, 2113.34631, 130.79336],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_349] + [_group_105] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_70',['name','_waypoint_70','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3577.99826, 2094.85382, 130.11314],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_435] + [_group_80] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_72',['name','_waypoint_72','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3581.69543, 2064.95813, 129.41739],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_432] + [_group_79] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_74',['name','_waypoint_74','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3623.28870, 2023.65881, 126.26267],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_474] + [_group_93] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_76',['name','_waypoint_76','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3592.47870, 1982.05145, 125.89663],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_423] + [_group_76] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_78',['name','_waypoint_78','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3597.10022, 1957.70313, 123.97675],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_420] + [_group_75] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_80',['name','_waypoint_80','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3637.76935, 1914.86273, 122.28811],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_484] + [_group_95] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_82',['name','_waypoint_82','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3602.02979, 1937.36194, 122.67545],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_471] + [_group_92] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_84',['name','_waypoint_84','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3636.22870, 1886.81616, 122.22915],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_468] + [_group_91] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_86',['name','_waypoint_86','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3641.77478, 1859.69458, 122.04876],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_494] + [_group_97] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_88',['name','_waypoint_88','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3643.31543, 1842.74359, 122.04868],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_459] + [_group_88] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_90',['name','_waypoint_90','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3640.54218, 1819.31982, 122.04865],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_456] + [_group_87] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_92',['name','_waypoint_92','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3631.91565, 1805.75903, 122.04606],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_504] + [_group_99] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_94',['name','_waypoint_94','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3662.72522, 1786.03351, 122.05188],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_514] + [_group_101] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_96',['name','_waypoint_96','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3672.27631, 1770.62317, 122.09681],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_405] + [_group_70] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_98',['name','_waypoint_98','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3633.45630, 1826.10022, 122.04898],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_562] + [_group_110] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_100',['name','_waypoint_100','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3655.33087, 1796.51300, 122.04921],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_411] + [_group_72] call fn_vbs_editor_waypoint_assign;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_40";
_strGunner = "_vehicle_40";
_azimuth = -105.34;
if (false) then
{
	_azimuth = 0;
};
_unit_153 = (
[
	"_unit_153", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3649.64429, 2051.35669, 125.42984], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_41", "WEST", "M2A3 Bradley Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_41]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_89";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_576 = (
[
	"_unit_576", true, "vbs2_wp_pilot_heli", [2055.69411, 1641.93509, 120.21119], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_112", "EAST", "Mi-24V - YAK-B, S5, AT-9 Pilot", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_112]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_89";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_577 = (
[
	"_unit_577", true, "vbs2_wp_pilot_heli", [2055.69411, 1641.93509, 120.21119], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_112", "EAST", "Mi-24V - YAK-B, S5, AT-9 Copilot", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_576', 1
] + [_group_112]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_40";
_azimuth = -105.34;
if (false) then
{
	_azimuth = 0;
};
_unit_154 = (
[
	"_unit_154", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3649.64429, 2051.35669, 125.42984], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_41", "WEST", "M2A3 Bradley Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_153', 1
] + [_group_41]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_40";
_azimuth = -105.34;
if (false) then
{
	_azimuth = 0;
};
_unit_155 = (
[
	"_unit_155", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3649.64429, 2051.35669, 125.42984], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_41", "WEST", "M2A3 Bradley Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_153', 1
] + [_group_41]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_42";
_strGunner = "_vehicle_42";
_azimuth = -105.22;
if (false) then
{
	_azimuth = 0;
};
_unit_159 = (
[
	"_unit_159", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3654.52393, 1953.05359, 122.75114], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_43", "WEST", "M2A3 Bradley Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_43]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_42";
_azimuth = -105.22;
if (false) then
{
	_azimuth = 0;
};
_unit_160 = (
[
	"_unit_160", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3654.52393, 1953.05359, 122.75114], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_43", "WEST", "M2A3 Bradley Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_159', 1
] + [_group_43]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_93";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_584 = (
[
	"_unit_584", true, "vbs2_wp_pilot_heli", [2026.20935, 1626.12646, 120.73114], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_116", "EAST", "Mi-24V - YAK-B, S5, AT-9 Pilot", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_116]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_93";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_585 = (
[
	"_unit_585", true, "vbs2_wp_pilot_heli", [2026.20935, 1626.12646, 120.73114], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_116", "EAST", "Mi-24V - YAK-B, S5, AT-9 Copilot", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_584', 1
] + [_group_116]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_42";
_azimuth = -105.22;
if (false) then
{
	_azimuth = 0;
};
_unit_161 = (
[
	"_unit_161", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3654.52393, 1953.05359, 122.75114], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_43", "WEST", "M2A3 Bradley Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_159', 1
] + [_group_43]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_44";
_strGunner = "_vehicle_44";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_165 = (
[
	"_unit_165", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3675.70190, 1911.02258, 122.08928], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_45", "WEST", "M2A3 Bradley Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_45]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_97";
_azimuth = -0.0016989;
if (false) then
{
	_azimuth = 0;
};
_unit_592 = (
[
	"_unit_592", true, "vbs_us_army_helipilot_ucp_m_medium_airwarrior_none_m9_a2cu", [4350.19990, 2540.31837, 119.88749], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_120", "WEST", "AH-64D Apache - M230, Hydra, AGM114K Pilot", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_120]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_97";
_azimuth = -0.0016989;
if (false) then
{
	_azimuth = 0;
};
_unit_593 = (
[
	"_unit_593", true, "vbs_us_army_helipilot_ucp_m_medium_airwarrior_none_m9_a2cu", [4350.19990, 2540.31837, 119.88749], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_120", "WEST", "AH-64D Apache - M230, Hydra, AGM114K Copilot", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_592', 1
] + [_group_120]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_44";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_166 = (
[
	"_unit_166", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3675.70190, 1911.02258, 122.08928], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_45", "WEST", "M2A3 Bradley Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_165', 1
] + [_group_45]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_44";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_167 = (
[
	"_unit_167", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3675.70190, 1911.02258, 122.08928], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_45", "WEST", "M2A3 Bradley Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_165', 1
] + [_group_45]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_99";
_azimuth = -0.003398;
if (false) then
{
	_azimuth = 0;
};
_unit_596 = (
[
	"_unit_596", true, "vbs_us_army_helipilot_ucp_m_medium_airwarrior_none_m9_a2cu", [4384.44922, 2543.56543, 120.18065], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_122", "WEST", "AH-64D Apache - M230, Hydra, AGM114K Pilot", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_122]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_99";
_azimuth = -0.003398;
if (false) then
{
	_azimuth = 0;
};
_unit_597 = (
[
	"_unit_597", true, "vbs_us_army_helipilot_ucp_m_medium_airwarrior_none_m9_a2cu", [4384.44922, 2543.56543, 120.18065], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_122", "WEST", "AH-64D Apache - M230, Hydra, AGM114K Copilot", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_596', 1
] + [_group_122]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_0";
_strGunner = "_vehicle_0";
_azimuth = -100.04;
if (false) then
{
	_azimuth = 0;
};
_unit_0 = (
[
	"_unit_0", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3592.86011, 2124.77197, 130.27219], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", true, "_group_1", "WEST", "M1A2 - AT load Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_1]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strCommander = "_vehicle_46";
_strGunner = "_vehicle_46";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_171 = (
[
	"_unit_171", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3682.65552, 1883.77722, 122.17825], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_47", "WEST", "M2A3 Bradley Commander", [0,0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_47]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_101";
_azimuth = -0.0017075;
if (false) then
{
	_azimuth = 0;
};
_unit_600 = (
[
	"_unit_600", true, "vbs_us_army_helipilot_ucp_m_medium_airwarrior_none_m9_a2cu", [4356.78516, 2579.23901, 120.22168], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_124", "WEST", "AH-64D Apache - M230, Hydra, AGM114K Pilot", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_124]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_101";
_azimuth = -0.0017075;
if (false) then
{
	_azimuth = 0;
};
_unit_601 = (
[
	"_unit_601", true, "vbs_us_army_helipilot_ucp_m_medium_airwarrior_none_m9_a2cu", [4356.78516, 2579.23901, 120.22168], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_124", "WEST", "AH-64D Apache - M230, Hydra, AGM114K Copilot", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_600', 1
] + [_group_124]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_46";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_172 = (
[
	"_unit_172", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3682.65552, 1883.77722, 122.17825], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_47", "WEST", "M2A3 Bradley Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_171', 1
] + [_group_47]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_103";
_azimuth = -0.012767;
if (false) then
{
	_azimuth = 0;
};
_unit_604 = (
[
	"_unit_604", true, "vbs_us_army_helipilot_ucp_m_medium_airwarrior_none_m9_a2cu", [4386.11865, 2573.21021, 120.62770], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_126", "WEST", "AH-64D Apache - M230, Hydra, AGM114K Pilot", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + [_group_126]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_103";
_azimuth = -0.012767;
if (false) then
{
	_azimuth = 0;
};
_unit_605 = (
[
	"_unit_605", true, "vbs_us_army_helipilot_ucp_m_medium_airwarrior_none_m9_a2cu", [4386.11865, 2573.21021, 120.62770], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_126", "WEST", "AH-64D Apache - M230, Hydra, AGM114K Copilot", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_604', 1
] + [_group_126]) call fn_vbs_editor_unit_create;

_veh = [];
['_waypoint_101',['name','_waypoint_101','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"RED",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"COMBAT",'destination',[3460.58633, 2140.50208, 129.29858],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_576] + [_group_112] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_103',['name','_waypoint_103','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"RED",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"COMBAT",'destination',[3500.84680, 2045.78162, 131.32635],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_584] + [_group_116] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_109',['name','_waypoint_109','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"RED",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"COMBAT",'destination',[3455.40128, 2156.12134, 129.15898],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_592] + [_group_120] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_111',['name','_waypoint_111','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"RED",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"COMBAT",'destination',[3496.67432, 2051.66949, 131.23539],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_596] + [_group_122] call fn_vbs_editor_waypoint_assign;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_46";
_azimuth = -105.23;
if (false) then
{
	_azimuth = 0;
};
_unit_173 = (
[
	"_unit_173", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3682.65552, 1883.77722, 122.17825], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", false, "_group_47", "WEST", "M2A3 Bradley Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_171', 1
] + [_group_47]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_0";
_azimuth = -100.04;
if (false) then
{
	_azimuth = 0;
};
_unit_2 = (
[
	"_unit_2", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3592.86011, 2124.77197, 130.27219], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", true, "_group_1", "WEST", "M1A2 - AT load Gunner", [0], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_0', 1
] + [_group_1]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_0";
_azimuth = -100.04;
if (false) then
{
	_azimuth = 0;
};
_unit_3 = (
[
	"_unit_3", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3592.86011, 2124.77197, 130.27219], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", true, "_group_1", "WEST", "M1A2 - AT load Loader", [0,1], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_0', 1
] + [_group_1]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_0";
_azimuth = -100.04;
if (false) then
{
	_azimuth = 0;
};
_unit_1 = (
[
	"_unit_1", true, "vbs2_us_army_afvcrew_ucp_m_medium_iotv_none_m4cco", [3592.86011, 2124.77197, 130.27219], [], 0, "CARGO", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Ai", true, "_group_1", "WEST", "M1A2 - AT load Driver", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '_unit_0', 1
] + [_group_1]) call fn_vbs_editor_unit_create;

_veh = [];
['_waypoint_16',['name','_waypoint_16','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3471.35294, 1899.66602, 124.39025],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_171] + [_group_47] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_18',['name','_waypoint_18','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3470.80649, 1920.44000, 125.41324],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_165] + [_group_45] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_24',['name','_waypoint_24','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3468.89392, 1949.96185, 127.85927],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_159] + [_group_43] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_32',['name','_waypoint_32','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3402.49219, 2035.24658, 127.78154],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_153] + [_group_41] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_40',['name','_waypoint_40','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"NO CHANGE",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"UNCHANGED",'destination',[3399.21500, 2122.46588, 126.00507],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_0] + [_group_1] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_113',['name','_waypoint_113','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"RED",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"COMBAT",'destination',[3521.13950, 1933.97174, 125.06476],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_604] + [_group_126] call fn_vbs_editor_waypoint_assign;

_veh = [];
['_waypoint_115',['name','_waypoint_115','type',"MOVE",'loiterType',"CIRCLE",'radius',"200",'description',"",'combat_mode',"RED",'formation',"NO CHANGE",'convoySpacing',"",'engageType',true,'speed',"UNCHANGED",'behavior',"COMBAT",'destination',[3549.62079, 1823.52350, 122.04812],'nextTask','','prevTask','','synchList',[],'placement',0,'timeout_min',0,'timeout_mid',0,'timeout_max',0,'condition',"true",'on_activation',"",'on_activation_array',"[]",'script',"",'show',"NEVER",'synchTriggers',[],'branchCondition',"true",'branchTo',"",'direction',0,'airSpeed',"200",'altitude',"",'altMode',"AGL",'avrsAction',"",'TARGET_OBJECT','""','TARGET_UNIT','""','TARGET_VEHICLE','""','TARGET_GROUP','""','HIDE_TARGET','false','VECTOR_DIRECTION','','TRANSITION_TIME',"",'ON_START',"",'ON_END',"",'DO_RECORDING',"",'RECORDING_CONDITION_SCRIPT',"false",'RES_X',0,'RES_Y',0,'FILENAME',"", 'scene_trigger', "", 'formation_dir', -1] + _veh] + [_unit_600] + [_group_124] call fn_vbs_editor_waypoint_assign;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_606 = (
[
	"_unit_606", true, "tboc_invisible_spectator_camera", [3399.08320, 1972.07947, 126.37329], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "Player", true, "", "civ", "", [], "", "YELLOW", "SAFE", "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 0, false, "", 1, 0, '', 1
] + []) call fn_vbs_editor_unit_create;

_modular_artillery_strike_0  = ["_modular_artillery_strike_0", [3386.84525, 2088.09953, 125.78182], [], ["true", "false", "true", "false"], "mortar_81", "vbs2_ammo_sh_80m_he", "quick", 1, 500, 10, 5, 5, 5, 5] call fn_vbs_createMAS;

_modular_artillery_strike_1  = ["_modular_artillery_strike_1", [3506.54840, 1968.69207, 128.75325], [], ["true", "false", "true", "false"], "mortar_81", "vbs2_ammo_sh_80m_smoke", "quick", 1, 500, 10, 5, 5, 5, 5] call fn_vbs_createMAS;

call compile preprocessFile "\vbs2\editor\data\scripts\group\finalizeGroups.sqf";
call compile preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepare.sqf";
call compile preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepareSynch.sqf";

if (isNil "_map") then {processInitCommands};
