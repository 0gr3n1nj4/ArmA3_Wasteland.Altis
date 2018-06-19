// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
# @@Editors: Ekk0, 0gr3 N1nj4
# @@Edit Date: 2018-6-18 23:38:30
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	["PM Pistol", "hgun_Pistol_01_F", 25],
	["P07 Pistol", "hgun_P07_F", 50],
	["P07 Pistol (Khaki)", "hgun_P07_khk_F", 50, "noDLC"],
	["Rook-40 Pistol", "hgun_Rook40_F", 50],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 75],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 75],
	["4-Five Pistol", "hgun_Pistol_heavy_01_F", 100],
	
	// RHSUSAF Handguns
	["Glock 17", "rhsusf_weap_glock17g4", 50],
	["M1911A1", "rhsusf_weap_m1911a1", 100],
	["M9 Beretta", "rhsusf_weap_m9", 50],
	["M320 GLM", "rhs_weap_M320", 200],
	
	// RHSGREF Handguns
	["Sa vz. 61 (Folded)", "rhs_weap_savz61_folded", 200],
	["TT-33", "rhs_weap_tt33", 75],
	
	// RHSAFRF Handguns
	["PB", "rhs_weap_pb_6p9", 50],
	["Grach", "rhs_weap_pya", 50],
	["Makarov", "rhs_weap_makarov_pm", 50],
	["PP-2000", "rhs_weap_pp2000_folded", 200],
	["TR-8 Parascope", "rhs_weap_tr8", 25]
];

smgArray = compileFinal str
[
	["PDW2000 SMG", "hgun_PDW2000_F", 100],
	["Protector SMG", "SMG_05_F", 100],
	["Sting SMG", "SMG_02_F", 125],
	["Vermin SMG", "SMG_01_F", 125],
	
	// RHSUSAF SMGS
	["MP7A2", "rhsusf_weap_MP7A2", 150],
	["MP7A2 (Desert)", "rhsusf_weap_MP7A2_desert", 150],
	["MP7A2 (Winter)", "rhsusf_weap_MP7A2_winter", 150],
	["MP7A2 (AOR1)", "rhsusf_weap_MP7A2_aor1", 150],

	// RHSSAF SMGS
	["M84A Scorpion", "rhs_weap_scorpion", 75],

	// RHSGREF SMGS
	["M92", "rhs_weap_m92", 100],

	// RHSAFRF SMGS
	["AKS-74U", "rhs_weap_aks74u", 125],
	["AKS-74UN", "rhs_weap_aks74un", 150],
	["PP-2000", "rhs_weap_pp2000", 125],

	// RHS Shot Guns
	["IZh-18 12 Gauge", "rhs_weap_izh18", 150],
	["M590A1 (Long)", "rhs_weap_M590_8RD", 250],
	["M590A1 (Short)", "rhs_weap_M590_5RD", 200]
];

rifleArray = compileFinal str
[
	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 100],

	// Assault Rifles
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 150],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 150],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 200],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 200],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 250],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 250],

	["TRG-20 Carbine", "arifle_TRG20_F", 150],
	["TRG-21 Rifle ", "arifle_TRG21_F", 200],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 250],

	["Katiba Carbine", "arifle_Katiba_C_F", 150],
	["Katiba Rifle", "arifle_Katiba_F", 200],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 250],

	["MX Carbine", "arifle_MXC_F", 150],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 150],
	["MX Carbine (Khaki)", "arifle_MXC_khk_F", 150, "noDLC"],
	["MX Rifle", "arifle_MX_F", 200],
	["MX Rifle (Black)", "arifle_MX_Black_F", 200],
	["MX Rifle (Khaki)", "arifle_MX_khk_F", 200, "noDLC"],
	["MX 3GL Rifle", "arifle_MX_GL_F", 250],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 250],
	["MX 3GL Rifle (Khaki)", "arifle_MX_GL_khk_F", 250, "noDLC"],

	["SPAR-16 Rifle", "arifle_SPAR_01_blk_F", 200],
	["SPAR-16 Rifle (Khaki)", "arifle_SPAR_01_khk_F", 200],
	["SPAR-16 Rifle (Sand)", "arifle_SPAR_01_snd_F", 200],
	["SPAR-16 GL Rifle", "arifle_SPAR_01_GL_blk_F", 250],
	["SPAR-16 GL Rifle (Khaki)", "arifle_SPAR_01_GL_khk_F", 250],
	["SPAR-16 GL Rifle (Sand)", "arifle_SPAR_01_GL_snd_F", 250],

	["CAR-95 Rifle", "arifle_CTAR_blk_F", 200],
	["CAR-95 Rifle (Hex)", "arifle_CTAR_hex_F", 200],
	["CAR-95 Rifle (G Hex)", "arifle_CTAR_ghex_F", 200],
	["CAR-95 GL Rifle", "arifle_CTAR_GL_blk_F", 250],
	["CAR-95 GL Rifle (Hex)", "arifle_CTAR_GL_hex_F", 250],
	["CAR-95 GL Rifle (G Hex)", "arifle_CTAR_GL_ghex_F", 250],
	["Type 115 Stealth Rifle", "arifle_ARX_blk_F", 300],
	["Type 115 Stealth Rifle (Hex)", "arifle_ARX_hex_F", 300],
	["Type 115 Stealth Rifle (G Hex)", "arifle_ARX_ghex_F", 300],

	["AKS-74U Carbine", "arifle_AKS_F", 150],
	["AKM Rifle", "arifle_AKM_F", 200],
	["AK-12 Rifle", "arifle_AK12_F", 250],
	["AK-12 GL Rifle", "arifle_AK12_GL_F", 300],
	
	// RHSUSAF Assault Rifles
	["M4", "rhs_weap_m4", 200],
	["M4 (PMAG)", "rhs_weap_m4_pmag", 200],
	["M4 (Carry Handle)", "rhs_weap_m4_carryhandle", 200],
	["M4 (Carry Handle/PMAG)", "rhs_weap_m4_carryhandle_pmag", 200],
	["M4 (Carry Handle/PMAG/M Stock)", "rhs_weap_m4_carryhandle_mstock", 200],
	["M4 (PMAG/Magpull Stock)", "rhs_weap_m4_mstock", 200],
	["M4 (M203)", "rhs_weap_m4_m203", 300],
	["M4 (M203S)", "rhs_weap_m4_m203s", 300],
	["M4 (M320)", "rhs_weap_m4_m320", 350],
	
	["M4A1 PIP", "rhs_weap_m4a1", 200],
	["M4A1 PIP (PMAG)", "rhs_weap_m4a1_pmag", 200],
	["M4A1 PIP (PMAG/MagPull Stock)", "rhs_weap_m4a1_mstock", 200],
	["M4A1 PIP (Desert)", "rhs_weap_m4a1_d", 200],
	["M4A1 PIP (Desert/PMAG/Magpull Stock)", "rhs_weap_m4a1_d_mstock", 200],
	["M4A1 PIP (Woodland)", "rhs_weap_m4a1_wd", 200],
	["M4A1 PIP (Woodland/PMAG/Magpull Stock)", "rhs_weap_m4a1_wd_mstock", 200],
	["M4A1 PIP (M203)", "rhs_weap_m4a1_M203", 300],
	["M4A1 PIP (M203S)", "rhs_weap_m4a1_M203s", 300],
	["M4A1 PIP (Desert/M203S)", "rhs_weap_m4a1_M203s_d", 300],
	["M4A1 PIP (Woodland/M203S)", "rhs_weap_m4a1_M203s_wd", 300],
	["M4A1 PIP (M320)", "rhs_weap_m4a1_M320", 350],
	["M4A1", "rhs_weap_m4a1_carryhandle", 150],
	["M4A1 (M203)", "rhs_weap_m4a1_carryhandle_m203", 250],
	["M4A1 (M203S)", "rhs_weap_m4a1_carryhandle_m203s", 250],
	
	["M4A1 Block II", "rhs_weap_m4a1_blockII", 200],
	["M4A1 Block II (M203)", "rhs_weap_m4a1_blockII_M203", 300],
	["M4A1 Block II (SOP Mod Stock)", "rhs_weap_m4a1_blockII_KAC", 250],
	["M4A1 Block II (Black)", "rhs_weap_m4a1_blockII_bk", 200],
	["M4A1 Block II (Black/M203)", "rhs_weap_m4a1_blockII_M203_bk", 300],
	["M4A1 Block II (Black/SOP Mod Stock)", "rhs_weap_m4a1_blockII_KAC_bk", 250],
	["M4A1 Block II (Desert)", "rhs_weap_m4a1_blockII_d", 200],
	["M4A1 Block II (Desert/M203)", "rhs_weap_m4a1_blockII_M203_d", 300],
	["M4A1 Block II (Desert/SOP Mod Stock)", "rhs_weap_m4a1_blockII_KAC_d", 250],
	["M4A1 Block II (Woodland)", "rhs_weap_m4a1_blockII_wd", 200],
	["M4A1 Block II (Woodland/M203)", "rhs_weap_m4a1_blockII_M203_wd", 300],
	["M4A1 Block II (Woodland/SOP Mod Stock)", "rhs_weap_m4a1_blockII_KAC_wd", 250],
	
	["HK416 D10", "rhs_weap_hk416d10", 200],
    ["HK416 D10 (M320)", "rhs_weap_hk416d10_m320", 350],
    ["HK416 D10 (SOP Mod Stock)", "rhs_weap_hk416d10_LMT", 250],
    ["HK416 D10 (SOP Mod Stock/Desert)", "rhs_weap_hk416d10_LMT_d", 250],
    ["HK416 D10 (SOP Mod Stock/Woodland)", "rhs_weap_hk416d10_LMT_wd", 250],
	
	["HK416 D14.5", "rhs_weap_hk416d145", 200],
	["HK416 D14.5 (Desert Grass)", "rhs_weap_hk416d145_d", 200],
	["HK416 D14.5 (Desert Net)", "rhs_weap_hk416d145_d_2", 200],
	["HK416 D14.5 (Woodland Grass)", "rhs_weap_hk416d145_wd", 200],
	["HK416 D14.5 (Woodland Net)", "rhs_weap_hk416d145_wd_2", 200],
	["HK416 D14.5 (M320)", "rhs_weap_hk416d145_m320", 350],
	
	["M16A4", "rhs_weap_m16a4", 200],
	["M16A4 (PMAG)", "rhs_weap_m16a4_pmag", 200],
	["M16A4 (Carry Handle)", "rhs_weap_m16a4_carryhandle", 150],
	["M16A4 (Carry Handle/M203)", "rhs_weap_m16a4_carryhandle_M203", 250],
	
	["M27 IAR", "rhs_weap_m27iar", 200],
	["M27 IAR (TD Grip)", "rhs_weap_m27iar_grip", 200],
	
	// RHSUSAF Grenade Launcher
	["M32", "rhs_weap_m32", 500],
	
	// RHSSAF Assault Rifles
	["HK G36C", "rhs_weap_g36c", 200],
	["HK G36KV", "rhs_weap_g36kv", 250],
	["HK G36KV (AG36)", "rhs_weap_g36kv_ag36", 300],
	
	["M21A (PBG)", "rhs_weap_m21a_pbg40", 200],
	["M21A (Rail/PBG)", "rhs_weap_m21a_pr_pbg40", 200],
	
	["M70B1N", "rhs_weap_m70b1n", 200],
	["M70B3N", "rhs_weap_m70b3n", 200],
	["M70B3N (PBG)", "rhs_weap_m70b3n_pbg40", 300],
	
	// RHSGREF Assault Rifles
	["M21A", "rhs_weap_m21a", 200],
	["M21A (Rail)", "rhs_weap_m21a_pr", 200],
	["M21S", "rhs_weap_m21s", 200],
	["M21S (Rail)", "rhs_weap_m21s_pr", 200],
	
	["M70AB2", "rhs_weap_m70ab2", 200],
	["M70B1", "rhs_weap_m70b1", 200],
	
	["Sa vz. 61", "rhs_weap_savz61", 200],
	
	["Sa vz. 58P", "rhs_weap_savz68p", 200],
	["Sa vz. 58P (Black)", "rhs_weap_savz68p_black", 200],
	["Sa vz. 58P (Rail)", "rhs_weap_savz68p_rail", 250],
	["Sa vz. 58P (Rail/Black)", "rhs_weap_savz68p_rail_black", 250],
	
	["Sa vz. 58V", "rhs_weap_savz68v", 200],
	["Sa vz. 58V (Black)", "rhs_weap_savz68v_black", 200],
	["Sa vz. 58V (Rail)", "rhs_weap_savz68v_rail", 250],
	["Sa vz. 58V (Rail/Black)", "rhs_weap_savz68v_rail_black", 250],

	// RHSAFRF Assault Rifles
	["AK-103", "rhs_weap_ak103", 200],
	["AK-103 (B-13)", "rhs_weap_ak103_npz", 200],
	["AK-103 (GP-25)", "rhs_weap_ak103_gp25", 300],
	["AK-103 (GP-25/B-13)", "rhs_weap_ak103_gp25_npz", 300],
	["AK-103 (Zenitco)", "rhs_weap_ak103_zenitco01", 250],
	["AK-103 (Zenitco/B-33)", "rhs_weap_ak103_zenitco01_b33", 250],
	["AK-103-1", "rhs_weap_ak103_1", 200],
	["AK-103-1 (B-13)", "rhs_weap_ak103_1_npz", 200],
	["AK-103-2", "rhs_weap_ak103_2", 200],
	["AK-103-2 (B-13)", "rhs_weap_ak103_2_npz", 200],

	["AK-104", "rhs_weap_ak104", 200],
	["AK-104 (B-13)", "rhs_weap_ak104_npz", 200],
	["AK-104 (Zenitco)", "rhs_weap_ak104_zenitco01", 250],
	["AK-104 (Zenitco/B-33)", "rhs_weap_ak104_zenitco01_b33", 250],

	["AK-105", "rhs_weap_ak105", 200],
	["AK-105 (B-13)", "rhs_weap_ak105_npz", 200],
	["AK-105 (Zenitco)", "rhs_weap_ak105_zenitco01", 250],
	["AK-105 (Zenitco/B-33)", "rhs_weap_ak105_zenitco01_b33", 250],

	["AK-74", "rhs_weap_ak74", 175],
	["AK-74 (Green)", "rhs_weap_ak74_3", 175],
	["AK-74 (Plum)", "rhs_weap_ak74_2", 175],
	["AK-74 (GP-25)", "rhs_weap_ak74_gp25", 300],

	["PM63", "rhs_weap_pm63", 200],
	["AK-74M", "rhs_weap_ak74m", 200],
	["AK-74M (2 Mag.)", "rhs_weap_ak74m_2mag", 200],
	["AK-74M (2 Mag./B13)", "rhs_weap_ak74m_2mag_npz", 200],
	["AK-74M (2 Mag./Camo)", "rhs_weap_ak74m_2mag_camo", 200],
	["AK-74M (B-13)", "rhs_weap_ak74m_npz", 200],
	["AK-74M (Camo)", "rhs_weap_ak74m_camo", 200],
	["AK-74M (Desert)", "rhs_weap_ak74m_desert", 200],
	["AK-74M (Desert/B13)", "rhs_weap_ak74m_desert_npz", 200],
	["AK-74M (GP-25)", "rhs_weap_ak74m_gp25", 300],
	["AK-74M (GP-25/B13)", "rhs_weap_ak74m_gp25_npz", 300],
    ["AK-74M (GP-25/Plum)", "rhs_weap_ak74m_fullplum_gp25", 300],
    ["AK-74M (GP-25/Plum/B13)", "rhs_weap_ak74m_fullplum_gp25_npz", 300],
    ["AK-74M (Plum Mag.)", "rhs_weap_ak74m_plummag", 200],
    ["AK-74M (Plum Mag./B13)", "rhs_weap_ak74m_plummag_npz", 200],
    ["AK-74M (Plum)", "rhs_weap_ak74m_fullplum", 175],
    ["AK-74M (Plum/B13)", "rhs_weap_ak74m_fullplum_npz", 175],
    ["AK-74M (Zenitco)", "rhs_weap_ak74m_zenitco01", 250],
    ["AK-74M (Zenitco/B-33)", "rhs_weap_ak74m_zenitco01_b33", 250],

    ["AK-74MR (UUK)", "rhs_weap_ak74mr", 200],
    ["AK-74MR (UUK/GP-25)", "rhs_weap_ak74mr_gp25", 300],

    ["AK-74N", "rhs_weap_ak74n", 200],
    ["AK-74N (NPZ)", "rhs_weap_ak74n_npz", 200],
    ["AK-74N (GP-25)", "rhs_weap_ak74n_gp25", 300],
    ["AK-74N (GP-25/NPZ)", "rhs_weap_ak74n_gp25_npz", 300],
    ["AK-74N (Plum)", "rhs_weap_ak74n_2", 175],
    ["AK-74N (Plum/B13)", "rhs_weap_ak74n_2_npz", 175],
    ["AK-74N (Plum/GP-25)", "rhs_weap_ak74n_2_gp25", 300],
    ["AK-74N (Plum/GP-25/B13)", "rhs_weap_ak74n_2_gp25_npz", 300],

    ["AKM", "rhs_weap_akm", 200],
    ["AKM (GP-25", "rhs_weap_akm_gp25", 300],
    ["AKM (Zenitco/B-33", "rhs_weap_akm_zenitco_b33", 250],
    ["AKMN", "rhs_weap_akmn", 200],
    ["AKMN (NPZ)", "rhs_weap_akmn_npz", 200],
    ["AKMN (GP-25)", "rhs_weap_akmn_gp25", 300],
    ["AKMN (GP-25/NPZ)", "rhs_weap_akmn_gp25_npz", 300],

    ["AKMS", "rhs_weap_akms", 200],
    ["AKMS (GP-25)", "rhs_weap_akms_gp25", 300],

    ["AKS-74", "rhs_weap_aks74", 200],
    ["AKS-74 (GP-25)", "rhs_weap_aks74_gp25", 300],
    ["AKS-74 (Plum)", "rhs_weap_aks74_2", 200],

    ["AKS-74N", "rhs_weap_aks74n", 200],
    ["AKS-74N (GP-25)", "rhs_weap_aks74n_gp25", 300],
    ["AKS-74N (Plum)", "rhs_weap_aks74n_2", 200],
    ["AKS-74N (NPZ)", "rhs_weap_aks74n_npz", 200],
    ["AKS-74N (Plum/B-13)", "rhs_weap_aks74n_2_npz", 200],
    ["AKS-74N (GP-25/NPZ)", "rhs_weap_aks74n_gp25_npz", 300],

    ["AS Val", "rhs_weap_asval", 200],
    ["AS Val (GRIP)", "rhs_weap_asval_grip", 200],
    ["AS Val (NPV)", "rhs_weap_asval_npz", 200],
    ["AS Val (GRIP/NPZ)", "rhs_weap_asval_grip_npz", 200],

	// Marksman Rifles
	["MXM Rifle", "arifle_MXM_F", 300],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 300],
	["MXM Rifle (Khaki)", "arifle_MXM_khk_F", 300, "noDLC"],
	["Rahim DMR Rifle", "srifle_DMR_01_F", 375],
	["Mk18 ABR Rifle", "srifle_EBR_F", 450],	
	
	// RHSUSAF Marksman Rifles
	["M14 EBR-RI", "rhs_weap_m14ebrri", 450],
	
	["Mk 11 Mod 0", "rhs_weap_sr25", 1000],
	["Mk 11 Mod 0 (Desert)", "rhs_weap_sr25_d", 1000],
	["Mk 11 Mod 0 (Woodland)", "rhs_weap_sr25_wd", 1000],
	["Mk 11 Mod 0 (EC)", "rhs_weap_sr25_ec", 1000],
	["Mk 11 Mod 0 (EC/Desert)", "rhs_weap_sr25_ec_d", 1000],
	["Mk 11 Mod 0 (EC/Woodland)", "rhs_weap_sr25_ec_wd", 1000],
	
	["Mk 18 Mod 1", "rhs_weap_mk18", 450],
	["Mk 18 Mod 1 (Black)", "rhs_weap_mk18_bk", 450],
	["Mk 18 Mod 1 (Desert)", "rhs_weap_mk18_d", 450],
	["Mk 18 Mod 1 (Woodland)", "rhs_weap_mk18_wd", 450],
	["Mk 18 Mod 1 (Black/SOP Mod Stock)", "rhs_weap_mk18_KAC_bk", 450],
	["Mk 18 Mod 1 (Desert/SOP Mod Stock)", "rhs_weap_mk18_KAC_d", 450],
	["Mk 18 Mod 1 (Woodland/SOP Mod Stock)", "rhs_weap_mk18_KAC_wd", 450],
	["Mk 18 Mod 1 (M320)", "rhs_weap_mk18_M320", 550],
	
	// RHSGREF Marksman Rifles
	["M76", "rhs_weap_m76", 450],

	// RHSAFRF Marksman Rifles
	["SVDM", "rhs_weap_svdp", 450],
	["SVDM (NPZ)", "rhs_weap_svdp_npz", 450],
	["SVDM (Camo)", "rhs_weap_svdp_wd", 450],
	["SVDM (Camo/NPZ)", "rhs_weap_svdp_wd_npz", 450],
	["SVDS", "rhs_weap_svds", 450],
	["SVDS (NPZ)", "rhs_weap_svds_npz", 450],

	["VSS Vintorez", "rhs_weap_vss", 450],
    ["VSS Vintorez (GRIP)", "rhs_weap_vss_grip", 450],
    ["VSS Vintorez (NPZ)", "rhs_weap_vss_npz", 450],
    ["VSS Vintorez (GRIP/NPZ)", "rhs_weap_vss_grip_npz", 450],


	// DLC
	["CMR-76 Stealth Rifle", "srifle_DMR_07_blk_F", 400],
	["CMR-76 Stealth Rifle (Hex)", "srifle_DMR_07_hex_F", 400],
	["CMR-76 Stealth Rifle (G Hex)", "srifle_DMR_07_ghex_F", 400],
	["SPAR-17 Rifle", "arifle_SPAR_03_blk_F", 450],
	["SPAR-17 Rifle (Khaki)", "arifle_SPAR_03_khk_F", 450],
	["SPAR-17 Rifle (Sand)", "arifle_SPAR_03_snd_F", 450],

	["Mk14 Rifle (Camo)", "srifle_DMR_06_camo_F", 500],
	["Mk14 Rifle (Olive)", "srifle_DMR_06_olive_F", 500],
	["Mk-I EMR Rifle", "srifle_DMR_03_F", 500],
	["Mk-I EMR Rifle (Camo)", "srifle_DMR_03_multicam_F", 500],
	["Mk-I EMR Rifle (Khaki)", "srifle_DMR_03_khaki_F", 500],
	["Mk-I EMR Rifle (Sand)", "srifle_DMR_03_tan_F", 500],
	["Mk-I EMR Rifle (Woodland)", "srifle_DMR_03_woodland_F", 500],
	["MAR-10 Rifle", "srifle_DMR_02_F", 750],
	["MAR-10 Rifle (Camo)", "srifle_DMR_02_camo_F", 750],
	["MAR-10 Rifle (Sand)", "srifle_DMR_02_sniper_F", 750],
	["Cyrus Rifle", "srifle_DMR_05_blk_F", 750],
	["Cyrus Rifle (Hex)", "srifle_DMR_05_hex_F", 750],
	["Cyrus Rifle (Tan)", "srifle_DMR_05_tan_f", 750],

	// Sniper Rifles
	["M320 LRR Sniper", "srifle_LRR_LRPS_F", 1000],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_LRPS_F", 1000],
	["M320 LRR Sniper (Tropic)", "srifle_LRR_tna_LRPS_F", 1000, "noDLC"],
	["GM6 Lynx Sniper", "srifle_GM6_LRPS_F", 1250],
	["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_LRPS_F", 1250],
	["GM6 Lynx Sniper (G Hex)", "srifle_GM6_ghex_LRPS_F", 1250, "noDLC"],
	
	["ASP-1 Kir Rifle", "srifle_DMR_04_F", 2000],
	["ASP-1 Kir Rifle (Tan)", "srifle_DMR_04_tan_F", 2000],
	
	// RHSUSAF Sniper Rifles
	["M107", "rhs_weap_M107", 1100],
	["M107 (Desert)", "rhs_weap_M107_d", 1100],
	["M107 (Woodland)", "rhs_weap_M107_w", 1100],
	
	["M2010 ESR", "rhs_weap_XM2010", 1050],
	["M2010 ESR (Desert)", "rhs_weap_XM2010_d", 1050],
	["M2010 ESR (Woodland)", "rhs_weap_XM2010_wd", 1050],
	["M2010 ESR (Semi-Arid)", "rhs_weap_XM2010_sa", 1050],
	
	["M24 SWS", "rhs_weap_m24sws", 1000],
	["M24 SWS (Black)", "rhs_weap_m24sws_blk", 1000],
	["M24 SWS (Ghillie)", "rhs_weap_m24sws_ghillie", 1000],
	
	["M40A5", "rhs_weap_m40a5", 1000],
	["M40A5 (Desert)", "rhs_weap_m40a5_d", 1000],
	["M40A5 (Woodland)", "rhs_weap_m40a5_wd", 1000],
	
	// RHSSAF Sniper Rifles
	["M82A1", "rhs_weap_m82a1", 1100],

	// RHSGREF Sniper Rifles
	["Karabiner 98 Kurz", "rhs_weap_kar98k", 1000],
	
	["Mosin Nagant M38", "rhs_weap_m38", 750],
	["Mosin Nagant M38 (Railed)", "rhs_weap_m38_rail", 1000],
	["Mosin SBR", "rhs_weap_mosin_sbr", 750],

	// RHSAFRF Marksman Rifles
	["T-5000", "rhs_weap_t5000", 750]
];

lmgArray = compileFinal str
[
	["MX SW LMG", "arifle_MX_SW_F", 300],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 325],
	["MX SW LMG (Khaki)", "arifle_MX_SW_khk_F", 325, "noDLC"],
	["Mk200 LMG", "LMG_Mk200_F", 400],
	["Zafir LMG", "LMG_Zafir_F", 500],

	["SPAR-16S LMG", "arifle_SPAR_02_blk_F", 300],
	["SPAR-16S LMG (Khaki)", "arifle_SPAR_02_khk_F", 300],
	["SPAR-16S LMG (Sand)", "arifle_SPAR_02_snd_F", 300],
	["CAR-95-1 LMG", "arifle_CTARS_blk_F", 300],
	["CAR-95-1 LMG (Hex)", "arifle_CTARS_hex_F", 300],
	["CAR-95-1 LMG (G Hex)", "arifle_CTARS_ghex_F", 300],
	["LIM-85 LMG", "LMG_03_F", 350],

	["SPMG MMG (Sand)", "MMG_02_sand_F", 750],
	["SPMG MMG (MTP)", "MMG_02_camo_F", 750],
	["SPMG MMG (Black)", "MMG_02_black_F", 750],
	["Navid MMG (Tan)", "MMG_01_tan_F", 1000],
	["Navid MMG (Hex)", "MMG_01_hex_F", 1000],
	
	// RHSUSAF LMGs
	["M240B", "rhs_weap_m240B", 500],
	["M240B (Extended Mag)", "rhs_weap_m240B_CAP", 650],
	["M240G", "rhs_weap_m240G", 650],
	
	["M249", "rhs_weap_m249", 300],
	["M249 (Long)", "rhs_weap_m249_pip_L", 350],
	["M249 (Long/Para)", "rhs_weap_m249_pip_L_para", 400],
	["M249 (Long/VFG)", "rhs_weap_m249_pip_L_vfg", 400],
	["M249 (Short)", "rhs_weap_m249_pip_S", 300],
	["M249 (Short/Para)", "rhs_weap_m249_pip_S_para", 350],
	["M249 (Short/VFG)", "rhs_weap_m249_pip_S_vfg", 350],
	["M249 (Solid Stock)", "rhs_weap_m249_pip", 300],
	
	// RHSSAF LMGs
	["FN Minimi Para (RIS)", "rhs_weap_minimi_para_railed", 350],
	["M84", "rhs_weap_m84", 500],

    // RHSAFRF LMGs
	["PKM", "rhs_weap_pkm", 500],
	["PKP", "rhs_weap_pkp", 500]
];

launcherArray = compileFinal str
[
	["RPG-7", "launch_RPG7_F", 400],
	["RPG-42 Alamut", "launch_RPG32_F", 500],
	["RPG-42 Alamut (G Hex)", "launch_RPG32_ghex_F", 500, "noDLC"],
	["PCML", "launch_NLAW_F", 1000],
	["MAAWS Mk4 Mod 0 (Green)", "launch_MRAWS_green_rail_F", 600, "noDLC"], // RPG-42 and MAAWS are similar, but MAAWS has longer range
	["MAAWS Mk4 Mod 0 (Olive)", "launch_MRAWS_olive_rail_F", 600, "noDLC"],
	["MAAWS Mk4 Mod 0 (Sand)", "launch_MRAWS_sand_rail_F", 600, "noDLC"],
	["MAAWS Mk4 Mod 1 (Green)", "launch_MRAWS_green_F", 750, "noDLC"], // MAAWS Mod 1 has nightvision and laser rangefinder, while Mod 0 doesn't
	["MAAWS Mk4 Mod 1 (Olive)", "launch_MRAWS_olive_F", 750, "noDLC"],
	["MAAWS Mk4 Mod 1 (Sand)", "launch_MRAWS_sand_F", 750, "noDLC"],
	["9M135 Vorona (Brown)", "launch_O_Vorona_brown_F", 2000, "noDLC"],
	["9M135 Vorona (Green)", "launch_O_Vorona_green_F", 2000, "noDLC"],
	["Titan MPRL Compact (Sand)", "launch_Titan_short_F", 2000],
	["Titan MPRL Compact (Coyote)", "launch_O_Titan_short_F", 2000],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 2000],
	["Titan MPRL Compact (Tropic)", "launch_B_Titan_short_tna_F", 2000, "noDLC"],
	["Titan MPRL Compact (G Hex)", "launch_O_Titan_short_ghex_F", 2000, "noDLC"],
	["Titan MPRL AA (Sand)", "launch_Titan_F", 1500],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 1500],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 1500],
	["Titan MPRL AA (Tropic)", "launch_B_Titan_tna_F", 1500, "noDLC"],
	["Titan MPRL AA (G Hex)", "launch_O_Titan_ghex_F", 1500, "noDLC"],

	//RHSUSAF Launchers
	["FGM-148 Javelin", "rhs_weap_fgm148", 1500],
	["FIM-92F", "rhs_weap_fim92", 1500],
	["M136 (HEAT)", "rhs_weap_M316", 500],
	["M136 (HEDP)", "rhs_weap_M136_hedp", 500],
	["M136 (HP)", "rhs_weap_M136_hp", 500],
	["M3 MAAWS", "rhs_weap_maaws", 1500],
	["M72A7", "rhs_weap_m72a7", 500],
	["MK153 Mod 0 SMAW (Black)", "rhs_weap_smaw", 500],
	["MK153 Mod 0 SMAW (Green)", "rhs_weap_smaw_green", 500],


	//RHSAFRF Launchers
	["9K38 Igla", "rhs_weap_igla", 1500],
	["RPG-26", "rhs_weap_rpg26", 500],
	["RPG-7V2", "rhs_weap_rpg7", 500],
	["RShG-2", "rhs_weap_rshg2", 500]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd", "B_static_AT_F", 2500], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd", "O_static_AT_F", 2500],
	["Static Titan AT 4Rnd", "I_static_AT_F", 2500],
	["Static Titan AA 4Rnd", "B_static_AA_F", 3000],
	["Static Titan AA 4Rnd", "O_static_AA_F", 3000],
	["Static Titan AA 4Rnd", "I_static_AA_F", 3000],
	["Mk30 HMG .50 Low tripod", "B_HMG_01_F", 2000],
	["Mk30 HMG .50 Low tripod", "O_HMG_01_F", 2000],
	["Mk30 HMG .50 Low tripod", "I_HMG_01_F", 2000],
	// ["Mk30A HMG .50 Sentry", "B_HMG_01_A_F", 5000], // "A" = Autonomous = Overpowered
	// ["Mk30A HMG .50 Sentry", "O_HMG_01_A_F", 5000],
	// ["Mk30A HMG .50 Sentry", "I_HMG_01_A_F", 5000],
	["Mk30 HMG .50 High tripod", "B_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod", "O_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod", "I_HMG_01_high_F", 3000],
	["Mk32 GMG 20mm Low tripod", "B_GMG_01_F", 5000],
	["Mk32 GMG 20mm Low tripod", "O_GMG_01_F", 5000],
	["Mk32 GMG 20mm Low tripod", "I_GMG_01_F", 5000],
	// ["Mk32A GMG 20mm Sentry", "B_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry", "O_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry", "I_GMG_01_A_F", 10000],
	["Mk32 GMG 20mm High tripod", "B_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod", "O_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod", "I_GMG_01_high_F", 6000],
	["Mk6 Mortar", "B_Mortar_01_F", 12500],
	["Mk6 Mortar", "O_Mortar_01_F", 12500],
	["Mk6 Mortar", "I_Mortar_01_F", 12500]
];

throwputArray = compileFinal str
[
	["RGN Mini Grenade", "MiniGrenade", 50],
	["RGO Frag Grenade", "HandGrenade", 100],

	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 200],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 250],
	["APERS Mine", "APERSMine_Range_Mag", 300],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 350],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 350],
	["AT Mine", "ATMine_Range_Mag", 400],
	["Explosive Charge", "DemoCharge_Remote_Mag", 450],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 500],
	
	["Smoke Grenade (White)", "SmokeShell", 50],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 50],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 50],
	["Smoke Grenade (Green)", "SmokeShellGreen", 50],
	["Smoke Grenade (Yellow)", "SmokeShellYellow", 50],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 50],
	["Smoke Grenade (Red)", "SmokeShellRed", 50]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9mm 10Rnd Mag", "10Rnd_9x21_Mag", 5],
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 15],
	["9mm 30Rnd SMG Mag", "30Rnd_9x21_Mag_SMG_02", 15],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 5],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 10],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 15],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 20],
	[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 15],
	["5.45mm 30Rnd Mag", "30Rnd_545x39_Mag_F", 20],
	["5.45mm 30Rnd Tracer (Yellow) Mag", "30Rnd_545x39_Mag_Tracer_F", 15],
	["5.45mm 30Rnd Tracer (Green) Mag", "30Rnd_545x39_Mag_Tracer_Green_F", 15],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 10],
	["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 20],
	["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 15],
	["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 15],
	["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 15],
	["5.56mm 150Rnd Mag", "150Rnd_556x45_Drum_Mag_F", 100],
	["5.56mm 150Rnd Tracer (Red) Mag", "150Rnd_556x45_Drum_Mag_Tracer_F", 75],
	["5.56mm 200Rnd Box", "200Rnd_556x45_Box_F", 125],
	["5.56mm 200Rnd Tracer (Yellow) Box", "200Rnd_556x45_Box_Tracer_F", 100],
	["5.56mm 200Rnd Tracer (Red) Box", "200Rnd_556x45_Box_Tracer_Red_F", 100],
	["5.8mm 30Rnd Mag", "30Rnd_580x42_Mag_F", 20],
	["5.8mm 30Rnd Tracer (Green) Mag", "30Rnd_580x42_Mag_Tracer_F", 15],
	["5.8mm 100Rnd Mag", "100Rnd_580x42_Mag_F", 100],
	["5.8mm 100Rnd Tracer (Green) Mag", "100Rnd_580x42_Mag_Tracer_F", 75],
	["6.5mm 20Rnd Mag", "20Rnd_650x39_Cased_Mag_F", 15],
	["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 20],
	["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 15],
	["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 20],
	["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 15],
	["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 75],
	["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 50],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 150],
	["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 125],
	//["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 15],
	["7.62mm 10Rnd Mag", "10Rnd_762x54_Mag", 15],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 25],
	["7.62mm 30Rnd Mag", "30Rnd_762x39_Mag_F", 20],
	["7.62mm 30Rnd Tracer (Yellow) Mag", "30Rnd_762x39_Mag_Tracer_F", 15],
	["7.62mm 30Rnd Tracer (Green) Mag", "30Rnd_762x39_Mag_Tracer_Green_F", 15],
	//["7.62mm 150Rnd Box", "150Rnd_762x51_Box", 150],
	//["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x51_Box_Tracer", 125],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 150],
	["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x54_Box_Tracer", 125],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 50],
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 150],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 50],
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 150],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 50],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 50],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 60],
	["12.7mm 10Rnd Subsonic Mag", "10Rnd_127x54_Mag", 75],
	[".50 BW 10Rnd Mag", "10Rnd_50BW_Mag_F", 50],             //                 hit                      hit,  radius
	["PG-7VM HEAT Grenade", "RPG7_F", 300],                   // Direct damage:  343     | Splash damage:  13,  3.0m     | Guidance: none
	["RPG-42 AT Rocket", "RPG32_F", 400],                     //                 422     |                 28,  2.5m     |           none
	["RPG-42 HE Rocket", "RPG32_HE_F", 300],                  //                 200     |                 50,  6.0m     |           none
	["MAAWS HEAT 75 Rocket", "MRAWS_HEAT_F", 500],            //                 435     |                 14,  2.0m     |           none
	["MAAWS HE 44 Rocket", "MRAWS_HE_F", 400],                //                 200     |                 50,  6.0m     |           none
	["9M135 HEAT Missile", "Vorona_HEAT", 1000],              //                 634     |                 28,  2.5m     |           mouse
	["9M135 HE Missile", "Vorona_HE", 750],                   //                 220     |                 45,  8.0m     |           mouse
	["PCML AT Missile", "NLAW_F", 750],                       //                 462     |                 25,  2.4m     |           laser/IR, cold/hot ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 1000],            //                 515     |                 20,  2.0m     |           mouse, laser/IR, hot ground vehicles
	["Titan Anti-Personnel Missile", "Titan_AP", 750],        //                 100     |                 25, 10.0m     |           mouse, laser/IR
	["Titan AA Missile", "Titan_AA", 750],                    //                  80     |                 60,  6.0m     |           aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 125],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 250],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50],
	
	// RHSUSAF Magazines
	["5.56mm 30Rnd M855 Mag", "rhs_mag_30Rnd_556x45_M855_Stanag", 20],
	["5.56mm 30Rnd M855 Tracer (Red)", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", 15],
	["5.56mm 30Rnd M855 Tracer (Green)", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Green", 15],
	["5.56mm 30Rnd M855 Tracer (Yellow)", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Yellow", 15],
	["5.56mm 30Rnd M855 Tracer (Orange)", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Orange", 15],
	["5.56mm 30Rnd M855A1 Mag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", 20],
	["5.56mm 30Rnd M855A1 Tracer (Red)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 15],
	["5.56mm 30Rnd M855A1 Tracer (Green)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green", 15],
	["5.56mm 30Rnd M855A1 Tracer (Yellow)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 15],
	["5.56mm 30Rnd M855A1 Tracer (Orange)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Orange", 15],
	["5.56mm 30Rnd MK318 Mag", "rhs_mag_30Rnd_556x45_Mk318_Stanag", 20],
	["5.56mm 30Rnd MK262 Mag", "rhs_mag_30Rnd_556x45_Mk262_Stanag", 20],
	
	["6Rnd M441 HE Grenade Round", "rhsusf_mag_6Rnd_M441_HE", 500],
	["6Rnd M433 HEDP Grenade Round", "rhsusf_mag_6Rnd_M433_HEDP", 500],
	["6Rnd M397 HET Grenade Round", "rhsusf_mag_6Rnd_M397_HET", 500],
	["6Rnd M576 Buckshot Round", "rhsusf_mag_6Rnd_M576_Buckshot", 300],
	["6Rnd M585 White Flare Round", "rhsusf_mag_6Rnd_M585_white", 100],
	["6Rnd M661 Green Flare Round", "rhsusf_mag_6Rnd_m661_green", 100],
	["6Rnd M662 Red Flare Round", "rhsusf_mag_6Rnd_m662_red", 100],
	["6Rnd M713 Red Smoke Round", "rhsusf_mag_6Rnd_M713_red", 200],
	["6Rnd M714 White Smoke Round", "rhsusf_mag_6Rnd_M714_white", 200],
	["6Rnd M715 Green Smoke Round", "rhsusf_mag_6Rnd_M715_green", 200],
	["6Rnd M716 Yellow Smoke Round", "rhsusf_mag_6Rnd_M716_yellow", 200],
	
	["40Rnd 4.6mm AP SX Mag", "rhsusf_mag_40Rnd_46x30_AP", 35],
	["40Rnd 4.6mm JHP SX Mag", "rhsusf_mag_40Rnd_46x30_JHP", 30],
	["40Rnd 4.6mm FMJ SX Mag", "rhsusf_mag_40Rnd_46x30_FMJ", 25],
	
	["7.62mm M118 20Rnd Mag", "rhsusf_20Rnd_762x51_m118_special_Mag", 30],
	["7.62mm M993 20Rnd Mag", "rhsusf_20Rnd_762x51_m993_Mag", 25],
	["7.62mm M62 Tracer 20Rnd Mag", "rhsusf_20Rnd_762x51_m62_Mag", 25],
	
	["10Rnd .50BMG M33 STD Box", "rhsusf_mag_10Rnd_STD_50BMG_M33", 50],
	["10Rnd .50BMG MK211 STD Box", "rhsusf_mag_10Rnd_STD_50BMG_mk211", 50],
	
	["5Rnd .300 Winchester Magnum", "rhsusf_5Rnd_300winmag_xm2010", 20],
	
	["7.62mm M118 5Rnd Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", 25],
	["7.62mm M993 5Rnd Mag", "rhsusf_5Rnd_762x51_m993_Mag", 20],
	["7.62mm M62 Tracer 5Rnd Mag", "rhsusf_5Rnd_762x51_m62_Mag", 20],
	
	["7.62mm M118 10Rnd Mag", "rhsusf_10Rnd_762x51_m118_special_Mag", 50],
	["7.62mm M993 10Rnd Mag", "rhsusf_10Rnd_762x51_m993_Mag", 40],
	["7.62mm M62 Tracer 10Rnd Mag", "rhsusf_10Rnd_762x51_m62_Mag", 40],
	
	["7.62mm M80 Ball 50Rnd Belt", "rhsusf_50Rnd_762x51", 50],
	["7.62mm M61 AP 50Rnd Belt", "rhsusf_50Rnd_762x51_m61_ap", 75],
	["7.62mm M62 Tracer 50Rnd Belt", "rhsusf_50Rnd_762x51_m62_tracer", 50],
	["7.62mm M80A1EPR 50Rnd Belt", "rhsusf_50Rnd_762x51_m80a1epr", 75],
	["7.62mm M993 50Rnd Belt", "rhsusf_50Rnd_762x51_m993", 50],
	["7.62mm M80 Ball 100Rnd Belt", "rhsusf_100Rnd_762x51", 100],
	["7.62mm M61 AP 100Rnd Belt", "rhsusf_100Rnd_762x51_m61_ap", 150],
	["7.62mm M62 Tracer 100Rnd Belt", "rhsusf_100Rnd_762x51_m62_tracer", 100],
	["7.62mm M80A1EPR 100Rnd Belt", "rhsusf_100Rnd_762x51_m80a1epr", 150],
	["7.62mm M993 100Rnd Belt", "rhsusf_100Rnd_762x51_m993", 100],
	
	["5.56mm M855A1 200Rnd Pouch", "rhsusf_200Rnd_556x45_M855_soft_pouch", 100],
	["5.56mm M855 200Rnd Pouch", "rhsusf_200Rnd_556x45_soft_pouch", 100],
	["5.56mm M855A1", "rhs_200rnd_556x45_B_SAW", 100],
	["5.56mm M855A1 Tracer", "rhs_200rnd_556x45_T_SAW", 100],
	["5.56mm M855A1 (Mixed 200Rnd Belt)", "rhs_200rnd_556x45_M_SAW", 100],
	["5.56mm M855A1 (Mixed 100Rnd Pouch)", "rhsusf_100Rnd_556x45_M855_soft_pouch", 50],
	["5.56mm M855 (Mixed 100Rnd Pouch)", "rhsusf_100Rnd_556x45_soft_pouch", 50],

	// RHSAFRF Magazines
	["57-N-231 30Rnd AK Mag", "rhs_30Rnd_762x39mm", 20],
    ["57-N-231P 30Rnd AK Mag", "rhs_30Rnd_762x39mm_tracer", 20],
    ["57-N-231(89) 30Rnd AK Mag", "rhs_30Rnd_762x39mm_89", 20],
    ["57-N-231U 30Rnd AK Mag (Subsonic)", "rhs_30Rnd_762x39mm_U", 20],

    ["7N6 30Rnd AK-74 Mag", "rhs_30Rnd_545x39_7N6_AK", 20],
    ["7N6 30Rnd AK-74 Mag (No Tracers)", "rhs_30Rnd_545x39_AK_no_tracers", 20],
    ["7N6M 30Rnd AK-74 Mag", "rhs_B_545x39_7N6_Ball", 30],
    ["7N10 30Rnd AK-74 Mag", "rhs_30Rnd_545x39_7N10_AK", 20],
    ["7N22 30Rnd AK-74 Mag", "rhs_30Rnd_545x39_7N22_AK", 20],
    ["7T3M 30Rnd AK-74 Mag", "rhs_30Rnd_762x39mm_tracer", 20],
    ["7U1 30Rnd AK-74 Mag (Subsonic)", "rhs_30Rnd_545x39_7U1_AK", 20],
    ["7N6 45Rnd RPK-74 Mag", "rhs_45Rnd_545X39_7N6_AK", 30],
    ["7N10 45Rnd RPK-74 Mag", "rhs_45Rnd_545X39_7N10_AK", 30],
    ["7N22 45Rnd RPK-74 Mag", "rhs_45Rnd_545x39_7N22_AK", 30],
    ["7T3M 45Rnd RPK-74 Mag", "rhs_45Rnd_762x39mm_tracer", 30],
    ["7U1 45Rnd RPK-74 Mag", "rhs_45Rnd_545x39_7U1_AK", 30],

	["SP-5 20Rnd AS Val Mag", "rhs_20rnd_9x39mm_SP5", 40],
	["SP-6 20Rnd AS Val Mag", "rhs_20rnd_9x39mm_SP6", 40],
	["SP-5 10Rnd AS Val Mag", "rhs_10rnd_9x39mm_SP5", 20],
	["SP-6 10Rnd AS Val Mag", "rhs_10rnd_9x39mm_SP6", 20],

	["7N1  10Rnd SVD Mag", "rhs_10Rnd_762x54mmR_7N1", 25],

	["5Rnd .338 T-5000 Mag", "rhs_5Rnd_338lapua_t5000", 20],

	["57-N-323S 100Rnd PKM Box", "rhs_100Rnd_762x54mmR", 200],
	["7T2 100Rnd PKM Tracer Box", "rhs_100Rnd_762x54mmR_green", 200],
	["7N13 100Rnd PKM AP Box", "rhs_100Rnd_762x54mmR_7N13", 200],
	["7N26 100Rnd PKM AP-I Box", "rhs_100Rnd_762x54mmR_7N26", 200],
	["7BZ-3 100Rnd PKM AP Box", "rhs_100Rnd_762x54mmR_7BZ3", 200],
	
	// RHSGREF Magazines
	["5.56mm 30rnd M855A1", "rhsgref_30rnd_556x45_m21", 15],
	["5.56mm 30rnd Tracer", "rhsgref_30rnd_556x45_m21_t", 15],
	
	["5.56mm 30rnd M855A1", "rhssaf_30rnd_556x45_EPR_G36", 15],
	["5.56mm 30rnd Mk318", "rhssaf_30rnd_556x45_SOST_G36", 15],
	["5.56mm 100rnd M855A1", "rhssaf_100rnd_556x45_EPR_G36", 50],
	["5.56mm 30rnd Mk262", "rhssaf_30rnd_556x45_SPR_G36", 15],
	["5.56mm 30rnd M855A1 Tracer", "rhssaf_30rnd_556x45_Tracers_G36", 15],
	["5.56mm 30rnd M855A1 IR/DIM", "rhssaf_30rnd_556x45_MDIM_G36", 15],
	["5.56mm 30rnd IR/DIM", "rhssaf_30rnd_556x45_TDIM_G36", 15],
	
	["7.92mm 10rnd", "rhsgref_10rnd_792x57_m76", 10],
	["7.92mm 10rnd Tracer", "rhsgref_10rnd_792x57_m76_tracer", 10],
	
	["5rnd 7.62x54Rmm Clip", "rhsgref_5rnd_762x54_m38", 10],
	
	["5rnd 7.92x57Rmm Clip", "rhsgref_5rnd_792x57_kar98k", 10],
	
	["7.62x39mm 30Rnd Sa vz. 58", "rhs_30Rnd_762x39mm_Savz58", 30],
	["7.62x39mm 30Rnd Sa vz. 58 Tracer", "rhs_30Rnd_762x39mm_Savz58_tracer", 30],

	// RHSAFRF Hand Gun Ammo
	["57-N-181S 8Rnd. PM", "rhs_mag_9x18_8_57N181S", 10],
	["17Rnd. 9x19 Parabellum (MP-443)", "rhs_mag_9x19_17", 20],
	["7N21 20Rnd PP-2000 Mag", "rhs_mag_9x19mm_7n21_20", 20],
	["7N31 20Rnd PP-2000 Mag", "rhs_mag_9x19mm_7n31_20", 20],
	["7N21 44Rnd PP-2000 Mag", "rhs_mag_9x19mm_7n21_44", 44],
	["7N31 44Rnd PP-2000 Mag", "rhs_mag_9x19mm_7n31_44", 44],

	// RHS Launchers
	["9K38", "rhs_mag_9k38_rocket", 400],
	["RPG-26", "rhs_rpg26_mag", 400],
	["PG-7V", "rhs_rpg7_PG7V_mag", 400],
    ["PG-7VL", "rhs_rpg7_PG7VL_mag", 400],
    ["PG-7VR", "rhs_rpg7_PG7VR_mag", 400],
    ["OG-7V", "rhs_rpg7_OG7V_mag", 400],
    ["TBG-7V", "rhs_rpg7_TBG7V_mag ", 400],
	["Type-69 Airburst", "rhs_rpg7_type69_airburst_mag", 500],
	["RShG-2", "rhs_rshg2_mag", 400],
	
	["M72 HEDP", "rhs_m72a7_mag", 100],

	["FFV751 HEAT", "rhs_mag_maaws_HEAT", 400],
	["FFV5D2 HEDP", "rhs_mag_maaws_HEDP", 400],
	["FFV441 HE", "rhs_mag_maaws_HE", 400],

	["FIM-92F", "rhs_fim92_mag", 400],

	["M136 HEAT", "rhs_m136_mag", 400],
	["M136 HEDP", "rhs_m136_hedp_mag", 400],
	["M136 HP", "rhs_m136_hp_mag", 400],

	["Mk.6 HEAA", "rhs_mag_smaw_HEAA", 400],
	["Mk.3 HEDP", "rhs_mag_smaw_HEDP", 400],
	["Mk.217 Spotting", "rhs_mag_smaw_SR", 400],

	["Javelin AT", "rhs_fgm148_magazine_AT", 400],

	// RHSUSAF Handgun Magazines
    ["9mm Mk243 JHP 17Rnd Glock", "rhsusf_mag_17Rnd_9x19_JHP", 10],
    ["9mm M882 FMJ 17Rnd Glock", "rhsusf_mag_17Rnd_9x19_FMJ", 20],

    ["45ACP HP 7Rnd M1911A1", "rhsusf_mag_7x45acp_MHP", 10],

    ["9mm Mk243 JHP 15Rnd M9", "rhsusf_mag_15Rnd_9x19_JHP", 10],
    ["9mm M882 FMJ 15Rnd M9", "rhsusf_mag_15Rnd_9x19_FMJ", 20],
	
	// RHSGREF Handgun Magazines
	["20rnd 7.65x17mm mag", "rhsgref_20rnd_765x17_vz61", 20],
	["10rnd 7.65x17mm mag", "rhsgref_10rnd_765x17_vz61", 10],

	["7.62x25mm 8Rnd TT-33", "rhs_mag_762x25_8", 20],

    // RHSUSAF Grenade Launcher Rounds
    ["M441 HE Grenade Round", "rhs_mag_M441_HE", 125],
    ["M433 HEDP Grenade Round", "rhs_mag_M433_HEDP", 125],
    ["M397 HET Grenade Round", "rhs_mag_M397_HET", 125],
    ["GL Stun Grenade Round", "rhs_mag_m4009", 125],
    ["M576 Buckshot Round", "rhs_mag_m576", 125],
    ["M585 White Flare Round", "rhs_mag_M585_white", 25],
    ["M661 Green Flare Round", "rhs_mag_M661_green", 25],
    ["M662 Red Flare Round", "rhs_mag_M662_red", 25],
    ["M713 Red Smoke Round", "rhs_mag_M713_red", 50],
    ["M714 White Smoke Round", "rhs_mag_M714_white", 50],
    ["M715 Green Smoke Round", "rhs_mag_M715_green", 50],
    ["M716 Yellow Smoke Round", "rhs_mag_M716_yellow", 50],
	
	// RHSUGREF Grenade Launcher Rounds
	["VOG 25", "rhs_VOG25", 50],
	["VOG25P", "rhs_VOG25P", 50],
	["VG-40TB", "rhs_VG40TB", 50],
	["VG-40SZ", "rhs_VG40SZ", 50],
	["VG-40OP (White)", "rhs_VG40OP_white", 50],
	["VG-40OP (Green)", "rhs_VG40OP_green", 50],
	["VG-40OP (Red)", "rhs_VG40OP_red", 50],
	["GRD-40 (White)", "rhs_GRD40_white", 50],
	["GRD-40 (Green)", "rhs_GRD40_green", 50],
	["GRD-40 (Red)", "rhs_GRD40_red", 50],
	["VG-40MD (White)", "rhs_VG40MD_white", 50],
	["VG-40MD (green)", "rhs_VG40MD_green", 50],
	["VG-40MD (Red)", "rhs_VG40MD_red", 50],
	["GDM-40 (white)", "rhs_GDM40", 50],

    // RHS Shotgun Ammo
    ["1Rnd 00 Buckshot", "rhsgref_1Rnd_00Buck", 5],
    ["1Rnd 12g Slug", "rhsgref_1Rnd_Slug", 10],

    ["5Rnd .00 Buckshot", "rhsusf_5Rnd_00Buck", 15],
    ["5Rnd 12g Doomsday Buckshot", "rhsusf_5Rnd_doomsday_Buck", 30],
    ["5Rnd 12g Slug", "rhsusf_5Rnd_Slug", 20],
    ["5Rnd 12g HE-EP", "rhsusf_5Rnd_HE", 25],
    ["5Rnd 12g FRAG", "rhsusf_5Rnd_FRAG", 25],

    ["8Rnd .00 Buckshot", "rhsusf_8Rnd_00Buck", 20],
    ["8Rnd 12g Doomsday Buckshot", "rhsusf_8Rnd_doomsday_Buck", 35],
    ["8Rnd 12g Slug", "rhsusf_8Rnd_Slug", 25],
    ["8Rnd 12g HE-EP", "rhsusf_8Rnd_HE", 30],
    ["8Rnd 12g FRAG", "rhsusf_8Rnd_FRAG", 30]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["Suppressor 9mm", "muzzle_snds_L", 50, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 75, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 100, "item"],
	["Suppressor 5.56mm (Khaki)", "muzzle_snds_m_khk_F", 100, "item", "noDLC"],
	["Suppressor 5.56mm (Sand)", "muzzle_snds_m_snd_F", 100, "item", "noDLC"],
	["Suppressor 5.8mm", "muzzle_snds_58_blk_F", 100, "item"],
	["Suppressor 5.8mm (Hex)", "muzzle_snds_58_hex_F", 100, "item"],
	["Suppressor 5.8mm (G Hex)", "muzzle_snds_58_ghex_F", 100, "item"],
	["Suppressor 6.5mm", "muzzle_snds_H", 100, "item"],
	["Suppressor 6.5mm (Khaki)", "muzzle_snds_H_khk_F", 100, "item", "noDLC"],
	["Suppressor 6.5mm (Sand)", "muzzle_snds_H_snd_F", 100, "item", "noDLC"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 125, "item"],
	["Suppressor 6.5mm LMG (Black)", "muzzle_snds_H_MG_blk_F", 125, "item", "noDLC"],
	["Suppressor 6.5mm LMG (Khaki)", "muzzle_snds_H_MG_khk_F", 125, "item", "noDLC"],
	["Suppressor 6.5mm Stealth", "muzzle_snds_65_TI_blk_F", 125, "item"],
	["Suppressor 6.5mm Stealth (Hex)", "muzzle_snds_65_TI_hex_F", 125, "item"],
	["Suppressor 6.5mm Stealth (G Hex)", "muzzle_snds_65_TI_ghex_F", 125, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 125, "item"],
	["Suppressor 7.62mm (Khaki)", "muzzle_snds_B_khk_F", 125, "item", "noDLC"],
	["Suppressor 7.62mm (Sand)", "muzzle_snds_B_snd_F", 125, "item", "noDLC"],
	["Suppressor .338", "muzzle_snds_338_black", 150, "item"],
	["Suppressor .338 (Green)", "muzzle_snds_338_green", 150, "item"],
	["Suppressor .338 (Sand)", "muzzle_snds_338_sand", 175, "item"],
	["Suppressor 9.3mm", "muzzle_snds_93mmg", 175, "item"],
	["Suppressor 9.3mm (Tan)", "muzzle_snds_93mmg_tan", 175, "item"],
	
	["Bipod (NATO)", "bipod_01_F_blk", 100, "item", "noDLC"],
	["Bipod (CSAT)", "bipod_02_F_blk", 100, "item", "noDLC"],
	["Bipod (AAF)", "bipod_03_F_blk", 100, "item", "noDLC"],
	["Bipod (MTP)", "bipod_01_F_mtp", 100, "item", "noDLC"],
	["Bipod (Hex)", "bipod_02_F_hex", 100, "item", "noDLC"],
	["Bipod (Olive)", "bipod_03_F_oli", 100, "item", "noDLC"],
	["Bipod (Sand)", "bipod_01_F_snd", 100, "item", "noDLC"],
	["Bipod (Tan)", "bipod_02_F_tan", 100, "item", "noDLC"],
	["Bipod (Khaki)", "bipod_01_F_khk", 100, "item", "noDLC"],
	
	["Flashlight", "acc_flashlight", 25, "item"],
	["Pistol Flashlight" ,"acc_flashlight_pistol", 25, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 25, "item"],
	
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	["ACO SMG (Red)", "optic_aco_smg", 50, "item"],
	["ACO SMG (Green)", "optic_ACO_grn_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 75, "item"],
	["ACO (Green)", "optic_Aco_grn", 75, "item"],
	["Holosight SMG", "optic_Holosight_smg", 50, "item"],
	["Holosight", "optic_Holosight", 75, "item"],
	["MRCO", "optic_MRCO", 100, "item"],
	["ERCO", "optic_ERCO_blk_F", 100, "item"],
	["ERCO (Khaki)", "optic_ERCO_khk_F", 100, "item"],
	["ERCO (Sand)", "optic_ERCO_snd_F", 100, "item"],
	["ARCO", "optic_Arco", 125, "item"],
	["ARCO (Black)", "optic_Arco_blk_F", 125, "item", "noDLC"],
	["ARCO (G Hex)", "optic_Arco_ghex_F", 125, "item", "noDLC"],
	["RCO", "optic_Hamr", 150, "item"],
	["RCO (Khaki)", "optic_Hamr_khk_F", 150, "item", "noDLC"],
	
	["MOS", "optic_SOS", 150, "item"],
	["MOS (Khaki)", "optic_SOS_khk_F", 150, "item", "noDLC"],
	["DMS", "optic_DMS", 175, "item"],
	["DMS (G Hex)", "optic_DMS_ghex_F", 175, "item", "noDLC"],
	["Kahlia (Sightless)", "optic_KHS_old", 200, "item"],
	["Kahlia", "optic_KHS_blk", 225, "item"],
	["Kahlia (Hex)", "optic_KHS_hex", 225, "item"],
	["Kahlia (Tan)", "optic_KHS_tan", 225, "item"],
	["AMS", "optic_AMS", 250, "item"],
	["AMS (Khaki)", "optic_AMS_khk", 250, "item"],
	["AMS (Sand)", "optic_AMS_snd", 250, "item"],
	["LRPS", "optic_LRPS", 300, "item"],
	["LRPS (G Hex)", "optic_LRPS_ghex_F", 300, "item", "noDLC"],
	["LRPS (Tropic)", "optic_LRPS_tna_F", 300, "item", "noDLC"],
	["NVS", "optic_NVS", 500, "item"],
	["TWS", "optic_tws", 5000, "item"], // To hide from store list, add "HIDDEN" after "item", like "item", "HIDDEN"]
	["TWS MG", "optic_tws_mg", 6000, "item"],
	["Nightstalker", "optic_Nightstalker", 7500, "item"],
	
	// RHSUSAF Long Range Scopes
    ["Mk. 4 M5 (Desert)", "rhsusf_acc_LEUPOLDMK4_2_d", 250, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Modular Helmet (Digi)", "H_HelmetIA", 50, "hat"],
	// ["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	// ["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	["Combat Helmet", "H_HelmetB", 50, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_black", 50, "hat"],
	["Combat Helmet (Camonet)", "H_HelmetB_camo", 50, "hat"],
	["Stealth Combat Helmet", "H_HelmetB_TI_tna_F", 75, "hat"],
	["Enhanced Combat Helmet", "H_HelmetSpecB", 75, "hat"],
	["Enhanced Combat Helmet (Black)", "H_HelmetSpecB_blk", 75, "hat"],
	["Enhanced Combat Helmet (Snakeskin)", "H_HelmetSpecB_snakeskin", 75, "hat"],
	["Enhanced Combat Helmet (Tropic)", "H_HelmetB_Enh_tna_F", 75, "hat", "noDLC"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 60, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 60, "hat"],
	["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 75, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 75, "hat"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 100, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 100, "hat"],
	["Defender Helmet (G Hex)", "H_HelmetLeaderO_ghex_F", 100, "hat", "noDLC"],
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 60, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 60, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 60, "hat"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 60, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 60, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 60, "hat"],
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	["Bandana (Black)", "H_Bandanna_gry", 10, "hat"],
	["Bandana (Blue)", "H_Bandanna_blu", 10, "hat"],
	["Bandana (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandana (Headset)", "H_Bandanna_khk_hs", 10, "hat"],
	["Bandana (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandana (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandana (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandana (Sand)", "H_Bandanna_sand", 10, "hat"],
	["Bandana (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	["Bandana (Surfer, Black)", "H_Bandanna_surfer_blk", 10, "hat"],
	["Bandana (Surfer, Green)", "H_Bandanna_surfer_grn", 10, "hat"],
	["Bandana (Woodland)", "H_Bandanna_camo", 10, "hat"],
	// ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	// ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	// ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	// ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beanie (Navy)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Olive)", "H_Watchcap_camo", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	// ["Beret (Green)", "H_Beret_grn", 10, "hat"],
	// ["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	// ["Beret (Red)", "H_Beret_red", 10, "hat"],
	// ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	// ["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	// ["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	// ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	// ["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	// ["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	// ["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["Booniehat (AAF)", "H_Booniehat_dgtl", 10, "hat"],
	["Booniehat (Headset)", "H_Booniehat_khk_hs", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	["Booniehat (Olive)", "H_Booniehat_oli", 10, "hat"],
	["Booniehat (Sand)", "H_Booniehat_tan", 10, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Olive, Headset)", "H_Cap_oli_hs", 10, "hat"],
	["Cap (Police)", "H_Cap_police", 10, "hat"],
	["Cap (Press)", "H_Cap_press", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (Surfer)", "H_Cap_surfer", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Cap (UK)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (US Black)", "H_Cap_usblack", 10, "hat"],
	["Cap (US MTP)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (AAF)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (OPFOR)", "H_Cap_brn_SPECOPS", 10, "hat"],
	["Shemag (Olive)", "H_Shemag_olive", 25, "hat"],
	["Shemag (Olive, Headset)", "H_Shemag_olive_hs", 25, "hat"],
	["Shemag (Tan)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	// ["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 25, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 25, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 25, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 25, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 25, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 25, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 25, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 25, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 25, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 25, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 25, "hat"],
		
	// RHSUSAF Helmets And Hats
	// ["", "", , "hat"],
	["ACH", "rhsusf_ach_bare", 50, "hat"],
	["ACH (Desert)", "rhsusf_ach_bare_des", 50, "hat"],
	["ACH (Desert/ESS)", "rhsusf_ach_bare_des_ess", 50, "hat"],
	["ACH (Desert/Headset)", "rhsusf_ach_bare_des_headset", 50, "hat"],
	["ACH (Desert/Headset/ESS)", "rhsusf_ach_bare_des_headset_ess", 50, "hat"],
	["ACH (ESS)", "rhsusf_ach_bare_ess", 50, "hat"],
	["ACH (Headset)", "rhsusf_ach_bare_headset", 50, "hat"],
	["ACH (Headset/ESS)", "rhsusf_ach_bare_headset_ess", 50, "hat"],
	["ACH (Semi-Arid)", "rhsusf_ach_bare_semi", 50, "hat"],
	["ACH (Semi-Arid/ESS)", "rhsusf_ach_bare_semi_ess", 50, "hat"],
	["ACH (Semi-Arid/Headset)", "rhsusf_ach_bare_semi_headset", 50, "hat"],
	["ACH (Semi-Arid/Headset/ESS)", "rhsusf_ach_bare_semi_headset_ess", 50, "hat"],
	["ACH (Tan)", "rhsusf_ach_bare_tan", 50, "hat"],
	["ACH (Tan/ESS)", "rhsusf_ach_bare_tan_ess", 50, "hat"],
	["ACH (Tan/Headset)", "rhsusf_ach_bare_tan_headset", 50, "hat"],
	["ACH (Tan/Headset/ESS)", "rhsusf_ach_bare_tan_headset_ess", 50, "hat"],
	["ACH (Woodland)", "rhsusf_ach_bare_wood", 50, "hat"],
	["ACH (Woodland/ESS)", "rhsusf_ach_bare_wood_ess", 50, "hat"],
	["ACH (Woodland/Headset)", "rhsusf_ach_bare_wood_headset", 50, "hat"],
	["ACH (Woodland/Headset/ESS)", "rhsusf_ach_bare_wood_headset_ess", 50, "hat"],
	["ACH M81", "rhsusf_ach_helmet_M81", 50, "hat"],
	["ACH OEF-CP", "rhsusf_ach_helmet_ocp", 50, "hat"],
	["ACH OEF-CP (ESS)", "rhsusf_ach_helmet_ESS_ocp", 50, "hat"],
	["ACH OEF-CP (Headset)", "rhsusf_ach_helmet_headset_ocp", 50, "hat"],
	["ACH OEF-CP (Headset/ESS)", "rhsusf_ach_helmet_headset_ess_ocp", 50, "hat"],
	["ACH OEF-CP (Netting)", "rhsusf_ach_helmet_camo_ocp", 50, "hat"],
	["ACH OEF-CP (Norotos)", "rhsusf_ach_helmet_ocp_norotos", 50, "hat"],
	["ACH UCP", "rhsusf_ach_helmet_ucp", 50, "hat"],
	["ACH UCP (ESS)", "rhsusf_ach_helmet_ESS_ucp", 50, "hat"],
	["ACH UCP (Headset)", "rhsusf_ach_helmet_headset_ucp", 50, "hat"],
	["ACH UCP (Headset/ESS)", "rhsusf_ach_helmet_headset_ess_ucp", 50, "hat"],
	["ACH UCP (Norotos)", "rhsusf_ach_helmet_ucp_norotos", 50, "hat"],
	
	["ACVC-H, MK-1697", "rhsusf_cvc_green_helmet", 50, "hat"],
	["ACVC-H, MK-1697 (Alt.)", "rhsusf_cvc_green_alt_helmet", 50, "hat"],
	["ACVC-H, MK-1697 (ESS)", "rhsusf_cvc_green_ess", 50, "hat"],
	["ACVC-H, MK-1697 (Tan)", "rhsusf_cvc_helmet", 50, "hat"],
	["ACVC-H, MK-1697 (Tan/Alt.)", "rhsusf_cvc_alt_helmet", 50, "hat"],
	["ACVC-H, MK-1697 (Tan/ESS)", "rhsusf_cvc_ess", 50, "hat"],
	
	["Booniehat M81", "rhs_Booniehat_m81", 10, "hat"],
	["Booniehat MARPAT-D", "rhs_booniehat2_marpatd", 10, "hat"],
	["Booniehat MARPAT-WD", "rhs_booniehat2_marpatwd", 10, "hat"],
	["Booniehat OEF-CP", "rhs_Booniehat_ocp", 10, "hat"],
	["Booniehat UCP", "rhs_Booniehat_ucp", 10, "hat"],
	
	["Bowman Elite II", "rhsusf_Bowman", 25, "hat"],
	["Bowman Elite II (Cap)", "rhsusf_bowman_cap", 25, "hat"],
  
	["Christmas Antlers", "rhs_xmas_antlers", 10, "hat"],
	
	["FAST Ballistic (AOR1)", "rhsusf_opscore_aor1", 50, "hat"],
	["FAST Ballistic (AOR1/Headset)", "rhsusf_opscore_aor1_pelt", 50, "hat"],
	["FAST Ballistic (AOR1/Headset/NSW)", "rhsusf_opscore_aor1_pelt_nsw", 50, "hat"],
	["FAST Ballistic (AOR2)", "rhsusf_opscore_aor2", 50, "hat"],
	["FAST Ballistic (AOR2/Headset)", "rhsusf_opscore_aor2_pelt", 50, "hat"],
	["FAST Ballistic (AOR2/Headset/NSW)", "rhsusf_opscore_aor2_pelt_nsw", 50, "hat"],
	["FAST Ballistic (Black)", "rhsusf_opscore_bk", 50, "hat"],
	["FAST Ballistic (Black/Headset)", "rhsusf_opscore_bk_pelt", 50, "hat"],
	["FAST Ballistic (Coyote Cover)", "rhsusf_opscore_coy_cover", 50, "hat"],
	["FAST Ballistic (Coyote Cover/Headset/NSW)", "rhsusf_opscore_coy_cover_pelt", 50, "hat"],
	["FAST Ballistic (Foliage Green)", "rhsusf_opscore_fg", 50, "hat"],
	["FAST Ballistic (Foliage Green/Headset)", "rhsusf_opscore_fg_pelt", 50, "hat"],
	["FAST Ballistic (Foliage Green/Headset/Cam)", "rhsusf_opscore_fg_pelt_cam", 50, "hat"],
	["FAST Ballistic (Foliage Green/Headset/NSW)", "rhsusf_opscore_fg_pelt_nsw", 50, "hat"],
	["FAST Ballistic (Multicam Cover)", "rhsusf_opscore_mc_cover", 50, "hat"],
	["FAST Ballistic (Multicam Cover/Headset)", "rhsusf_opscore_mc_cover_pelt", 50, "hat"],
	["FAST Ballistic (Multicam Cover/Headset/NSW)", "rhsusf_opscore_mc_cover_pelt_nsw", 50, "hat"],
	["FAST Ballistic (Multicam Cover/Headset/NSW/Cam)", "rhsusf_opscore_mc_cover_pelt_cam", 50, "hat"],
	["FAST Ballistic (Multicam Paint)", "rhsusf_opscore_mc", 50, "hat"],
	["FAST Ballistic (Multicam Paint/Headset)", "rhsusf_opscore_mc_pelt", 50, "hat"],
	["FAST Ballistic (Multicam Paint/Headset/NSW)", "rhsusf_opscore_mc_pelt_nsw", 50, "hat"],
	["FAST Ballistic (Paint)", "rhsusf_opscore_paint", 50, "hat"],
	["FAST Ballistic (Paint/Headset)", "rhsusf_opscore_paint_pelt", 50, "hat"],
	["FAST Ballistic (Paint/Headset/NSW)", "rhsusf_opscore_paint_pelt_nsw", 50, "hat"],
	["FAST Ballistic (Paint/Headset/NSW/Cam)", "rhsusf_opscore_paint_pelt_nsw_cam", 50, "hat"],
	["FAST Ballistic (Ranger Green Cover)", "rhsusf_opscore_rg_cover", 50, "hat"],
	["FAST Ballistic (Ranger Green Cover/Headset/NSW)", "rhsusf_opscore_rg_cover_pelt", 50, "hat"],
	["FAST Ballistic (Urban Tan)", "rhsusf_opscore_ut", 50, "hat"],
	["FAST Ballistic (Urban Tan/Headset)", "rhsusf_opscore_ut_pelt", 50, "hat"],
	["FAST Ballistic (Urban Tan/Headset/Cam)", "rhsusf_opscore_ut_pelt_cam", 50, "hat"],
	["FAST Ballistic (Urban Tan/Headset/NSW)", "rhsusf_opscore_ut_pelt_nsw", 50, "hat"],
	["FAST Ballistic (Urban Tan/Headset/NSW/Cam)", "rhsusf_opscore_ut_pelt_nsw_cam", 50, "hat"],
	["FAST Maritime (Foliage Green)", "rhsusf_opscore_mar_fg", 50, "hat"],
	["FAST Maritime (Foliage Green/Headset)", "rhsusf_opscore_mar_fg_pelt", 50, "hat"],
	["FAST Maritime (Urban Tan)", "rhsusf_opscore_mar_ut", 50, "hat"],
	["FAST Maritime (Urban Tan/Headset)", "rhsusf_opscore_mar_ut_pelt", 50, "hat"],
  
	["HGU-56/P (Black)", "rhsusf_hgu56p_black", 50, "hat"],
	["HGU-56/P (Black/Mask)", "rhsusf_hgu56p_mask_black", 50, "hat"],
	["HGU-56/P (Black/Mask/Skull)", "rhsusf_hgu56p_mask_black_skull", 50, "hat"],
	["HGU-56/P (Black/Visor)", "rhsusf_hgu56p_visor_black", 50, "hat"],
	["HGU-56/P (Black/Visor/Mask)", "rhsusf_hgu56p_visor_mask_black", 50, "hat"],
	["HGU-56/P (Black/Visor/Mask/Empire)", "rhsusf_hgu56p_visor_mask_Empire_black", 50, "hat"],
	["HGU-56/P (Black/Visor/Mask/Skull)", "rhsusf_hgu56p_visor_mask_black_skull", 50, "hat"],
	["HGU-56/P (Green)", "rhsusf_hgu56p_green", 50, "hat"],
	["HGU-56/P (Green/Mask)", "rhsusf_hgu56p_mask_green", 50, "hat"],
	["HGU-56/P (Green/Mask/Mo)", "rhsusf_hgu56p_mask_green_mo", 50, "hat"],
	["HGU-56/P (Green/Visor)", "rhsusf_hgu56p_visor_green", 50, "hat"],
	["HGU-56/P (Green/Visor/Mask)", "rhsusf_hgu56p_visor_mask_green", 50, "hat"],
	["HGU-56/P (Green/Visor/Mask/Mo)", "rhsusf_hgu56p_visor_mask_green_mo", 50, "hat"],
	["HGU-56/P (Olive)", "rhsusf_hgu56p", 50, "hat"],
	["HGU-56/P (Olive/Mask)", "rhsusf_hgu56p_mask", 50, "hat"],
	["HGU-56/P (Olive/Mask/Mo)", "rhsusf_hgu56p_mask_mo", 50, "hat"],
	["HGU-56/P (Olive/Mask/Skull)", "rhsusf_hgu56p_mask_skull", 50, "hat"],
	["HGU-56/P (Olive/Visor)", "rhsusf_hgu56p_visor", 50, "hat"],
	["HGU-56/P (Olive/Visor/Mask)", "rhsusf_hgu56p_visor_mask", 50, "hat"],
	["HGU-56/P (Olive/Visor/Mask/Mo)", "rhsusf_hgu56p_visor_mask_mo", 50, "hat"],
	["HGU-56/P (Olive/Visor/Mask/Skull)", "rhsusf_hgu56p_visor_mask_skull", 50, "hat"],
	["HGU-56/P (Pink)", "rhsusf_hgu56p_pink", 50, "hat"],
	["HGU-56/P (Pink/Mask)", "rhsusf_hgu56p_mask_pink", 50, "hat"],
	["HGU-56/P (Pink/Visor)", "rhsusf_hgu56p_visor_pink", 50, "hat"],
	["HGU-56/P (Pink/Visor/Mask)", "rhsusf_hgu56p_visor_mask_pink", 50, "hat"],
	["HGU-56/P (SAF)", "rhsusf_hgu56p_saf", 50, "hat"],
	["HGU-56/P (SAF/Mask)", "rhsusf_hgu56p_mask_saf", 50, "hat"],
	["HGU-56/P (SAF/Visor)", "rhsusf_hgu56p_visor_saf", 50, "hat"],
	["HGU-56/P (SAF/Visor/Mask)", "rhsusf_hgu56p_visor_mask_saf", 50, "hat"],
	["HGU-56/P (Smiley/Mask)", "rhsusf_hgu56p_mask_smiley", 50, "hat"],
	["HGU-56/P (Smiley/Visor/Mask)", "rhsusf_hgu56p_visor_mask_smiley", 50, "hat"],
	["HGU-56/P (USA)", "rhsusf_hgu56p_usa", 50, "hat"],
	["HGU-56/P (USA/Visor)", "rhsusf_hgu56p_visor_usa", 50, "hat"],
	
	["Jet Pilot Helmet", "RHS_jetpilot_usaf", 50, "hat"],
	
	["LWH M1942", "rhsusf_lwh_helmet_M1942", 50, "hat"],
	["LWH MARPAT-D", "rhsusf_lwh_helmet_marpatd", 50, "hat"],
	["LWH MARPAT-D (ESS)", "rhsusf_lwh_helmet_marpatd_ess", 50, "hat"],
	["LWH MARPAT-D (Headset/ESS)", "rhsusf_lwh_helmet_marpatd_headset", 50, "hat"],
	["LWH MARPAT-WD", "rhsusf_lwh_helmet_marpatwd", 50, "hat"],
	["LWH MARPAT-WD (Black ESS)", "rhsusf_lwh_helmet_marpatwd_blk_ess", 50, "hat"],
	["LWH MARPAT-WD (Headset/Black ESS)", "rhsusf_lwh_helmet_marpatwd_headset_blk", 50, "hat"],
	["LWH MARPAT-WD (Headset/Tan ESS)", "rhsusf_lwh_helmet_marpatwd_headset", 50, "hat"],
	["LWH MARPAT-WD (Tan ESS)", "rhsusf_lwh_helmet_marpatwd_ess", 50, "hat"],
	
	["MICH 2000", "rhsusf_mich_bare", 50, "hat"],
	["MICH 2000 (Alt)", "rhsusf_mich_bare_alt", 50, "hat"],
	["MICH 2000 (Headset)", "rhsusf_mich_bare_headset", 50, "hat"],
	["MICH 2000 (Norotos)", "rhsusf_mich_bare_norotos", 50, "hat"],
	["MICH 2000 (Norotos/Alt)", "rhsusf_mich_bare_norotos_alt", 50, "hat"],
	["MICH 2000 (Norotos/Alt/Headset)", "rhsusf_mich_bare_norotos_alt_headset", 50, "hat"],
	["MICH 2000 (Norotos/ARC)", "rhsusf_mich_bare_norotos_arc", 50, "hat"],
	["MICH 2000 (Norotos/ARC/Alt)", "rhsusf_mich_bare_norotos_arc_alt", 50, "hat"],
	["MICH 2000 (Norotos/ARC/Alt/Headset)", "rhsusf_mich_bare_norotos_arc_alt_headset", 50, "hat"],
	["MICH 2000 (Norotos/ARC/Headset)", "rhsusf_mich_bare_norotos_arc_headset", 50, "hat"],
	["MICH 2000 (Norotos/Headset)", "rhsusf_mich_bare_norotos_headset", 50, "hat"],
	["MICH 2000 (Semi-Arid)", "rhsusf_mich_bare_semi", 50, "hat"],
	["MICH 2000 (Semi-Arid/Alt)", "rhsusf_mich_bare_alt_semi", 50, "hat"],
	["MICH 2000 (Semi-Arid/Headset)", "rhsusf_mich_bare_semi_headset", 50, "hat"],
	["MICH 2000 (Semi-Arid/Norotos)", "rhsusf_mich_bare_norotos_semi", 50, "hat"],
	["MICH 2000 (Semi-Arid/Norotos/Alt)", "rhsusf_mich_bare_norotos_alt_semi", 50, "hat"],
	["MICH 2000 (Semi-Arid/Norotos/Alt/Headset)", "rhsusf_mich_bare_norotos_alt_semi_headset", 50, "hat"],
	["MICH 2000 (Semi-Arid/Norotos/ARC)", "rhsusf_mich_bare_norotos_arc_semi", 50, "hat"],
	["MICH 2000 (Semi-Arid/Norotos/ARC/Alt)", "rhsusf_mich_bare_norotos_arc_alt_semi", 50, "hat"],
	["MICH 2000 (Semi-Arid/Norotos/ARC/Alt/Headset)", "rhsusf_mich_bare_norotos_arc_alt_semi_headset", 50, "hat"],
	["MICH 2000 (Semi-Arid/Norotos/ARC/Headset)", "rhsusf_mich_bare_norotos_arc_semi_headset", 50, "hat"],
	["MICH 2000 (Semi-Arid/Norotos/Headset)", "rhsusf_mich_bare_norotos_semi_headset", 50, "hat"],
	["MICH 2000 (Tan)", "rhsusf_mich_bare_tan", 50, "hat"],
	["MICH 2000 (Tan/Alt)", "rhsusf_mich_bare_alt_tan", 50, "hat"],
	["MICH 2000 (Tan/Headset)", "rhsusf_mich_bare_tan_headset", 50, "hat"],
	["MICH 2000 (Tan/Norotos)", "rhsusf_mich_bare_norotos_tan", 50, "hat"],
	["MICH 2000 (Tan/Norotos/Alt)", "rhsusf_mich_bare_norotos_alt_tan", 50, "hat"],
	["MICH 2000 (Tan/Norotos/Alt/Headset)", "rhsusf_mich_bare_norotos_alt_tan_headset", 50, "hat"],
	["MICH 2000 (Tan/Norotos/ARC)", "rhsusf_mich_bare_norotos_arc_tan", 50, "hat"],
	["MICH 2000 (Tan/Norotos/ARC/Alt)", "rhsusf_mich_bare_norotos_arc_alt_tan", 50, "hat"],
	["MICH 2000 (Tan/Norotos/ARC/Alt/Headset)", "rhsusf_mich_bare_norotos_arc_alt_tan_headset", 50, "hat"],
	["MICH 2000 (Tan/Norotos/Headset)", "rhsusf_mich_bare_norotos_tan_headset", 50, "hat"],
	["MICH 2000 MARPAT-D", "rhsusf_mich_helmet_marpatd", 50, "hat"],
	["MICH 2000 MARPAT-D (Alt)", "rhsusf_mich_helmet_marpatd_alt", 50, "hat"],
	["MICH 2000 MARPAT-D (Alt/Headset)", "rhsusf_mich_helmet_marpatd_alt_headset", 50, "hat"],
	["MICH 2000 MARPAT-D (Headset)", "rhsusf_mich_helmet_marpatd_headset", 50, "hat"],
	["MICH 2000 MARPAT-D (Norotos)", "rhsusf_mich_helmet_marpatd_norotos", 50, "hat"],
	["MICH 2000 MARPAT-D (Norotos/ARC)", "rhsusf_mich_helmet_marpatd_norotos_arc", 50, "hat"],
	["MICH 2000 MARPAT-D (Norotos/ARC/Headset)", "rhsusf_mich_helmet_marpatd_norotos_arc_headset", 50, "hat"],
	["MICH 2000 MARPAT-D (Norotos/Headset)", "rhsusf_mich_helmet_marpatd_norotos_headset", 50, "hat"],
	["MICH 2000 MARPAT-WD", "rhsusf_mich_helmet_marpatwd", 50, "hat"],
	["MICH 2000 MARPAT-WD (Alt)", "rhsusf_mich_helmet_marpatwd_alt", 50, "hat"],
	["MICH 2000 MARPAT-WD (Alt/Headset)", "rhsusf_mich_helmet_marpatwd_alt_headset", 50, "hat"],
	["MICH 2000 MARPAT-WD (Headset)", "rhsusf_mich_helmet_marpatwd_headset", 50, "hat"],
	["MICH 2000 MARPAT-WD (Norotos)", "rhsusf_mich_helmet_marpatwd_norotos", 50, "hat"],
	["MICH 2000 MARPAT-WD (Norotos/ARC)", "rhsusf_mich_helmet_marpatwd_norotos_arc", 50, "hat"],
	["MICH 2000 MARPAT-WD (Norotos/ARC/Headset)", "rhsusf_mich_helmet_marpatwd_norotos_arc_headset", 50, "hat"],
	["MICH 2000 MARPAT-WD (Norotos/Headset)", "rhsusf_mich_helmet_marpatwd_norotos_headset", 50, "hat"],
	
	["Patrol Cap OEF-CP", "rhsusf_patrolcap_ocp", 10, "hat"],
	["Patrol Cap UCP", "rhsusf_patrolcap_ucp", 10, "hat"],
	
	["Pro-Tech SF", "rhsusf_protech_helmet", 10, "hat"],
	["Pro-Tech SF (ESS)", "rhsusf_protech_helmet_ess", 10, "hat"],
	["Pro-Tech SF (Rhino)", "rhsusf_protech_helmet_rhino", 10, "hat"],
	["Pro-Tech SF (Rhino/ESS)", "rhsusf_protech_helmet_rhino_ess", 10, "hat"],
	
	["Utility Cap MARPAT-D", "rhs_8point_marpatd", 10, "hat"],
	["Utility Cap MARPAT-WD", "rhs_8point_marpatwd", 10, "hat"]
];

uniformArray = compileFinal str
[
	["Wetsuit", "U_B_Wetsuit", 200, "uni"],
	["Wetsuit", "U_O_Wetsuit", 200, "uni"],
	["Wetsuit", "U_I_Wetsuit", 200, "uni"],
	["Light Ghillie", "U_B_GhillieSuit", 200, "uni"],
	["Light Ghillie", "U_O_GhillieSuit", 200, "uni"],
	["Light Ghillie", "U_I_GhillieSuit", 200, "uni"],
	["Light Ghillie (Jungle)", "U_B_T_Sniper_F", 200, "uni"],
	["Light Ghillie (Jungle)", "U_O_T_Sniper_F", 200, "uni"],
	["Full Ghillie (Arid)", "U_B_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Arid)", "U_O_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Arid)", "U_I_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Lush)", "U_B_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Lush)", "U_O_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Lush)", "U_I_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_B_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_O_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_I_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Jungle)", "U_B_T_FullGhillie_tna_F", 2000, "uni"],
	["Full Ghillie (Jungle)", "U_O_T_FullGhillie_tna_F", 2000, "uni"],
	["CTRG Stealth Uniform", "U_B_CTRG_Soldier_F", 1000, "uni"],
	["Special Purpose Suit (Hex)", "U_O_V_Soldier_Viper_hex_F", 1000, "uni"],
	["Special Purpose Suit (G Hex)", "U_O_V_Soldier_Viper_F", 1000, "uni"],
	["Survival Fatigues (NATO)", "U_B_survival_uniform", 200, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 25, "uni"],
	["Default Uniform (CSAT)", "U_O_OfficerUniform_ocamo", 25, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 25, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 25, "uni"],
	["Combat Fatigues (Tropic)", "U_B_T_Soldier_F", 25, "uni", "noDLC"],
	["Combat Fatigues (Tee)", "U_B_CombatUniform_mcam_tshirt", 25, "uni"],
	["Combat Fatigues (Gangsta)", "U_I_G_resistanceLeader_F", 25, "uni"],
	["Combat Fatigues (Rolled-up)", "U_I_CombatUniform_shortsleeve", 25, "uni"],
	["CTRG Combat Uniform", "U_B_CTRG_1", 25, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_2", 25, "uni"],
	["CTRG Combat Uniform (Rolled-up)", "U_B_CTRG_3", 25, "uni"],
	["Fatigues (Hex)", "U_O_CombatUniform_ocamo", 50, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 50, "uni"],
	["Fatigues (G Hex)", "U_O_T_Soldier_F", 50, "uni", "noDLC"],
	["Officer Fatigues", "U_I_OfficerUniform", 25, "uni"],
	["Pilot Coveralls", "U_B_PilotCoveralls", 25, "uni"],
	["Pilot Coveralls", "U_O_PilotCoveralls", 25, "uni"],
	["Pilot Coveralls", "U_I_pilotCoveralls", 25, "uni"],
	["Heli Pilot Coveralls", "U_B_HeliPilotCoveralls", 25, "uni"],
	["Heli Pilot Coveralls", "U_I_HeliPilotCoveralls", 25, "uni"],
	["Guerilla Garment", "U_BG_Guerilla1_1", 25, "uni"],  // BLUFOR
	["Guerilla Outfit (Plain, Dark)", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_BG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_BG_leader", 25, "uni"],
	["Guerilla Garment", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Outfit (Plain, Dark)", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_OG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_OG_leader", 25, "uni"],
	["Guerilla Garment", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Outfit (Plain, Dark)", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_IG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_IG_leader", 25, "uni"],
	/*["Worker Coveralls", "U_C_WorkerCoveralls", 25, "uni"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 25, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 25, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 25, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 25, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 25, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 25, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 25, "uni"],*/
	["Polo (Competitor)", "U_Competitor", 25, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 25, "uni"],
	/*["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 25, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 25, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 25, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 25, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 25, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 25, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 25, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 25, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 25, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 25, "uni"],*/
	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 5000, "uni"]
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Lite (CTRG)", "V_PlateCarrierL_CTRG", -1, "vest"],
	["Carrier Lite (Tropic)", "V_PlateCarrier1_tna_F", -1, "vest", "noDLC"],
	["Carrier Rig (Green)", "V_PlateCarrier2_rgr", -1, "vest"],
	["Carrier Rig (Black)", "V_PlateCarrier2_blk", -1, "vest"],
	["Carrier Rig (CTRG)", "V_PlateCarrierH_CTRG", -1, "vest"],
	["Carrier Rig (Tropic)", "V_PlateCarrier2_tna_F", -1, "vest", "noDLC"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"],
	["Carrier GL Rig (Tropic)", "V_PlateCarrierGL_tna_F", -1, "vest", "noDLC"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"],
	["Carrier Special Rig (Tropic)", "V_PlateCarrierSpec_tna_F", -1, "vest", "noDLC"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"],
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Tactical Vest (Police)", "V_TacVest_blk_POLICE", -1, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"],
	["Press Vest", "V_Press_F", -1, "vest"],
	["Deck Crew Vest (Blue)", "V_DeckCrew_blue_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (Green)", "V_DeckCrew_green_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (Yellow)", "V_DeckCrew_yellow_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (Red)", "V_DeckCrew_red_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (Brown)", "V_DeckCrew_brown_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (Violet)", "V_DeckCrew_violet_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (White)", "V_DeckCrew_white_F", -1, "vest", "noDLC"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 100, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 100, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 100, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 100, "backpack"],
	["Assault Pack (Tropic)", "B_AssaultPack_tna_F", 100, "backpack", "noDLC"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],
	["Field Pack (G Hex)", "B_FieldPack_ghex_F", 200, "backpack", "noDLC"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Viper Light Harness (Black)", "B_ViperLightHarness_blk_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Hex)", "B_ViperLightHarness_hex_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (G Hex)", "B_ViperLightHarness_ghex_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Khaki)", "B_ViperLightHarness_khk_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Olive)", "B_ViperLightHarness_oli_F", 350, "backpack", "noDLC"],

	["Viper Harness (Black)", "B_ViperHarness_blk_F", 425, "backpack", "noDLC"],
	["Viper Harness (Hex)", "B_ViperHarness_hex_F", 425, "backpack", "noDLC"],
	["Viper Harness (G Hex)", "B_ViperHarness_ghex_F", 425, "backpack", "noDLC"],
	["Viper Harness (Khaki)", "B_ViperHarness_khk_F", 425, "backpack", "noDLC"],
	["Viper Harness (Olive)", "B_ViperHarness_oli_F", 425, "backpack", "noDLC"],

	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"],
	["Carryall (G Hex)", "B_Carryall_ghex_F", 500, "backpack", "noDLC"],

	["Bergen (Digital)", "B_Bergen_dgtl_F", 1000, "backpack", "noDLC"],
	["Bergen (Hex)", "B_Bergen_hex_F", 1000, "backpack", "noDLC"],
	["Bergen (MTP)", "B_Bergen_mcamo_F", 1000, "backpack", "noDLC"],
	["Bergen (Tropic)", "B_Bergen_tna_F", 1000, "backpack", "noDLC"]
];

genItemArray = compileFinal str
[
	["UAV Terminal (NATO)", "B_UavTerminal", 150, "gps"],
	["UAV Terminal (CSAT)", "O_UavTerminal", 150, "gps"],
	["UAV Terminal (AAF)", "I_UavTerminal", 150, "gps"],
	["Quadcopter UAV (NATO)", "B_UAV_01_backpack_F", 2500, "backpack"],
	["Quadcopter UAV (CSAT)", "O_UAV_01_backpack_F", 2500, "backpack"],
	["Quadcopter UAV (AAF)", "I_UAV_01_backpack_F", 2500, "backpack"],
	["Hexacopter UAV (NATO)", "B_UAV_06_backpack_F", 1000, "backpack"],
	["Hexacopter UAV (CSAT)", "O_UAV_06_backpack_F", 1000, "backpack"],
	["Hexacopter UAV (AAF)", "I_UAV_06_backpack_F", 1000, "backpack"],
	["Hexacopter Medical UAV (NATO)", "B_UAV_06_medical_backpack_F", 1500, "backpack"],
	["Hexacopter Medical UAV (CSAT)", "O_UAV_06_medical_backpack_F", 1500, "backpack"],
	["Hexacopter Medical UAV (AAF)", "I_UAV_06_medical_backpack_F", 1500, "backpack"],
	["Hexacopter Demining UAV", "C_IDAP_UAV_06_antimine_backpack_F", 10000, "backpack"],
	
	["Remote Designator (Sand)", "B_Static_Designator_01_weapon_F", 750, "backpack"],
	["Remote Designator (Hex)", "O_Static_Designator_02_weapon_F", 750, "backpack"],
	
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["Diving Goggles (AAF)", "G_I_Diving", 100, "gogg"],
	["Diving Goggles (CSAT)", "G_O_Diving", 100, "gogg"],
	["Diving Goggles (NATO)", "G_B_Diving", 100, "gogg"],
	
	["NV Goggles (Brown)", "NVGoggles", 100, "nvg"],
	["NV Goggles (Black)", "NVGoggles_OPFOR", 100, "nvg"],
	["NV Goggles (Green)", "NVGoggles_INDEP", 100, "nvg"],
	["NV Goggles (Tropic)", "NVGoggles_tna_F", 100, "nvg"],
	["Compact NVG (Hex)", "O_NVGoggles_hex_F", 150, "nvg"],
	["Compact NVG (G Hex)", "O_NVGoggles_ghex_F", 150, "nvg"],
	["Compact NVG (Urban)", "O_NVGoggles_urb_F", 150, "nvg"],
	["ENVG-II (Black)", "NVGogglesB_blk_F", 6000, "nvg"],
	["ENVG-II (Green)", "NVGogglesB_grn_F", 6000, "nvg"],
	["ENVG-II (Grey)", "NVGogglesB_gry_F", 6000, "nvg"],
	
	// RHS Nightvision
	["1PN138", "rhs_1PN138", 100, "nvg"],
	["AN/PVS-14", "rhsusf_ANPVS_14", 100, "nvg"],
	["AN/PVS-15", "rhsusf_ANPVS_15", 100, "nvg"],
	["Rhino Mount", "rhsusf_Rhino", 50, "nvg"],
	
	["Binoculars", "Binocular", 50, "binoc"],
	
	
	["Zrak RD-7J", "rhssaf_zrak_rd7j", 150, "binoc"],
	
	// RHSUSAF Binoculars and Rangefiners
	["Lerca 1200 Rangefinder (Black)", "lerca_1200_black", 150, "binoc"],
	["Lerca 1200 Rangefinder (Tan)", "lerca_1200_tan", 150, "binoc"],
	["M151 Spotting Scope", "Leupold_Mk4", 200, "binoc"],
	["Vector 21-B", "rhsusf_lrf_Vector21", 200, "binoc"],
	
	// RHSAFRF Binoculars and Rangefiners
	["PDU-4", "rhs_pdu4", 150, "binoc"],
	["TR-8 Periscope", "rhs_tr8_periscope", 200, "binoc"],
	["TR-8 Periscope (PIP)", "rhs_tr8_periscope_pip", 200, "binoc"],
	
	["Laser Designator (Sand)", "Laserdesignator", 250, "binoc", "noDLC"],
	["Laser Designator (Olive)", "Laserdesignator_03", 250, "binoc", "noDLC"],
	["Laser Designator (Khaki)", "Laserdesignator_01_khk_F", 250, "binoc", "noDLC"],
	["Laser Designator (Hex)", "Laserdesignator_02", 300, "binoc", "noDLC"],
	["Laser Designator (G Hex)", "Laserdesignator_02_ghex_F", 300, "binoc", "noDLC"],
	
	["IR Designator Grenade", "B_IR_Grenade", 50, "mag", "WEST"],
	["IR Designator Grenade", "O_IR_Grenade", 50, "mag", "EAST"],
	["IR Designator Grenade", "I_IR_Grenade", 50, "mag", "GUER"],
	
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],

	["Stealth Balaclava (Black)", "G_Balaclava_TI_blk_F", 200, "gogg"],
	["Stealth Balaclava (Black, Goggles)", "G_Balaclava_TI_G_blk_F", 250, "gogg"],
	["Stealth Balaclava (Green)", "G_Balaclava_TI_tna_F", 200, "gogg"],
	["Stealth Balaclava (Green, Goggles)", "G_Balaclava_TI_G_tna_F", 250, "gogg"],
	
	["Combat Goggles", "G_Combat", 25, "gogg"],
	["Combat Goggles (Green)", "G_Combat_Goggles_tna_F", 25, "gogg", "noDLC"],
	
	// RHSUSAF Goggles
	["Ballistic Glasses (Black)", "rhs_googles_black", 10, "gogg"],
	["Ballistic Glasses (Clear)", "rhs_googles_clear", 10, "gogg"],
	["Ballistic Glasses (Orange)", "rhs_googles_orange", 10, "gogg"],
	["Ballistic Glasses (Yellow)", "rhs_googles_yellow", 10, "gogg"],
	["Ballistic Goggles (Black)", "rhs_ess_black", 25, "gogg"],
	["SI Ballistic 2.0 (Black)", "rhsusf_oakley_goggles_blk", 25, "gogg"],
	["SI Ballistic 2.0 (Clear)", "rhsusf_oakley_goggles_clr", 25, "gogg"],
	["SI Ballistic 2.0 (Yellow)", "rhsusf_oakley_goggles_ylw", 25, "gogg"],
	
	["VR Goggles", "G_Goggles_VR", 25, "gogg"],
	
	["Balaclava (Black)", "G_Balaclava_blk", 25, "gogg"],
	["Balaclava (Combat Goggles)", "G_Balaclava_combat", 25, "gogg"],
	["Balaclava (Low Profile Goggles)", "G_Balaclava_lowprofile", 25, "gogg"],
	["Balaclava (Olive)", "G_Balaclava_oli", 25, "gogg"],
	
	// RHSAFRF Balaclavas
	["Balaclava", "rhs_balaclava", 25, "gogg"],
	["Balaclava (Olive)", "rhs_balaclava1_olive", 25, "gogg"],
	["Scarf", "rhs_scarf", 10, "gogg"],
	
	["Bandana (Aviator)", "G_Bandanna_aviator", 25, "gogg"],
	["Bandana (Beast)", "G_Bandanna_beast", 25, "gogg"],
	["Bandana (Black)", "G_Bandanna_blk", 25, "gogg"],
	["Bandana (Khaki)", "G_Bandanna_khk", 25, "gogg"],
	["Bandana (Olive)", "G_Bandanna_oli", 25, "gogg"],
	["Bandana (Shades)", "G_Bandanna_shades", 25, "gogg"],
	["Bandana (Sport)", "G_Bandanna_sport", 25, "gogg"],
	["Bandana (Tan)", "G_Bandanna_tan", 25, "gogg"],
	
	// RHSUSAF Goggles
	["Shemagh (Green)", "rhsusf_shemagh_grn", 25, "gogg"],
	["Shemagh (Green/alt)", "rhsusf_shemagh2_grn", 25, "gogg"],
	["Shemagh (OD)", "rhsusf_shemagh_od", 25, "gogg"],
	["Shemagh (OD/alt)", "rhsusf_shemagh2_od", 25, "gogg"],
	["Shemagh (Tan)", "rhsusf_shemagh_tan", 25, "gogg"],
	["Shemagh (Tan/alt)", "rhsusf_shemagh2_tan", 25, "gogg"],
	["Shemagh (White)", "rhsusf_shemagh_white", 25, "gogg"],
	["Shemagh (White/alt)", "rhsusf_shemagh2_white", 25, "gogg"],
	["Shemagh w/Goggles (Green)", "rhsusf_shemagh_gogg_grn", 25, "gogg"],
	["Shemagh w/Goggles (Green/alt)", "rhsusf_shemagh2_gogg_grn", 25, "gogg"],
	["Shemagh w/Goggles (OD)", "rhsusf_shemagh_gogg_od", 25, "gogg"],
	["Shemagh w/Goggles (OD/alt)", "rhsusf_shemagh2_gogg_od", 25, "gogg"],
	["Shemagh w/Goggles (Tan)", "rhsusf_shemagh_gogg_tan", 25, "gogg"],
	["Shemagh w/Goggles (Tan/alt)", "rhsusf_shemagh2_gogg_tan", 25, "gogg"],
	["Shemagh w/Goggles (White)", "rhsusf_shemagh_gogg_white", 25, "gogg"],
	["Shemagh w/Goggles (White/alt)", "rhsusf_shemagh2_gogg_white", 25, "gogg"],

	["Aviator Glasses", "G_Aviator", 10, "gogg"],
	["Ladies Shades", "G_Lady_Blue", 10, "gogg"],
	["Ladies Shades (Fire)", "G_Lady_Red", 10, "gogg"],
	["Ladies Shades (Iridium)", "G_Lady_Mirror", 10, "gogg"],
	["Ladies Shades (Sea)", "G_Lady_Dark", 10, "gogg"],
	["Low Profile Goggles", "G_Lowprofile", 10, "gogg"],
	["Shades (Black)", "G_Shades_Black", 10, "gogg"],
	["Shades (Blue)", "G_Shades_Blue", 10, "gogg"],
	["Shades (Green)", "G_Shades_Green", 10, "gogg"],
	["Shades (Red)", "G_Shades_Red", 10, "gogg"],
	["Spectacle Glasses", "G_Spectacles", 10, "gogg"],
	["Sport Shades (Fire)", "G_Sport_Red", 10, "gogg"],
	["Sport Shades (Poison)", "G_Sport_Blackyellow", 10, "gogg"],
	["Sport Shades (Shadow)", "G_Sport_BlackWhite", 10, "gogg"],
	["Sport Shades (Style)", "G_Sport_Checkered", 10, "gogg"],
	["Sport Shades (Vulcan)", "G_Sport_Blackred", 10, "gogg"],
	["Sport Shades (Yetti)", "G_Sport_Greenblack", 10, "gogg"],
	["Square Shades", "G_Squares_Tinted", 10, "gogg"],
	["Square Spectacles", "G_Squares", 10, "gogg"],
	["Tactical Glasses", "G_Tactical_Clear", 10, "gogg"],
	["Tactical Shades", "G_Tactical_Black", 10, "gogg"],
	["Tinted Spectacles", "G_Spectacles_Tinted", 10, "gogg"],
	["Wireless Earpiece", "G_WirelessEarpiece_F", 10, "gogg"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Camo Net", "CamoNet_INDP_open_F", 200, "object", "HIDDEN"], // unlisted, only for object saving

	["Pier Ladder", "Land_PierLadder_F", 250, "object"],
	["Ammo Cache", "Box_FIA_Support_F", 250, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 10000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	// SKIPSAVE = will not be autosaved until first manual force save, good for cheap vehicles that usually get abandoned

	["Kart", "C_Kart_01_F", 400, "vehicle", "SKIPSAVE"],

		["Quadbike (Civilian)", "C_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
		["Quadbike (NATO)", "B_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], //
		["Quadbike (CSAT)", "O_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], //
		["Quadbike (AAF)", "I_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Quadbike", "I_G_Quadbike_01_F", 500, "vehicle", "SKIPSAVE"],

	["Hatchback", "C_Hatchback_01_F", 750, "vehicle", "SKIPSAVE"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 900, "vehicle", "SKIPSAVE"],
	["SUV", "C_SUV_01_F", 1000, "vehicle", "SKIPSAVE"],

	["MB 4WD", "C_Offroad_02_unarmed_F", 1000, "vehicle", "SKIPSAVE"],
		["MB 4WD (Guerilla)", "I_C_Offroad_02_unarmed_F", 900, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["MB 4WD LMG", "I_C_Offroad_02_LMG_F", 1750, "vehicle", "SKIPSAVE"],
	["MB 4WD AT", "I_C_Offroad_02_AT_F", 7500, "vehicle"],

	["Offroad", "C_Offroad_01_F", 1000, "vehicle", "SKIPSAVE"],
		["Offroad Camo", "I_G_Offroad_01_F", 1250, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Offroad Police", "B_GEN_Offroad_01_gen_F", 1250, "vehicle", "SKIPSAVE", "noDLC"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle", "SKIPSAVE"],
	["Offroad HMG", "I_G_Offroad_01_armed_F", 2500, "vehicle", "SKIPSAVE"],
	["Offroad AT", "I_G_Offroad_01_AT_F", 7500, "vehicle"],

	["Truck", "C_Van_01_transport_F", 700, "vehicle", "SKIPSAVE"],
		["Truck Camo", "I_G_Van_01_transport_F", 800, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Truck Box", "C_Van_01_box_F", 900, "vehicle", "SKIPSAVE"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle", "SKIPSAVE"],
		["Fuel Truck Camo", "I_G_Van_01_fuel_F", 2100, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob

	["Van Cargo", "C_Van_02_vehicle_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Transport", "C_Van_02_transport_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Police Cargo", "B_GEN_Van_02_vehicle_F", 1250, "vehicle", "SKIPSAVE"],
	["Van Police Transport", "B_GEN_Van_02_transport_F", 1250, "vehicle", "SKIPSAVE"],
	["Van Ambulance", "C_Van_02_medevac_F", 1500, "vehicle", "SKIPSAVE"],
	["Van Repair", "C_Van_02_service_F", 2000, "vehicle", "SKIPSAVE"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Resupply", "B_Truck_01_ammo_F", 5000, "vehicle"],
	//["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7000, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 8000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 9000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 10000, "vehicle"],

	["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],
	["Tempest Resupply", "O_Truck_03_ammo_F", 5000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7000, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 8000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 9000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 10000, "vehicle"],

	["Zamak Resupply", "I_Truck_02_ammo_F", 4000, "vehicle"],
	["Zamak Transport", "I_Truck_02_transport_F", 4500, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 6000, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 7000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 8000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"]
];

armoredArray = compileFinal str
[
	["Prowler Light", "B_CTRG_LSV_01_light_F", 1250, "vehicle", "SKIPSAVE"],
	["Prowler", "B_T_LSV_01_unarmed_F", 1500, "vehicle", "SKIPSAVE"],
	["Prowler HMG", "B_T_LSV_01_armed_F", 6000, "vehicle", "SKIPSAVE"],
	["Prowler AT", "B_T_LSV_01_AT_F", 10000, "vehicle"],
	["Qilin", "O_T_LSV_02_unarmed_F", 1500, "vehicle", "SKIPSAVE"],
	["Qilin Minigun", "O_T_LSV_02_armed_F", 6000, "vehicle", "SKIPSAVE"],
	["Qilin AT", "O_T_LSV_02_AT_F", 10000, "vehicle"],

	["Hunter", "B_MRAP_01_F", 4000, "vehicle", "SKIPSAVE"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 15000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 17500, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 4000, "vehicle", "SKIPSAVE"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 15000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 17500, "vehicle"],
	["Strider", "I_MRAP_03_F", 4000, "vehicle", "SKIPSAVE"],
	["Strider HMG", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_v2_F", 25000, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 30000, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 35000, "vehicle"],
	["Rhino MGS", "B_AFV_Wheeled_01_cannon_F", 45000, "vehicle"],
	["Rhino MGS UP", "B_AFV_Wheeled_01_up_cannon_F", 55000, "vehicle"]
];

tanksArray = compileFinal str
[
	["AWC 303 Nyx Recon", "I_LT_01_scout_F", 5000, "vehicle"],
	["AWC 304 Nyx Autocannon", "I_LT_01_cannon_F", 20000, "vehicle"],
	["AWC 301 Nyx AT", "I_LT_01_AT_F", 20000, "vehicle"],
	["AWC 302 Nyx AA", "I_LT_01_AA_F", 20000, "vehicle"],
	["CRV-6e Bobcat (Resupply)", "B_APC_Tracked_01_CRV_F", 30000, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 30000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 35000, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 50000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 50000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 50000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 50000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 50000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 60000, "vehicle"],
	["T-140 Angara", "O_MBT_04_cannon_F", 75000, "vehicle"],
	["T-140K Angara", "O_MBT_04_command_F", 90000, "vehicle"]
];

helicoptersArray = compileFinal str
[
	["Hexacopter Demining UAV", "C_IDAP_UAV_06_antimine_F", (call genItemArray) select {_x select 1 == "C_IDAP_UAV_06_antimine_backpack_F"} select 0 select 2, "vehicle", "HIDDEN"], // for resupply price

	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["PO-30 Orca (Unarmed)", "O_Heli_Light_02_unarmed_F", 6000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Unarmed)", "I_Heli_light_03_unarmed_F", 7000, "vehicle"], // AW159
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 8000, "vehicle"], // AW101

	["Mi-290 Taru (Resupply)", "O_Heli_Transport_04_ammo_F", 7500, "vehicle"],
	["Mi-290 Taru (Crane)", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["Mi-290 Taru (Box)", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["Mi-290 Taru (Fuel)", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Bench)", "O_Heli_Transport_04_bench_F", 9000, "vehicle"],
	["Mi-290 Taru (Transport)", "O_Heli_Transport_04_covered_F", 9500, "vehicle"],
	["Mi-290 Taru (Medical)", "O_Heli_Transport_04_medevac_F", 12500, "vehicle"],
	["Mi-290 Taru (Repair)", "O_Heli_Transport_04_repair_F", 15000, "vehicle"],

	["CH-67 Huron (Unarmed)", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["CH-67 Huron (Armed)", "B_Heli_Transport_03_F", 20000, "vehicle"], // CH-47 with 2 side miniguns

	["UH-80 Ghost Hawk", "B_Heli_Transport_01_F", 12500, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["AH-9 Pawnee (Gun-Only)", "B_Heli_Light_01_dynamicLoadout_F", 15000, "vehicle", "variant_pawneeGun"], // Armed AH-6 (no missiles)
	["AH-9 Pawnee", "B_Heli_Light_01_dynamicLoadout_F", 35000, "vehicle", "variant_pawneeNormal"], // Armed AH-6
	["PO-30 Orca (DAR)", "O_Heli_Light_02_dynamicLoadout_F", 30000, "vehicle", "variant_orcaDAR"], // Armed Ka-60
	["PO-30 Orca (DAGR)", "O_Heli_Light_02_dynamicLoadout_F", 40000, "vehicle", "variant_orcaDAGR"], // Armed Ka-60, add "HIDDEN" if you don't want it, but don't remove the line!
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_dynamicLoadout_F", 40000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_dynamicLoadout_F", 50000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman", "O_Heli_Attack_02_dynamicLoadout_F", 60000, "vehicle"], // Mi-28 with gunner 

	["MQ-12 Falcon UAV", "B_T_UAV_03_F", 75000, "vehicle"] // Do NOT use "B_T_UAV_03_dynamicLoadout_F" (unlees you don't need ASRAAM)
];

planesArray = compileFinal str
[
	["Caesar BTT", "C_Plane_Civil_01_F", 2500, "vehicle"],

	["A-143 Buzzard AA", "I_Plane_Fighter_03_dynamicLoadout_F", 40000, "vehicle", "variant_buzzardAA"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_dynamicLoadout_F", 50000, "vehicle", "variant_buzzardCAS"],

	["A-149 Gryphon", "I_Plane_Fighter_04_F", 50000, "vehicle"],

	["F/A-181 Black Wasp (Gun-Only)", "B_Plane_Fighter_01_Stealth_F", 20000, "vehicle"], // no missiles or bombs
	["F/A-181 Black Wasp AA", "B_Plane_Fighter_01_F", 40000, "vehicle", "variant_blackwaspAA"],
	["F/A-181 Black Wasp CAS", "B_Plane_Fighter_01_F", 65000, "vehicle"],

	["To-201 Shikra (Gun-Only)", "O_Plane_Fighter_02_Stealth_F", 25000, "vehicle"], // no missiles or bombs
	["To-201 Shikra AA", "O_Plane_Fighter_02_F", 50000, "vehicle", "variant_shikraAA"],
	["To-201 Shikra CAS", "O_Plane_Fighter_02_F", 75000, "vehicle"],

	["A-164 Wipeout CAS", "B_Plane_CAS_01_dynamicLoadout_F", 75000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_dynamicLoadout_F", 75000, "vehicle"],

	["V-44 X Blackfish (Infantry)", "B_T_VTOL_01_infantry_F", 10000, "vehicle"],
	["V-44 X Blackfish (Gunship)", "B_T_VTOL_01_armed_F", 60000, "vehicle"],
	["Y-32 Xi'an", "O_T_VTOL_02_infantry_dynamicLoadout_F", 60000, "vehicle"],

	["KH-3A Fenghuang Missile UAV", "O_T_UAV_04_CAS_F", 30000, "vehicle"],

	["MQ4A Greyhawk Missile UAV", "B_UAV_02_dynamicLoadout_F", 30000, "vehicle", "variant_greyhawkMissile"],
	["K40 Ababil-3 Missile UAV", "O_UAV_02_dynamicLoadout_F", 30000, "vehicle", "variant_greyhawkMissile"],
	["K40 Ababil-3 Missile UAV", "I_UAV_02_dynamicLoadout_F", 30000, "vehicle", "variant_greyhawkMissile"],

	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_dynamicLoadout_F", 20000, "vehicle", "variant_greyhawkBomber"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than Missile ones
	["K40 Ababil-3 Bomber UAV", "O_UAV_02_dynamicLoadout_F", 20000, "vehicle", "variant_greyhawkBomber"],
	["K40 Ababil-3 Bomber UAV", "I_UAV_02_dynamicLoadout_F", 20000, "vehicle", "variant_greyhawkBomber"],

	["MQ4A Greyhawk Cluster UAV", "B_UAV_02_dynamicLoadout_F", 25000, "vehicle", "variant_greyhawkCluster"],
	["K40 Ababil-3 Cluster UAV", "O_UAV_02_dynamicLoadout_F", 25000, "vehicle", "variant_greyhawkCluster"],
	["K40 Ababil-3 Cluster UAV", "I_UAV_02_dynamicLoadout_F", 25000, "vehicle", "variant_greyhawkCluster"],

	["MQ4A Greyhawk DAGR UAV", "B_UAV_02_dynamicLoadout_F", 60000, "vehicle", "variant_greyhawkDAGR"],
	["K40 Ababil-3 DAGR UAV", "O_UAV_02_dynamicLoadout_F", 60000, "vehicle", "variant_greyhawkDAGR"],
	["K40 Ababil-3 DAGR UAV", "I_UAV_02_dynamicLoadout_F", 60000, "vehicle", "variant_greyhawkDAGR"],

	["UCAV Sentinel Missile", "B_UAV_05_F", 40000, "vehicle", "variant_sentinelMissile"],
	["UCAV Sentinel Bomber", "B_UAV_05_F", 20000, "vehicle", "variant_sentinelBomber"],
	["UCAV Sentinel Cluster", "B_UAV_05_F", 25000, "vehicle", "variant_sentinelCluster"]
];

boatsArray = compileFinal str
[
	["Water Scooter", "C_Scooter_Transport_01_F", 500, "boat", "SKIPSAVE"],

		["Rescue Boat", "C_Rubberboat", 500, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
		["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat", "SKIPSAVE", "HIDDEN"], //
		["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat", "SKIPSAVE", "HIDDEN"], //
	["Assault Boat", "B_Boat_Transport_01_F", 500, "boat", "SKIPSAVE"],
		["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
		["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat", "SKIPSAVE", "HIDDEN"], //
		["Assault Boat (FIA)", "I_G_Boat_Transport_01_F", 600, "boat", "SKIPSAVE", "HIDDEN"], //
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat", "SKIPSAVE"],
		["Motorboat Rescue", "C_Boat_Civil_01_rescue_F", 900, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
		["Motorboat Police", "C_Boat_Civil_01_police_F", 1100, "boat", "SKIPSAVE", "HIDDEN"], //

	["RHIB", "I_C_Boat_Transport_02_F", 1500, "boat", "SKIPSAVE"],

	["Speedboat HMG", "O_Boat_Armed_01_hmg_F", 4000, "boat", "SKIPSAVE"],
	["Speedboat Minigun", "B_Boat_Armed_01_minigun_F", 4000, "boat", "SKIPSAVE"],
		["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["SDV Submarine (NATO)", "B_SDV_01_F", 1500, "submarine", "SKIPSAVE"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1500, "submarine", "SKIPSAVE"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1500, "submarine", "SKIPSAVE"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	// Deprecated
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_wreckDir = "\A3\structures_f\wrecks\data\";
_gorgonDir = "\A3\armor_f_gamma\APC_Wheeled_03\data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All", // "All" must always be first in colorsArray
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Red - Kart", [[0, _kartDir + "kart_01_base_red_co.paa"]]] // no red TextureSource :(
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo - MH-9", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White - MH-9", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy - MH-9", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION - MH-9", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Blackfoot paintjob
		"Heli_Attack_01_base_F",
		[
			["Rusty - AH-99 Blackfoot", [[0, _wreckDir + "wreck_heli_attack_01_co.paa"]]]
		]
	],
	[ // Kajman paintjobs
		"Heli_Attack_02_base_F",
		[
			["Rusty - Mi-48 Kajman", [
				[0, _wreckDir + "wreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "wreck_heli_attack_02_body2_co.paa"]
			]],
			["Mossy - Mi-48 Kajman", [
				[0, _wreckDir + "uwreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "uwreck_heli_attack_02_body2_co.paa"]
			]]
		]
	],
	[ // Gorgon paintjobs
		"APC_Wheeled_03_base_F",
		[
			["Tan - AFV-4 Gorgon", [
				[0, _gorgonDir + "apc_wheeled_03_ext_co.paa"],
				[1, _gorgonDir + "apc_wheeled_03_ext2_co.paa"],
				[2, _gorgonDir + "rcws30_co.paa"],
				[3, _gorgonDir + "apc_wheeled_03_ext_alpha_co.paa"]
			]]
		]
	],
	[ // Hatchback wreck paintjob
		"Hatchback_01_base_F",
		[
			["Rusty - Hatchback", [[0, _wreckDir + "civilcar_extwreck_co.paa"]]]
		]
	],
	[ // GOD EMPEROR
		"B_MBT_01_cannon_F",
		[
			["Trump - Slammer", [
				[0, _texDir + "slammer_trump_0.paa"],
				[1, _texDir + "slammer_trump_1.paa"]
			]]
		]
	],
	[
		"B_MBT_01_TUSK_F",
		[
			["Trump - Slammer", [[2, _texDir + "slammer_trump_2.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 100, 50],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Artillery Strike", "artillery", "", "client\icons\tablet.paa", 500000, 100000],
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 10, 5],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 10, 5],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 200, 100],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 100, 50],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 500, 250],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 100, 50],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 20, 10],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500] 
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
