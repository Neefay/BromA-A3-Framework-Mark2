
// =============================================================================
/*
     This is where you set the plugin parameters for your mission, have fun!    
*/
// =============================================================================

// ============================================================================
//                                                                             |
//                       == AGM MEDICAL SETTINGS ==                            |
//                                                                             |
// ============================================================================

// Non-medic units can use epinephrine and blood bags.
agm_settings_AllowNonmedics = true;

// Unconcious units wake up by themselves after a while.
agm_settings_AutomaticWakeup = true;

// How much a unit bleeds, default 1.
agm_settings_CoefBleeding = 1;

// How much damage a unit takes, default 1.
agm_settings_CoefDamage = 1;

// How harder it is for non-medics to perform medical actions, default 1.
agm_settings_CoefNonMedic = 4;

// How much pain a unit feels, default 1.
agm_settings_CoefPain = 1;

// Player units who are unconcious will not die after being shot again.
agm_settings_PreventDeathWhileUnconscious = true;

// Player units won't die before going unconcious.
agm_settings_PreventInstaDeath = true;

// Require a diagnosis before treating a wounded unit.
agm_settings_RequireDiagnosis = false;

// Require only a single bandage to treat a unit.
agm_settings_SingleBandage = false;

// Disables screams of pain.
agm_settings_DisableScreams = false;

// ============================================================================
//                                                                             |
//                   == TASK FORCE RADIO ALPHA SETTINGS ==                     |
//                                                                             |
// ============================================================================

tf_same_sw_frequencies_for_side = true;

tf_same_lr_frequencies_for_side = true;

tf_no_auto_long_range_radio = true;

TF_give_personal_radio_to_regular_soldier = false;

TF_give_microdagr_to_soldier = false;

// ============================================================================
//                          == COMMANDER LOCK ==                               |
//                                                                             |
// This module stops all of a side's units from entering vehicles or shooting, |
//           until their CO or similarly authorized player says so.            |
// ============================================================================

// What units are authorized to ready their team.
co_lock_units = [blu_0_0_1, op_0_0_1, ind_0_0_1];

// If this is enabled, the mission won't start until all sides are ready.
co_lock_tvt_mode = false;

// ============================================================================
//                       == F2's BODY REMOVAL ==                               |
//                                                                             |
//                    Removes the bodies of dead units.                        |
// ============================================================================

// How long until the bodies are removed.
f_var_removeBodyDelay = 60;

// How far do they have to be from a player.
f_var_removeBodyDistance = 5;

// ============================================================================
//                       == F2's CASUALTY CAP ==                               |
//                                                                             |
//        Detects when a percentage of the selected group(s) is dead,          |
//        http://ferstaberinde.com/f2/en/index.php?title=Casualties_Cap        |
// ============================================================================

casualty_group_a = [blu_0_0, blu_1_0, blu_1_1, blu_1_2, blu_2_0, blu_2_1, blu_2_2, blu_3_0, blu_3_1, blu_3_2, blu_4_0, blu_4_1, blu_4_2];
// Casualty groups for the first side.

casualty_group_b = [op_0_0, op_1_0, op_1_1, op_1_2, op_2_0, op_2_1, op_2_2, op_3_0, op_3_1, op_3_2, op_4_0, op_4_1, op_4_2];
// Casualty group for the second side.

casualty_group_c = [ind_0_0, ind_1_0, ind_1_1, ind_1_2, ind_2_0, ind_2_1, ind_2_2, ind_3_0, ind_3_1, ind_3_2, ind_4_0, ind_4_1, ind_4_2];
// Casualty group for the third side.
    
// ============================================================================
//                              == TIME LIMIT ==                               |
//                                                                             |
//      This setting decides when players will get a reminder of how much      |
//                 time is there still left in the mission.                    |
// ============================================================================

time_alerted_minutes = [120, 60, 15, 1];

// ============================================================================
//                            == CIVILIAN CAP ==                               |
//                                                                             |
//    Sides included here will be held responsible for civilian casualties,    |
//                   if the parameters for such are enabled.                   |
// ============================================================================

responsible_sides = [side_a_side, side_b_side];

// ============================================================================
//                     == SETUP AND SPAWN PROTECTION ==                        |
//                                                                             |
//  Determines how large the setup and spawn protection zones are, in meters.  |
// ============================================================================

spawn_protection_area = 10;

setup_zone_area = 50;

// =============================================================================
//        This is a list with all playable units, for DAC to use:              |
//                     add or remove as necessary.                             |

//                 Chances are you can just leave this alone.                  |
// =============================================================================
DAC_STRPlayers = [
// =============================================================================

//                     ==== BLUFOR 1st PLATOON ====

                  "blu_0_0_1", "blu_0_0_2", "blu_0_0_3",

                        "blu_1_0_1", "blu_1_0_2",
                        "blu_1_1_1", "blu_1_1_2",
                        "blu_1_1_3", "blu_1_1_4",
                        "blu_1_2_1", "blu_1_2_2",
                        "blu_1_2_3", "blu_1_2_4",

                        "blu_2_0_1", "blu_2_0_2",
                        "blu_2_1_1", "blu_2_1_2",
                        "blu_2_1_3", "blu_2_1_4",
                        "blu_2_2_1", "blu_2_2_2",
                        "blu_2_2_3", "blu_2_2_4",

                        "blu_3_0_1", "blu_3_0_2",
                        "blu_3_1_1", "blu_3_1_2",
                        "blu_3_1_3", "blu_3_1_4",
                        "blu_3_2_1", "blu_3_2_2",
                        "blu_3_2_3", "blu_3_2_4",

                        "blu_4_0_1", "blu_4_0_2",
                        "blu_4_1_1", "blu_4_1_2",
                        "blu_4_1_3", "blu_4_1_4",
                        "blu_4_2_1", "blu_4_2_2",
                        "blu_4_2_3", "blu_4_2_4",
                             
// =============================================================================

// =============================================================================

//                        ==== OPFOR 1st PLATOON ====

                     "op_0_0_1", "op_0_0_2", "op_0_0_3",

                            "op_1_0_1", "op_1_0_2",
                            "op_1_1_1", "op_1_1_2",
                            "op_1_1_3", "op_1_1_4",
                            "op_1_2_1", "op_1_2_2",
                            "op_1_2_3", "op_1_2_4",

                            "op_2_0_1", "op_2_0_2",
                            "op_2_1_1", "op_2_1_2",
                            "op_2_1_3", "op_2_1_4",
                            "op_2_2_1", "op_2_2_2",
                            "op_2_2_3", "op_2_2_4",

                            "op_3_0_1", "op_3_0_2",
                            "op_3_1_1", "op_3_1_2",
                            "op_3_1_3", "op_3_1_4",
                            "op_3_2_1", "op_3_2_2",
                            "op_3_2_3", "op_3_2_4",

                            "op_4_0_1", "op_4_0_2",
                            "op_4_1_1", "op_4_1_2",
                            "op_4_1_3", "op_4_1_4",
                            "op_4_2_1", "op_4_2_2",
                            "op_4_2_3", "op_4_2_4",
                             
// =============================================================================

// =============================================================================

//                      ==== INDEPENDENT 1st PLATOON ====

                     "ind_0_0_1", "ind_0_0_2", "ind_0_0_3",

                            "ind_1_0_1", "ind_1_0_2",
                            "ind_1_1_1", "ind_1_1_2",
                            "ind_1_1_3", "ind_1_1_4",
                            "ind_1_2_1", "ind_1_2_2",
                            "ind_1_2_3", "ind_1_2_4",

                            "ind_2_0_1", "ind_2_0_2",
                            "ind_2_1_1", "ind_2_1_2",
                            "ind_2_1_3", "ind_2_1_4",
                            "ind_2_2_1", "ind_2_2_2",
                            "ind_2_2_3", "ind_2_2_4",

                            "ind_3_0_1", "ind_3_0_2",
                            "ind_3_1_1", "ind_3_1_2",
                            "ind_3_1_3", "ind_3_1_4",
                            "ind_3_2_1", "ind_3_2_2",
                            "ind_3_2_3", "ind_3_2_4",

                            "ind_4_0_1", "ind_4_0_2",
                            "ind_4_1_1", "ind_4_1_2",
                            "ind_4_1_3", "ind_4_1_4",
                            "ind_4_2_1", "ind_4_2_2",
                            "ind_4_2_3", "ind_4_2_4"
                             
// =============================================================================
];