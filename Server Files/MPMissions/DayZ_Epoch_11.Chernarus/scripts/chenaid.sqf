// Chenarus First Aid Stations by t.hundero.us
 
// Installing This Modification
// 1. Save this code as "chenaid.sqf"
// 2. Place the .sqf file inside your mission.pbo file
// 3. Open "init.sqf" and add the following line to the very end -
// [] execVM "chenaid.sqf";
 
if (isServer) then {

_vehicle_3 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [7071.2134, 7699.9712], [], 0, "CAN_COLLIDE"];
  _vehicle_3 = _this;
  _this setDir 18.905325;
  _this setPos [7071.2134, 7699.9712];
};

_vehicle_4 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNet_EAST", [7087.2222, 7705.9434, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_4 = _this;
  _this setDir 70.854439;
  _this setPos [7087.2222, 7705.9434, -3.0517578e-005];
};

_vehicle_5 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [7087.8584, 7702.1138, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5 = _this;
  _this setDir 106.96022;
  _this setPos [7087.8584, 7702.1138, 6.1035156e-005];
};

_vehicle_6 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [7087.1147, 7702.9233, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_6 = _this;
  _this setDir -21.384806;
  _this setPos [7087.1147, 7702.9233, 3.0517578e-005];
};

_vehicle_7 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [7078.8506, 7701.1992, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_7 = _this;
  _this setPos [7078.8506, 7701.1992, 6.1035156e-005];
};

_vehicle_8 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [7079.7842, 7699.1514, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_8 = _this;
  _this setDir 57.496685;
  _this setPos [7079.7842, 7699.1514, 3.0517578e-005];
};

_vehicle_9 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Chair_EP1", [7087.3228, 7704.5952, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_9 = _this;
  _this setDir 101.92162;
  _this setPos [7087.3228, 7704.5952, 3.0517578e-005];
};

_vehicle_10 = objNull;
if (true) then
{
  _this = createVehicle ["WoodChair", [7085.7607, 7703.5806], [], 0, "CAN_COLLIDE"];
  _vehicle_10 = _this;
  _this setDir -6.0987549;
  _this setPos [7085.7607, 7703.5806];
};

_vehicle_11 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [7083.564, 7708.9526, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_11 = _this;
  _this setDir 174.21144;
  _this setPos [7083.564, 7708.9526, 3.0517578e-005];
};

_vehicle_12 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [7085.709, 7709.9189], [], 0, "CAN_COLLIDE"];
  _vehicle_12 = _this;
  _this setDir 86.727654;
  _this setPos [7085.709, 7709.9189];
};

_vehicle_13 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [7086.0239, 7708.6694, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_13 = _this;
  _this setDir 85.205338;
  _this setPos [7086.0239, 7708.6694, -3.0517578e-005];
};

_vehicle_14 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [7084.5708, 7707.1836], [], 0, "CAN_COLLIDE"];
  _vehicle_14 = _this;
  _this setDir 79.491592;
  _this setPos [7084.5708, 7707.1836];
};

_vehicle_15 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [7085.0215, 7696.7168, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_15 = _this;
  _this setPos [7085.0215, 7696.7168, 3.0517578e-005];
};

_vehicle_16 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [7086.6748, 7697.0034, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_16 = _this;
  _this setDir 157.7394;
  _this setPos [7086.6748, 7697.0034, 9.1552734e-005];
};

_vehicle_17 = objNull;
if (true) then
{
  _this = createVehicle ["Loudspeakers_EP1", [7075.3623, 7692.3281, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_17 = _this;
  _this setPos [7075.3623, 7692.3281, 3.0517578e-005];
};

_vehicle_18 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [7076.6514, 7691.2588], [], 0, "CAN_COLLIDE"];
  _vehicle_18 = _this;
  _this setDir -41.628143;
  _this setPos [7076.6514, 7691.2588];
};

_vehicle_19 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [7080.9551, 7691.4058], [], 0, "CAN_COLLIDE"];
  _vehicle_19 = _this;
  _this setDir -14.821351;
  _this setPos [7080.9551, 7691.4058];
};

_vehicle_20 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [7070.3794, 7709.9326, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_20 = _this;
  _this setDir -117.24728;
  _this setPos [7070.3794, 7709.9326, -3.0517578e-005];
};

_vehicle_22 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big_EP1", [7065.7622, 7694.8164, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_22 = _this;
  _this setDir -130.6714;
  _this setPos [7065.7622, 7694.8164, -6.1035156e-005];
};

_vehicle_23 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [7071.1299, 7691.4634, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_23 = _this;
  _this setDir -100.36348;
  _this setPos [7071.1299, 7691.4634, 6.1035156e-005];
};

_vehicle_24 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_empty", [7084.4063, 7695.9937, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_24 = _this;
  _this setPos [7084.4063, 7695.9937, -3.0517578e-005];
};

_vehicle_25 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_EP1", [7066.731, 7694.3574, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_25 = _this;
  _this setPos [7066.731, 7694.3574, 0];
};

_vehicle_26 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [6528.5132, 6098.4497, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_26 = _this;
  _this setDir 74.926605;
  _this setPos [6528.5132, 6098.4497, -6.1035156e-005];
};

_vehicle_28 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [6529.8286, 6098.4746], [], 0, "CAN_COLLIDE"];
  _vehicle_28 = _this;
  _this setDir -10.054855;
  _this setPos [6529.8286, 6098.4746];
};

_vehicle_29 = objNull;
if (true) then
{
  _this = createVehicle ["RoadCone", [6529.0806, 6095.7407, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_29 = _this;
  _this setPos [6529.0806, 6095.7407, -3.0517578e-005];
};

_vehicle_30 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [6530.7974, 6098.7422, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_30 = _this;
  _this setDir 7.1502323;
  _this setPos [6530.7974, 6098.7422, -3.0517578e-005];
};

_vehicle_31 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [6530.7729, 6097.5039, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_31 = _this;
  _this setDir -9.2266636;
  _this setPos [6530.7729, 6097.5039, 3.0517578e-005];
};

_vehicle_32 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Chair_EP1", [6530.9248, 6095.8745, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_32 = _this;
  _this setDir -57.259949;
  _this setPos [6530.9248, 6095.8745, 3.0517578e-005];
};

_vehicle_33 = objNull;
if (true) then
{
  _this = createVehicle ["SmallTable", [6532.7803, 6097.7969], [], 0, "CAN_COLLIDE"];
  _vehicle_33 = _this;
  _this setPos [6532.7803, 6097.7969];
};

_vehicle_34 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [6533.1055, 6099.4248, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_34 = _this;
  _this setDir -67.66906;
  _this setPos [6533.1055, 6099.4248, -6.1035156e-005];
};

_vehicle_35 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [6537.7642, 6099.6934], [], 0, "CAN_COLLIDE"];
  _vehicle_35 = _this;
  _this setDir 165.17152;
  _this setPos [6537.7642, 6099.6934];
};

_vehicle_36 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [6535.4141, 6096.2661, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_36 = _this;
  _this setDir 60.956596;
  _this setPos [6535.4141, 6096.2661, -3.0517578e-005];
};

_vehicle_37 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6538.9106, 6075.4116, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_37 = _this;
  _this setDir 53.606445;
  _this setPos [6538.9106, 6075.4116, -3.0517578e-005];
};

_vehicle_39 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNet_EAST", [6546.1631, 6078.501], [], 0, "CAN_COLLIDE"];
  _vehicle_39 = _this;
  _this setDir 139.2422;
  _this setPos [6546.1631, 6078.501];
};

_vehicle_40 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [6543.2129, 6077.9927, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_40 = _this;
  _this setPos [6543.2129, 6077.9927, 0];
};

_vehicle_41 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [6542.7827, 6076.3545], [], 0, "CAN_COLLIDE"];
  _vehicle_41 = _this;
  _this setDir -24.937876;
  _this setPos [6542.7827, 6076.3545];
};

_vehicle_42 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [6547.7021, 6081.3403, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_42 = _this;
  _this setDir -28.504112;
  _this setPos [6547.7021, 6081.3403, -3.0517578e-005];
};

_vehicle_43 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [6545.9766, 6081.3237, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_43 = _this;
  _this setPos [6545.9766, 6081.3237, -3.0517578e-005];
};

_vehicle_44 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [7558.1631, 5174.0146, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_44 = _this;
  _this setPos [7558.1631, 5174.0146, 1.5258789e-005];
};

_vehicle_46 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [7548.2197, 5161.356, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_46 = _this;
  _this setDir -4.5081868;
  _this setPos [7548.2197, 5161.356, -6.1035156e-005];
};

_vehicle_47 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [7554.8374, 5169.2739, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_47 = _this;
  _this setPos [7554.8374, 5169.2739, -4.5776367e-005];
};

_vehicle_48 = objNull;
if (true) then
{
  _this = createVehicle ["Loudspeakers_EP1", [7550.4932, 5170.5405, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_48 = _this;
  _this setPos [7550.4932, 5170.5405, 1.5258789e-005];
};

_vehicle_51 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [7552.0591, 5168.1724, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_51 = _this;
  _this setDir 108.65399;
  _this setPos [7552.0591, 5168.1724, -9.1552734e-005];
};

_vehicle_52 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [7553.1694, 5170.7065], [], 0, "CAN_COLLIDE"];
  _vehicle_52 = _this;
  _this setDir -28.402966;
  _this setPos [7553.1694, 5170.7065];
};

_vehicle_53 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [7552.9302, 5169.3906, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_53 = _this;
  _this setDir 8.8644972;
  _this setPos [7552.9302, 5169.3906, 1.5258789e-005];
};

_vehicle_54 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [7547.4404, 5160.5923, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_54 = _this;
  _this setPos [7547.4404, 5160.5923, -1.5258789e-005];
};

_vehicle_55 = objNull;
if (true) then
{
  _this = createVehicle ["Land_coneLight", [7546.6514, 5162.5986], [], 0, "CAN_COLLIDE"];
  _vehicle_55 = _this;
  _this setPos [7546.6514, 5162.5986];
};

_vehicle_56 = objNull;
if (true) then
{
  _this = createVehicle ["Land_coneLight", [7545.6187, 5168.9033, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_56 = _this;
  _this setPos [7545.6187, 5168.9033, 1.5258789e-005];
};

_vehicle_57 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [7545.3462, 5170.2227], [], 0, "CAN_COLLIDE"];
  _vehicle_57 = _this;
  _this setDir 162.0513;
  _this setPos [7545.3462, 5170.2227];
};

_vehicle_58 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [7551.2593, 5160.666, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_58 = _this;
  _this setDir 69.852959;
  _this setPos [7551.2593, 5160.666, -1.5258789e-005];
};

_vehicle_59 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small", [7562.0444, 5162.9043], [], 0, "CAN_COLLIDE"];
  _vehicle_59 = _this;
  _this setPos [7562.0444, 5162.9043];
};

_vehicle_60 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [7562.1284, 5173.2773], [], 0, "CAN_COLLIDE"];
  _vehicle_60 = _this;
  _this setDir -99.722099;
  _this setPos [7562.1284, 5173.2773];
};

_vehicle_61 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Chair_EP1", [7554.6646, 5161.1064], [], 0, "CAN_COLLIDE"];
  _vehicle_61 = _this;
  _this setDir -126.32696;
  _this setPos [7554.6646, 5161.1064];
};

_vehicle_62 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Chair_EP1", [7552.8184, 5160.5615], [], 0, "CAN_COLLIDE"];
  _vehicle_62 = _this;
  _this setDir -93.032928;
  _this setPos [7552.8184, 5160.5615];
};

_vehicle_63 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [7552.2432, 5170.2217, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_63 = _this;
  _this setPos [7552.2432, 5170.2217, -4.5776367e-005];
};

_vehicle_64 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Checkpoint_EP1", [2543.1279, 5027.9482], [], 0, "CAN_COLLIDE"];
  _vehicle_64 = _this;
  _this setDir -78.224442;
  _this setPos [2543.1279, 5027.9482];
};

_vehicle_66 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Antenna", [2516.1614, 5049.2261], [], 0, "CAN_COLLIDE"];
  _vehicle_66 = _this;
  _this setDir 106.45172;
  _this setPos [2516.1614, 5049.2261];
};

_vehicle_67 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [2541.9468, 5060.5386, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_67 = _this;
  _this setDir 25.858768;
  _this setPos [2541.9468, 5060.5386, 1.5258789e-005];
};

_vehicle_68 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetB_EAST", [2541.2114, 5062.6714, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_68 = _this;
  _this setDir 60.230556;
  _this setPos [2541.2114, 5062.6714, -1.5258789e-005];
};

_vehicle_69 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small", [2538.2107, 5061.6895, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_69 = _this;
  _this setPos [2538.2107, 5061.6895, 3.0517578e-005];
};

_vehicle_70 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [2523.4878, 5039.8286, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_70 = _this;
  _this setDir 54.526688;
  _this setPos [2523.4878, 5039.8286, 4.5776367e-005];
};

_vehicle_71 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big_EP1", [2519.3137, 5052.167, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_71 = _this;
  _this setDir -88.054726;
  _this setPos [2519.3137, 5052.167, -1.5258789e-005];
};

_vehicle_72 = objNull;
if (true) then
{
  _this = createVehicle ["Land_GuardShed", [2540.3313, 5026.9263, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_72 = _this;
  _this setDir -30.403847;
  _this setPos [2540.3313, 5026.9263, 3.0517578e-005];
};

_vehicle_74 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [2528.4941, 5033.1982], [], 0, "CAN_COLLIDE"];
  _vehicle_74 = _this;
  _this setDir 53.459591;
  _this setPos [2528.4941, 5033.1982];
};

_vehicle_75 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_big_EP1", [2554.3694, 5038.1519], [], 0, "CAN_COLLIDE"];
  _vehicle_75 = _this;
  _this setDir -33.471962;
  _this setPos [2554.3694, 5038.1519];
};

_vehicle_76 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [2550.3621, 5032.8682, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_76 = _this;
  _this setDir -17.252157;
  _this setPos [2550.3621, 5032.8682, 1.5258789e-005];
};

_vehicle_77 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [2548.136, 5034.689, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_77 = _this;
  _this setDir 56.163635;
  _this setPos [2548.136, 5034.689, -4.5776367e-005];
};

_vehicle_78 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel5", [2520.593, 5050.0112, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_78 = _this;
  _this setPos [2520.593, 5050.0112, 1.5258789e-005];
};

_vehicle_79 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [2546.4707, 5037.5601], [], 0, "CAN_COLLIDE"];
  _vehicle_79 = _this;
  _this setDir 48.102684;
  _this setPos [2546.4707, 5037.5601];
};

_vehicle_80 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [2545.2268, 5039.5464, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_80 = _this;
  _this setDir 57.752266;
  _this setPos [2545.2268, 5039.5464, 3.0517578e-005];
};

_vehicle_81 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Chair_EP1", [2543.8589, 5038.9253], [], 0, "CAN_COLLIDE"];
  _vehicle_81 = _this;
  _this setPos [2543.8589, 5038.9253];
};

_vehicle_82 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [2546.3154, 5040.3423], [], 0, "CAN_COLLIDE"];
  _vehicle_82 = _this;
  _this setPos [2546.3154, 5040.3423];
};

_vehicle_83 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [2547.4565, 5038.563, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_83 = _this;
  _this setDir 40.833267;
  _this setPos [2547.4565, 5038.563, 1.5258789e-005];
};

_vehicle_84 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [2547.8555, 5037.645, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_84 = _this;
  _this setDir 43.672138;
  _this setPos [2547.8555, 5037.645, 4.5776367e-005];
};

_vehicle_85 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [2544.3538, 5041.0518], [], 0, "CAN_COLLIDE"];
  _vehicle_85 = _this;
  _this setDir -12.388364;
  _this setPos [2544.3538, 5041.0518];
};

_vehicle_86 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2537.2998, 5024.8672, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_86 = _this;
  _this setDir -35.366772;
  _this setPos [2537.2998, 5024.8672, -1.5258789e-005];
};

_vehicle_87 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2534.8, 5023.2061, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_87 = _this;
  _this setDir -32.246155;
  _this setPos [2534.8, 5023.2061, 1.5258789e-005];
};

_vehicle_88 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2532.3828, 5021.6201, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_88 = _this;
  _this setDir -31.242617;
  _this setPos [2532.3828, 5021.6201, 1.5258789e-005];
};

_vehicle_89 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2529.865, 5019.9922, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_89 = _this;
  _this setDir -30.85323;
  _this setPos [2529.865, 5019.9922, 1.5258789e-005];
};

_vehicle_90 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [2526.9614, 5019.229, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_90 = _this;
  _this setDir 56.598763;
  _this setPos [2526.9614, 5019.229, -1.5258789e-005];
};

_vehicle_91 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2562.5625, 5040.0801], [], 0, "CAN_COLLIDE"];
  _vehicle_91 = _this;
  _this setDir -31.512281;
  _this setPos [2562.5625, 5040.0801];
};

_vehicle_92 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2565.0876, 5041.5835], [], 0, "CAN_COLLIDE"];
  _vehicle_92 = _this;
  _this setDir -31.680746;
  _this setPos [2565.0876, 5041.5835];
};

_vehicle_93 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_long", [2567.6167, 5043.0293, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_93 = _this;
  _this setDir -31.812223;
  _this setPos [2567.6167, 5043.0293, 1.5258789e-005];
};

_vehicle_94 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [2583.0081, 5051.8901, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_94 = _this;
  _this setDir -27.138916;
  _this setPos [2583.0081, 5051.8901, -1.5258789e-005];
};

_vehicle_95 = objNull;
if (true) then
{
  _this = createVehicle ["Land_coneLight", [2585.8516, 5052.4976, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_95 = _this;
  _this setDir 40.318111;
  _this setPos [2585.8516, 5052.4976, -1.5258789e-005];
};

_vehicle_96 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [2570.0415, 5045.9268, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_96 = _this;
  _this setDir -123.29961;
  _this setPos [2570.0415, 5045.9268, -1.5258789e-005];
};

_vehicle_97 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [2566.0479, 5045.0361, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_97 = _this;
  _this setDir 146.4221;
  _this setPos [2566.0479, 5045.0361, -1.5258789e-005];
};

_vehicle_98 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [2564.2761, 5044.1016, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_98 = _this;
  _this setDir 152.85004;
  _this setPos [2564.2761, 5044.1016, 1.5258789e-005];
};

_vehicle_99 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [2567.4873, 5045.2695, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_99 = _this;
  _this setPos [2567.4873, 5045.2695, 3.0517578e-005];
};

_vehicle_100 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [2521.498, 5048.2847, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_100 = _this;
  _this setDir 28.143488;
  _this setPos [2521.498, 5048.2847, -1.5258789e-005];
};

_vehicle_103 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1Eo_EP1", [2504.25, 5046.8457], [], 0, "CAN_COLLIDE"];
  _vehicle_103 = _this;
  _this setDir -5.0607224;
  _this setPos [2504.25, 5046.8457];
};

_vehicle_105 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [11225.398, 6604.6182, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_105 = _this;
  _this setDir 214.65778;
  _this setPos [11225.398, 6604.6182, -1.5258789e-005];
};

_vehicle_106 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [11221.181, 6600.8364, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_106 = _this;
  _this setPos [11221.181, 6600.8364, 6.1035156e-005];
};

_vehicle_107 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [11221.954, 6596.7197, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_107 = _this;
  _this setPos [11221.954, 6596.7197, -1.5258789e-005];
};

_vehicle_108 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [11221.582, 6595.3252, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_108 = _this;
  _this setDir -146.7935;
  _this setPos [11221.582, 6595.3252, -7.6293945e-006];
};

_vehicle_109 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [11221.303, 6593.8169, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_109 = _this;
  _this setDir -118.50682;
  _this setPos [11221.303, 6593.8169, -2.2888184e-005];
};

_vehicle_110 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [11222.526, 6595.6807, 5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_110 = _this;
  _this setDir 27.831564;
  _this setPos [11222.526, 6595.6807, 5.3405762e-005];
};

_vehicle_111 = objNull;
if (true) then
{
  _this = createVehicle ["Land_coneLight", [11217.92, 6593.626, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_111 = _this;
  _this setPos [11217.92, 6593.626, -3.0517578e-005];
};

_vehicle_112 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [11217.246, 6595.6089], [], 0, "CAN_COLLIDE"];
  _vehicle_112 = _this;
  _this setDir 35.686485;
  _this setPos [11217.246, 6595.6089];
};

_vehicle_113 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_empty", [11222.737, 6594.5332, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_113 = _this;
  _this setPos [11222.737, 6594.5332, 7.6293945e-006];
};

_vehicle_114 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_empty", [2728.415, 10002.362], [], 0, "CAN_COLLIDE"];
  _vehicle_114 = _this;
  _this setPos [2728.415, 10002.362];
};

_vehicle_115 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_sand", [2729.4009, 10001.913], [], 0, "CAN_COLLIDE"];
  _vehicle_115 = _this;
  _this setPos [2729.4009, 10001.913];
};

_vehicle_116 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [2734.6604, 9995.666], [], 0, "CAN_COLLIDE"];
  _vehicle_116 = _this;
  _this setPos [2734.6604, 9995.666];
};

_vehicle_117 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [2740.6436, 9992.1055], [], 0, "CAN_COLLIDE"];
  _vehicle_117 = _this;
  _this setDir 99.159607;
  _this setPos [2740.6436, 9992.1055];
};

_vehicle_118 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [2740.3809, 10000.461], [], 0, "CAN_COLLIDE"];
  _vehicle_118 = _this;
  _this setDir -92.674843;
  _this setPos [2740.3809, 10000.461];
};

_vehicle_119 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [2740.5559, 9995.0596, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_119 = _this;
  _this setDir 80.231827;
  _this setPos [2740.5559, 9995.0596, -3.0517578e-005];
};

_vehicle_120 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Checkpoint_EP1", [2741.719, 9996.3633], [], 0, "CAN_COLLIDE"];
  _vehicle_120 = _this;
  _this setPos [2741.719, 9996.3633];
};

_vehicle_121 = objNull;
if (true) then
{
  _this = createVehicle ["Land_coneLight", [2742.1575, 9995.5342], [], 0, "CAN_COLLIDE"];
  _vehicle_121 = _this;
  _this setPos [2742.1575, 9995.5342];
};

_vehicle_122 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [2737.3777, 9995.8818], [], 0, "CAN_COLLIDE"];
  _vehicle_122 = _this;
  _this setPos [2737.3777, 9995.8818];
};

_vehicle_123 = objNull;
if (true) then
{
  _this = createVehicle ["SmallTable", [2735.3682, 9996.0479, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_123 = _this;
  _this setPos [2735.3682, 9996.0479, -3.0517578e-005];
};

_vehicle_124 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [2737.9243, 9994.4844, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_124 = _this;
  _this setDir 150.55949;
  _this setPos [2737.9243, 9994.4844, 3.0517578e-005];
};

_vehicle_125 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Chair_EP1", [2736.3899, 9997.3438], [], 0, "CAN_COLLIDE"];
  _vehicle_125 = _this;
  _this setDir 34.580292;
  _this setPos [2736.3899, 9997.3438];
};

_vehicle_126 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [2735.4868, 9995.3096], [], 0, "CAN_COLLIDE"];
  _vehicle_126 = _this;
  _this setDir 183.51999;
  _this setPos [2735.4868, 9995.3096];
};

_vehicle_127 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [2732.272, 10004.515, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_127 = _this;
  _this setDir -180.63632;
  _this setPos [2732.272, 10004.515, 3.0517578e-005];
};

_vehicle_128 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [2739.0244, 9995.6133, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_128 = _this;
  _this setDir -71.211578;
  _this setPos [2739.0244, 9995.6133, -6.1035156e-005];
};

_vehicle_129 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [2741.4714, 10000.214, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_129 = _this;
  _this setDir -85.319763;
  _this setPos [2741.4714, 10000.214, -3.0517578e-005];
};

_vehicle_130 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [9481.8828, 8827.1201, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_130 = _this;
  _this setDir -6.7635388;
  _this setPos [9481.8828, 8827.1201, 3.0517578e-005];
};

_vehicle_131 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Checkpoint_EP1", [9480.7344, 8823.9365], [], 0, "CAN_COLLIDE"];
  _vehicle_131 = _this;
  _this setDir 84.494102;
  _this setPos [9480.7344, 8823.9365];
};

_vehicle_132 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [9482.5176, 8835.8594], [], 0, "CAN_COLLIDE"];
  _vehicle_132 = _this;
  _this setDir 173.8197;
  _this setPos [9482.5176, 8835.8594];
};

_vehicle_133 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small_EP1", [9488.9951, 8840.7168, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_133 = _this;
  _this setPos [9488.9951, 8840.7168, 3.0517578e-005];
};

_vehicle_134 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [9480.4072, 8831.4082, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_134 = _this;
  _this setDir 19.875784;
  _this setPos [9480.4072, 8831.4082, -3.0517578e-005];
};

_vehicle_135 = objNull;
if (true) then
{
  _this = createVehicle ["SmallTable", [9482.2148, 8826.1855, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_135 = _this;
  _this setPos [9482.2148, 8826.1855, -3.0517578e-005];
};

_vehicle_136 = objNull;
if (true) then
{
  _this = createVehicle ["SmallTable", [9483.6416, 8826.2627], [], 0, "CAN_COLLIDE"];
  _vehicle_136 = _this;
  _this setDir -22.38249;
  _this setPos [9483.6416, 8826.2627];
};

_vehicle_137 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Chair_EP1", [9483.1787, 8827.668, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_137 = _this;
  _this setDir 33.356472;
  _this setPos [9483.1787, 8827.668, -3.0517578e-005];
};

_vehicle_138 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [6467.0488, 2859.6125, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_138 = _this;
  _this setDir -57.114166;
  _this setPos [6467.0488, 2859.6125, -1.4305115e-006];
};

_vehicle_139 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [6463.9697, 2855.6016, -1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_139 = _this;
  _this setDir -48.783653;
  _this setPos [6463.9697, 2855.6016, -1.1920929e-005];
};

_vehicle_140 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [6448.335, 2836.4265, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_140 = _this;
  _this setDir -51.559177;
  _this setPos [6448.335, 2836.4265, 8.5830688e-006];
};

_vehicle_141 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [6468.7021, 2857.9099, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_141 = _this;
  _this setDir 72.77198;
  _this setPos [6468.7021, 2857.9099, -9.5367432e-007];
};

_vehicle_142 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [6450.459, 2836.1235, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_142 = _this;
  _this setDir 83.725075;
  _this setPos [6450.459, 2836.1235, 5.7220459e-006];
};

_vehicle_143 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [6447.2778, 2835.0403, 4.7206879e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_143 = _this;
  _this setPos [6447.2778, 2835.0403, 4.7206879e-005];
};

_vehicle_144 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNet_EAST", [6467.4121, 2856.0537, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_144 = _this;
  _this setDir 125.67964;
  _this setPos [6467.4121, 2856.0537, 4.7683716e-006];
};

_vehicle_145 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetVar_EAST", [6448.1338, 2833.1665, -6.1988831e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_145 = _this;
  _this setDir 127.57027;
  _this setPos [6448.1338, 2833.1665, -6.1988831e-006];
};

_vehicle_146 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [6464.2578, 2852.3643, -7.1525574e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_146 = _this;
  _this setPos [6464.2578, 2852.3643, -7.1525574e-006];
};

_vehicle_147 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [6448.6655, 2835.3147, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_147 = _this;
  _this setDir 125.82433;
  _this setPos [6448.6655, 2835.3147, 1.1444092e-005];
};

_vehicle_148 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [6468.2852, 2859.7227, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_148 = _this;
  _this setDir 118.59022;
  _this setPos [6468.2852, 2859.7227, -9.5367432e-007];
};

_vehicle_149 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [6461.4302, 2848.2085, -1.7166138e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_149 = _this;
  _this setDir -51.668037;
  _this setPos [6461.4302, 2848.2085, -1.7166138e-005];
};

_vehicle_150 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [6456.9556, 2842.519, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_150 = _this;
  _this setDir -52.518345;
  _this setPos [6456.9556, 2842.519, 4.7683716e-007];
};

_vehicle_151 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1Eo_EP1", [6430.4048, 2831.6782, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_151 = _this;
  _this setDir -57.289318;
  _this setPos [6430.4048, 2831.6782, 3.8146973e-006];
};

_vehicle_152 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetB_EAST", [6462.4043, 2875.875, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_152 = _this;
  _this setDir 52.20097;
  _this setPos [6462.4043, 2875.875, 2.8610229e-006];
};

_vehicle_153 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [6460.9082, 2874.2813, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_153 = _this;
  _this setDir -15.644642;
  _this setPos [6460.9082, 2874.2813, -7.6293945e-006];
};

_vehicle_154 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small2", [6458.6387, 2876.4482, -1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_154 = _this;
  _this setDir 47.866081;
  _this setPos [6458.6387, 2876.4482, -1.335144e-005];
};

_vehicle_155 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [6463.6343, 2871.7195, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_155 = _this;
  _this setDir -51.474575;
  _this setPos [6463.6343, 2871.7195, -1.9073486e-006];
};

_vehicle_156 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [6463.9404, 2870.0652, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_156 = _this;
  _this setPos [6463.9404, 2870.0652, -2.8610229e-006];
};

_vehicle_158 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big_EP1", [6421.5405, 2851.0945, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_158 = _this;
  _this setDir -107.70848;
  _this setPos [6421.5405, 2851.0945, -2.2888184e-005];
};

_vehicle_159 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Antenna", [6418.9146, 2846.179, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_159 = _this;
  _this setPos [6418.9146, 2846.179, 7.6293945e-006];
};

_vehicle_161 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [6445.4878, 2851.8953, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_161 = _this;
  _this setDir -76.063042;
  _this setPos [6445.4878, 2851.8953, -3.3378601e-006];
};

_vehicle_162 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [6444.2773, 2857.0557, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_162 = _this;
  _this setDir 27.146683;
  _this setPos [6444.2773, 2857.0557, 6.6757202e-006];
};

_vehicle_163 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [6444.7266, 2854.033, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_163 = _this;
  _this setDir -50.484329;
  _this setPos [6444.7266, 2854.033, 4.7683716e-007];
};

_vehicle_164 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [6445.9897, 2854.7227, -1.2397766e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_164 = _this;
  _this setDir -40.448101;
  _this setPos [6445.9897, 2854.7227, -1.2397766e-005];
};

_vehicle_165 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [6442.4507, 2854.2329, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_165 = _this;
  _this setDir -41.877338;
  _this setPos [6442.4507, 2854.2329, 1.1444092e-005];
};

_vehicle_166 = objNull;
if (true) then
{
  _this = createVehicle ["Body", [6447.4575, 2855.8748, -5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_166 = _this;
  _this setDir -49.853859;
  _this setPos [6447.4575, 2855.8748, -5.2452087e-006];
};

_vehicle_167 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel5", [6449.0103, 2878.3413, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_167 = _this;
  _this setPos [6449.0103, 2878.3413, -3.8146973e-006];
};

_vehicle_168 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [6448.0884, 2877.542, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_168 = _this;
  _this setPos [6448.0884, 2877.542, 1.4305115e-006];
};

_vehicle_169 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [6447.1729, 2878.7288, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_169 = _this;
  _this setDir -48.098293;
  _this setPos [6447.1729, 2878.7288, -9.5367432e-007];
};

_vehicle_170 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [6420.6182, 2858.4814, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_170 = _this;
  _this setDir 32.866436;
  _this setPos [6420.6182, 2858.4814, 4.7683716e-007];
};

_vehicle_171 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [6434.7744, 2871.5374, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_171 = _this;
  _this setPos [6434.7744, 2871.5374, 9.5367432e-007];
};

_vehicle_173 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [10490.894, 2338.2461, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_173 = _this;
  _this setDir 46.107292;
  _this setPos [10490.894, 2338.2461, -9.1552734e-005];
};

_vehicle_174 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big_EP1", [10486.633, 2344.8535, 1.7166138e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_174 = _this;
  _this setDir -105.92007;
  _this setPos [10486.633, 2344.8535, 1.7166138e-005];
};

_vehicle_175 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [10499.387, 2351.2358, 2.0027161e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_175 = _this;
  _this setDir -47.441364;
  _this setPos [10499.387, 2351.2358, 2.0027161e-005];
};

_vehicle_176 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [10509.118, 2350.5916, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_176 = _this;
  _this setDir 47.190044;
  _this setPos [10509.118, 2350.5916, -2.8610229e-006];
};

_vehicle_177 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [10506.618, 2347.9399, -2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_177 = _this;
  _this setDir -67.972977;
  _this setPos [10506.618, 2347.9399, -2.4795532e-005];
};

_vehicle_178 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [10504.322, 2345.8364, -1.2397766e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_178 = _this;
  _this setDir -20.663525;
  _this setPos [10504.322, 2345.8364, -1.2397766e-005];
};

_vehicle_179 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [10505.279, 2344.9058, -1.6212463e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_179 = _this;
  _this setDir -44.99279;
  _this setPos [10505.279, 2344.9058, -1.6212463e-005];
};

_vehicle_180 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [10507.396, 2347.0789, 5.9127808e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_180 = _this;
  _this setDir -50.239395;
  _this setPos [10507.396, 2347.0789, 5.9127808e-005];
};

_vehicle_181 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [10505.396, 2346.9014, 6.8187714e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_181 = _this;
  _this setPos [10505.396, 2346.9014, 6.8187714e-005];
};

_vehicle_182 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_1L_Firstaid", [10504.195, 2344.7397, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_182 = _this;
  _this setDir -49.055401;
  _this setPos [10504.195, 2344.7397, -7.6293945e-006];
};

_vehicle_183 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [10508.006, 2351.5378, -2.7179718e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_183 = _this;
  _this setPos [10508.006, 2351.5378, -2.7179718e-005];
};

_vehicle_184 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNet_EAST", [10481.872, 2334.1079, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_184 = _this;
  _this setDir -127.99093;
  _this setPos [10481.872, 2334.1079, -3.8146973e-006];
};

_vehicle_185 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Medium", [10482.084, 2337.0356, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_185 = _this;
  _this setPos [10482.084, 2337.0356, 1.9073486e-006];
};

_vehicle_186 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [10480.961, 2335.5251, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_186 = _this;
  _this setDir -38.054096;
  _this setPos [10480.961, 2335.5251, 9.5367432e-007];
};

_vehicle_187 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [10479.976, 2337.759, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_187 = _this;
  _this setDir 84.955566;
  _this setPos [10479.976, 2337.759, 1.9073486e-006];
};

_vehicle_188 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_tiny", [10483.461, 2332.2107], [], 0, "CAN_COLLIDE"];
  _vehicle_188 = _this;
  _this setDir -44.305164;
  _this setPos [10483.461, 2332.2107];
};

_vehicle_189 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [7068.2495, 7691.2363, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_189 = _this;
  _this setPos [7068.2495, 7691.2363, 3.0517578e-005];
};

_vehicle_190 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel5", [7064.0054, 7695.9941, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_190 = _this;
  _this setDir 186.44452;
  _this setPos [7064.0054, 7695.9941, 3.0517578e-005];
};

_vehicle_191 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [7086.9736, 7707.4561], [], 0, "CAN_COLLIDE"];
  _vehicle_191 = _this;
  _this setPos [7086.9736, 7707.4561];
};

_vehicle_192 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [7089.2568, 7702.7397, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_192 = _this;
  _this setPos [7089.2568, 7702.7397, 3.0517578e-005];
};

_vehicle_193 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [7079.9854, 7696.731], [], 0, "CAN_COLLIDE"];
  _vehicle_193 = _this;
  _this setDir 70.554413;
  _this setPos [7079.9854, 7696.731];
};

_vehicle_194 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [7079.6899, 7700.3638, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_194 = _this;
  _this setDir 45.029724;
  _this setPos [7079.6899, 7700.3638, -3.0517578e-005];
};

_vehicle_195 = objNull;
if (true) then
{
  _this = createVehicle ["SmallTable", [7078.8374, 7699.6538], [], 0, "CAN_COLLIDE"];
  _vehicle_195 = _this;
  _this setDir 68.850151;
  _this setPos [7078.8374, 7699.6538];
};

_vehicle_196 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Chair_EP1", [10503.998, 2343.5947, -9.059906e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_196 = _this;
  _this setPos [10503.998, 2343.5947, -9.059906e-006];
};

_vehicle_197 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Canister_EP1", [10487.816, 2347.4585, -2.6226044e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_197 = _this;
  _this setDir -145.5163;
  _this setPos [10487.816, 2347.4585, -2.6226044e-005];
};

_vehicle_199 = objNull;
if (true) then
{
  _this = createVehicle ["RoadBarrier_long", [10502.189, 2337.1807, -2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_199 = _this;
  _this setDir 115.30276;
  _this setPos [10502.189, 2337.1807, -2.4795532e-005];
};

_vehicle_203 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_container", [10491.142, 2328.6189, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_203 = _this;
  _this setDir -16.727959;
  _this setPos [10491.142, 2328.6189, -1.9073486e-006];
};

_vehicle_204 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [6466.3184, 2858.2903, 4.7683716e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_204 = _this;
  _this setPos [6466.3184, 2858.2903, 4.7683716e-007];
};

_vehicle_205 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [6431.8496, 2868.8757, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_205 = _this;
  _this setPos [6431.8496, 2868.8757, -2.8610229e-006];
};

_vehicle_206 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Chair_EP1", [6465.5605, 2853.947, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_206 = _this;
  _this setDir -117.32366;
  _this setPos [6465.5605, 2853.947, -3.8146973e-006];
};

_vehicle_212 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [6451.2754, 2864.0601, 9.059906e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_212 = _this;
  _this setDir 36.796093;
  _this setPos [6451.2754, 2864.0601, 9.059906e-006];
};

_vehicle_215 = objNull;
if (true) then
{
  _this = createVehicle ["USMC_WarfareBFieldhHospital", [6434.6572, 2840.9312, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_215 = _this;
  _this setDir 127.76546;
  _this setPos [6434.6572, 2840.9312, 1.9073486e-006];
};

_vehicle_220 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [6420.9883, 2842.5117, -2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_220 = _this;
  _this setDir -31.919598;
  _this setPos [6420.9883, 2842.5117, -2.4795532e-005];
};

_vehicle_221 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_Crate_wood", [6420.0752, 2839.551, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_221 = _this;
  _this setPos [6420.0752, 2839.551, 2.8610229e-006];
};

_vehicle_222 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [6448.8726, 2880.2793, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_222 = _this;
  _this setPos [6448.8726, 2880.2793, -1.1444092e-005];
};

_vehicle_224 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetVar_EAST", [2521.3044, 5064.5029, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_224 = _this;
  _this setDir -29.964729;
  _this setPos [2521.3044, 5064.5029, 1.5258789e-005];
};

_vehicle_225 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small2", [2523.8408, 5064.7251], [], 0, "CAN_COLLIDE"];
  _vehicle_225 = _this;
  _this setDir -33.010609;
  _this setPos [2523.8408, 5064.7251];
};

_vehicle_227 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [2542.5684, 5059.0234, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_227 = _this;
  _this setPos [2542.5684, 5059.0234, -1.5258789e-005];
};

_vehicle_228 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [2520.522, 5062.7461], [], 0, "CAN_COLLIDE"];
  _vehicle_228 = _this;
  _this setPos [2520.522, 5062.7461];
};

_vehicle_229 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel5", [2518.0369, 5062.5254], [], 0, "CAN_COLLIDE"];
  _vehicle_229 = _this;
  _this setPos [2518.0369, 5062.5254];
};

_vehicle_230 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel5", [2519.5864, 5061.52, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_230 = _this;
  _this setDir 99.81076;
  _this setPos [2519.5864, 5061.52, 1.5258789e-005];
};

_vehicle_231 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [9489.5713, 8837.2451], [], 0, "CAN_COLLIDE"];
  _vehicle_231 = _this;
  _this setPos [9489.5713, 8837.2451];
};

_vehicle_232 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [7068.6313, 7704.0874], [], 0, "CAN_COLLIDE"];
  _vehicle_232 = _this;
  _this setDir 72.630669;
  _this setPos [7068.6313, 7704.0874];
};

_vehicle_237 = objNull;
if (true) then
{
  _this = createVehicle ["SatPhone", [7078.7554, 7699.4609, 0.81915307], [], 0, "CAN_COLLIDE"];
  _vehicle_237 = _this;
  _this setDir -159.99495;
  _this setPos [7078.7554, 7699.4609, 0.81915307];
};

_vehicle_238 = objNull;
if (true) then
{
  _this = createVehicle ["EvMoscow", [7552.8999, 5169.3916, 0.80763215], [], 0, "CAN_COLLIDE"];
  _vehicle_238 = _this;
  _this setPos [7552.8999, 5169.3916, 0.80763215];
};

_vehicle_239 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [7558.5679, 5163.0386], [], 0, "CAN_COLLIDE"];
  _vehicle_239 = _this;
  _this setDir 14.207856;
  _this setPos [7558.5679, 5163.0386];
};

_vehicle_240 = objNull;
if (true) then
{
  _this = createVehicle ["MetalBucket", [10492.828, 2341.5984, -2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_240 = _this;
  _this setPos [10492.828, 2341.5984, -2.4795532e-005];
};

_vehicle_241 = objNull;
if (true) then
{
  _this = createVehicle ["Laptop_EP1", [10507.108, 2347.1702, 0.79474109], [], 0, "CAN_COLLIDE"];
  _vehicle_241 = _this;
  _this setDir 85.813072;
  _this setPos [10507.108, 2347.1702, 0.79474109];
};

_vehicle_243 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Checkpoint_EP1", [11216.757, 6593.9785, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_243 = _this;
  _this setDir -49.163498;
  _this setPos [11216.757, 6593.9785, 7.6293945e-006];
};

_vehicle_244 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [9487.1201, 8829.0918, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_244 = _this;
  _this setDir 45.518124;
  _this setPos [9487.1201, 8829.0918, -3.0517578e-005];
};

_vehicle_245 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [9487.1406, 8830.5635], [], 0, "CAN_COLLIDE"];
  _vehicle_245 = _this;
  _this setDir 83.199791;
  _this setPos [9487.1406, 8830.5635];
};

_vehicle_246 = objNull;
if (true) then
{
  _this = createVehicle ["WoodChair", [9486.915, 8831.4287], [], 0, "CAN_COLLIDE"];
  _vehicle_246 = _this;
  _this setDir 55.951912;
  _this setPos [9486.915, 8831.4287];
};
};