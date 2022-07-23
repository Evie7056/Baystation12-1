// /datum/job/captain
// 	title = "Commanding Officer"
// 	supervisors = "the Sol Central Government and the Sol Code of Uniform Justice"
// 	minimal_player_age = 14
// 	economic_power = 16
// 	minimum_character_age = list(SPECIES_HUMAN = 40)
// 	ideal_character_age = 50
// 	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/CO
// 	allowed_branches = list(
// 		/datum/mil_branch/expeditionary_corps
// 	)
// 	allowed_ranks = list(
// 		/datum/mil_rank/ec/o6
// 	)
// 	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
// 	                    SKILL_SCIENCE     = SKILL_ADEPT,
// 	                    SKILL_PILOT       = SKILL_ADEPT)

// 	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
// 	                    SKILL_SCIENCE     = SKILL_MAX)
// 	skill_points = 30

// 	software_on_spawn = list(/datum/computer_file/program/comm,
// 							 /datum/computer_file/program/card_mod,
// 							 /datum/computer_file/program/camera_monitor,
// 							 /datum/computer_file/program/reports)

// /datum/job/captain/get_description_blurb()
// 	return "You are the Commanding Officer. You are the top dog. You are an experienced professional officer in control of an entire ship, and ultimately responsible for all that happens onboard. Your job is to make sure [GLOB.using_map.full_name] fulfils its space exploration mission. Delegate to your Executive Officer, your department heads, and your Senior Enlisted Advisor to effectively manage the ship, and listen to and trust their expertise."

// /datum/job/captain/post_equip_rank(var/mob/person, var/alt_title)
// 	var/sound/announce_sound = (GAME_STATE <= RUNLEVEL_SETUP)? null : sound('sound/misc/boatswain.ogg', volume=20)
// 	captain_announcement.Announce("All hands, [alt_title || title] [person.real_name] on deck!", new_sound = announce_sound)
// 	..()

// /datum/job/hop
// 	title = "Executive Officer"
// 	supervisors = "the Commanding Officer"
// 	department = "Command"
// 	department_flag = COM
// 	minimal_player_age = 14
// 	economic_power = 14
// 	minimum_character_age = list(SPECIES_HUMAN = 35)
// 	ideal_character_age = 45
// 	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/XO
// 	allowed_branches = list(
// 		/datum/mil_branch/expeditionary_corps,
// 		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/XO/fleet
// 	)
// 	allowed_ranks = list(
// 		/datum/mil_rank/ec/o5,
// 		/datum/mil_rank/fleet/o4,
// 		/datum/mil_rank/fleet/o5
// 	)
// 	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
// 	                    SKILL_COMPUTER    = SKILL_BASIC,
// 	                    SKILL_PILOT       = SKILL_BASIC)

// 	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
// 	                    SKILL_SCIENCE     = SKILL_MAX)
// 	skill_points = 30

// 	access = list(
// 		access_security, access_brig, access_armory, access_forensics_lockers, access_heads, access_medical, access_morgue, access_tox, access_tox_storage,
// 		access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage, access_change_ids,
// 		access_ai_upload, access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_chapel_office, access_tech_storage,
// 		access_atmospherics, access_janitor, access_crematorium, access_kitchen, access_robotics, access_cargo, access_construction,
// 		access_chemistry, access_cargo_bot, access_hydroponics, access_manufacturing, access_library, access_lawyer, access_virology, access_cmo,
// 		access_qm, access_network, access_network_admin, access_surgery, access_research, access_mining, access_mining_office, access_mailsorting, access_heads_vault,
// 		access_mining_station, access_xenobiology, access_ce, access_hop, access_hos, access_RC_announce, access_keycard_auth, access_tcomsat,
// 		access_gateway, access_sec_doors, access_research_security, access_psychiatrist, access_xenoarch, access_medical_equip, access_heads, access_hangar, access_guppy_helm,
// 		access_expedition_shuttle_helm, access_aquila, access_aquila_helm, access_solgov_crew, access_nanotrasen,
// 		access_emergency_armory, access_gun, access_expedition_shuttle, access_guppy, access_seneng, access_senmed, access_senadv,
// 		access_explorer, access_pathfinder, access_pilot, access_commissary, access_petrov, access_petrov_helm, access_petrov_analysis, access_petrov_phoron,
// 		access_petrov_toxins, access_petrov_chemistry, access_petrov_control, access_petrov_maint, access_rd, access_petrov_rd, access_torch_fax, access_torch_helm,
// 		access_radio_comm, access_radio_eng, access_radio_med, access_radio_sec, access_radio_sup, access_radio_serv, access_radio_exp, access_radio_sci, access_research_storage
// 	)

// 	software_on_spawn = list(/datum/computer_file/program/comm,
// 							 /datum/computer_file/program/card_mod,
// 							 /datum/computer_file/program/camera_monitor,
// 							 /datum/computer_file/program/reports)

// /datum/job/hop/get_description_blurb()
// 	return "You are the Executive Officer. You are an experienced senior officer, second in command of the ship, and are responsible for the smooth operation of the ship under your Commanding Officer. In their absence, you are expected to take their place. Your primary duty is directly managing department heads and all those outside a department heading. You are also responsible for the contractors and passengers aboard the ship. Consider the Senior Enlisted Advisor and Bridge Officers tools at your disposal."
//	return "You are the Chief of Security. You manage ship security. The Masters at Arms and the Military Police, as well as the Brig Chief and the Forensic Technician. You keep the vessel safe. You handle both internal and external security matters. You are the law. You are subordinate to the CO and the XO. You are expected to know the SCMJ and Sol law and Alert Procedure to a very high degree along with general regulations."

/datum/job/representative
	title = "SolGov Representative"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Sol Central Government and the SCG Charter"
	selection_color = "#2f2f7f"
	economic_power = 16
	minimal_player_age = 0
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/representative
	allowed_branches = list(/datum/mil_branch/solgov)
	allowed_ranks = list(/datum/mil_rank/sol/gov)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_EXPERT,
	                    SKILL_FINANCE     = SKILL_BASIC)
	skill_points = 20
	minimum_character_age = list(SPECIES_HUMAN = 27)

	access = list(
		access_representative, access_security, access_medical,
		access_bridge, access_cargo, access_solgov_crew,
		access_hangar, access_torch_fax, access_radio_comm
	)

	software_on_spawn = list(/datum/computer_file/program/reports)

/datum/job/representative/get_description_blurb()
	return "You are the Sol Gov Representative. You are a civilian assigned as both a diplomatic liaison for first contact and foreign affair situations on board. You are also responsible for monitoring for any serious missteps of justice, sol law or other ethical or legal issues aboard and informing and advising the Commanding Officer of them. You are a mid-level bureaucrat. You liaise between the crew and corporate interests on board. Send faxes back to Sol on mission progress and important events."

/datum/job/sea
	title = "Senior Enlisted Advisor"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer and the Executive Officer"
	selection_color = "#2f2f7f"
	minimal_player_age = 14
	economic_power = 11
	minimum_character_age = list(SPECIES_HUMAN = 35)
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/sea/fleet
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/army = /decl/hierarchy/outfit/job/torch/crew/command/sea/army
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9_alt1,
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/army/e8,
		/datum/mil_rank/army/e8_alt,
		/datum/mil_rank/army/e9,
		/datum/mil_rank/army/e9_alt1
	)
	min_skill = list(   SKILL_EVA        = SKILL_BASIC,
	                    SKILL_COMBAT     = SKILL_BASIC,
	                    SKILL_WEAPONS    = SKILL_BASIC)

	max_skill = list(	SKILL_PILOT        = SKILL_ADEPT,
	                    SKILL_COMBAT       = SKILL_EXPERT,
	                    SKILL_WEAPONS      = SKILL_EXPERT,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX)
	skill_points = 28


	access = list(
		access_security, access_medical, access_engine, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_janitor,
		access_kitchen, access_cargo, access_RC_announce, access_keycard_auth, access_aquila, access_guppy_helm,
		access_solgov_crew, access_gun, access_expedition_shuttle, access_guppy, access_senadv, access_hangar, access_torch_fax,
		access_radio_comm, access_radio_eng, access_radio_med, access_radio_sec, access_radio_serv, access_radio_sup, access_radio_exp
		)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/sea/get_description_blurb()
	return "You are the Senior Enlisted Advisor. You are the highest enlisted person on the ship. You are directly subordinate to the CO. You advise them on enlisted concerns and provide expertise and advice to officers. You are responsible for ensuring discipline and good conduct among enlisted, as well as notifying officers of any issues and \"advising\" them on mistakes they make. You also handle various duties on behalf of the CO and XO. You are an experienced enlisted person, very likely equal only in experience to the CO and XO. You know the regulations better than anyone."

/datum/job/bridgeofficer
	title = "Bridge Officer"
	department = "Support"
	department_flag = SPT
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Commanding Officer and heads of staff"
	selection_color = "#2f2f7f"
	minimal_player_age = 0
	economic_power = 8
	minimum_character_age = list(SPECIES_HUMAN = 22)
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 20

	alt_titles = list("Adjutant")

	access = list(
		access_security, access_medical, access_engine, access_maint_tunnels, access_emergency_storage,
		access_bridge, access_janitor, access_kitchen, access_cargo, access_mailsorting, access_RC_announce, access_keycard_auth,
		access_solgov_crew, access_aquila, access_aquila_helm, access_guppy, access_guppy_helm, access_external_airlocks,
		access_eva, access_hangar, access_cent_creed, access_explorer, access_expedition_shuttle, access_expedition_shuttle_helm, access_teleporter,
		access_torch_fax, access_torch_helm, access_radio_comm, access_radio_eng, access_radio_exp, access_radio_serv, access_radio_sci, access_radio_sup
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)

/datum/job/bridgeofficer/get_description_blurb()
	return "You are a Bridge Officer. You are a very junior officer. You do not give orders of your own. You are subordinate to all of command. You handle matters on the bridge and report directly to the CO and XO. You take the Torch's helm and pilot the Aquila if needed. You monitor bridge computer programs and communications and report relevant information to command."
