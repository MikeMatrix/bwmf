// Colors
#define RED [1,0,0,1]
#define GREEN [0,1,0,1]
#define BLUE [0,0,1,1]
#define YELLOW [1,1,0,1]
#define ORANGE [1,0.647,0,1]
#define BLACK [0,0,0,1]
#define PINK [1,0.753,0.796,1]
#define WHITE [1,1,1,1]
// Icon Paths
#define FIRETEAM_ICON "\A3\ui_f\data\map\markers\nato\b_inf.paa"
#define UNKNOWN_ICON "\A3\ui_f\data\map\markers\nato\b_unknown.paa"
#define HQ_ICON "\A3\ui_f\data\map\markers\nato\bHQ_ICON.paa"
#define SUPPORT_ICON "\A3\ui_f\data\map\markers\nato\b_support.paa" // MMG HMG
#define SUPPORT_AT_ICON "\A3\ui_f\data\map\markers\nato\b_motor_inf.paa" // MAT HAT
#define RECON_ICON "\A3\ui_f\data\map\markers\nato\b_recon.paa" // Sniper
#define MORTAR_ICON "\A3\ui_f\data\map\markers\nato\b_mortar.paa" // Mortar
#define MAINTENANCE_ICON "\A3\ui_f\data\map\markers\nato\b_maint.paa" // Engineers
#define MECH_ICON "\A3\ui_f\data\map\markers\nato\b_mech_inf.paa" // IFV/APC
#define ARMOR_ICON "\A3\ui_f\data\map\markers\nato\b_armor.paa" // Tank
#define AIR_ICON "\A3\ui_f\data\map\markers\nato\b_air.paa" // Helos
#define PLANE_ICON "\A3\ui_f\data\map\markers\nato\b_plane.paa" // Planes
#define ARTILLERY_ICON "\A3\ui_f\data\map\markers\nato\b_art.paa" // Artillery
#define MEDIC_ICON "\A3\ui_f\data\map\markers\nato\bMEDIC_ICON.paa" // Medic
// Sizes
#define NORMAL_SIZE [24, 24]
#define SMALL_SIZE [16, 16]

params ["_input"];

if (isNil "F_markers_groupMarkerStyleSettings") then {
  F_markers_groupMarkerStyleSettings = [[], [], []];
  [F_markers_groupMarkerStyleSettings, ["COY", "1PLT", "2PLT", "CO", "DC"], [HQ_ICON, YELLOW, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["ASL"], [HQ_ICON, RED, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["A1", "A2", "A3", "ASR"], [FIRETEAM_ICON, RED, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["BSL"], [HQ_ICON, BLUE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["B1", "B2", "B3", "BSR"], [FIRETEAM_ICON, BLUE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["CSL"], [HQ_ICON, GREEN, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["C1", "C2", "C3", "CSR"], [FIRETEAM_ICON, GREEN, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["DSL"], [HQ_ICON, RED, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["D1","D2","D3","DSR"], [FIRETEAM_ICON, RED, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["ESL"], [HQ_ICON, BLUE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["E1", "E2", "E3", "ESR"], [FIRETEAM_ICON, BLUE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["FSL"], [HQ_ICON, GREEN, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["F1", "F2", "F3", "FSR"], [FIRETEAM_ICON, GREEN, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["WSL"], [HQ_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["MMG1", "MMG2", "MMG3"], [SUPPORT_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["HMG1", "HMG2", "HMG3"], [SUPPORT_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["MAT1", "MAT2", "MAT3"], [SUPPORT_AT_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["HAT1", "HAT2", "HAT3"], [SUPPORT_AT_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["MSAM1", "MSAM2", "MSAM3"], [SUPPORT_AT_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["HSAM1", "HSAM2", "HSAM3"], [SUPPORT_AT_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["MTR1", "MTR2", "MTR3"], [MORTAR_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["ST1", "ST2", "ST3"], [RECON_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["DT1", "DT2", "DT3"], [RECON_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["ENG1", "ENG2", "ENG3"], [MAINTENANCE_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["IFV1", "IFV2"], [MECH_ICON, RED, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["IFV3", "IFV4"], [MECH_ICON, BLUE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["IFV5", "IFV6"], [MECH_ICON, GREEN, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["IFV7", "IFV8"], [MECH_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["TNK1", "TNK2", "TNK3"], [ARMOR_ICON, RED, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["TH1", "TH2"], [AIR_ICON, RED, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["TH3", "TH4"], [AIR_ICON, BLUE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["TH5", "TH6"], [AIR_ICON, GREEN, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["TH7", "TH8"], [AIR_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["AH1", "AH2", "AH3"], [AIR_ICON, ORANGE, NORMAL_SIZE]] call F_fnc_addAllOneToMany;
  [F_markers_groupMarkerStyleSettings, ["COM", "DCM", "P1M", "P2M", "AM", "BM", "CM", "DM", "EM", "FM", "WSM"], [MEDIC_ICON, PINK, SMALL_SIZE]] call F_fnc_addAllOneToMany;
};

private _result = [F_markers_groupMarkerStyleSettings, _input] call F_fnc_getOneToManyByKey;

if (isNil "_result") exitWith { [UNKNOWN_ICON, WHITE, NORMAL_SIZE] };
_result
