/decl/hierarchy/outfit/job/atlantis/captain
	name = OUTFIT_JOB_NAME("SFV Atlantis - Commanding Officer")
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	l_ear = /obj/item/device/radio/headset/atlantis/command
	shoes = /obj/item/clothing/shoes/dutyboots
	head = /obj/item/clothing/head/beret/solgov/fleet/command
	id_types = list(/obj/item/card/id/fleetship/command)
	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/atlantis/captain/New()
	..()
	BACKPACK_OVERRIDE_COMMAND

/decl/hierarchy/outfit/job/atlantis/marine_commander
	name = OUTFIT_JOB_NAME("SFV Atlantis - Marine Commander")
	uniform = /obj/item/clothing/under/solgov/utility/army/urban/security
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/atlantis/command
	id_types = list(/obj/item/card/id/fleetship/command/marine)
	pda_type = /obj/item/modular_computer/pda/heads/hos
	head = /obj/item/clothing/head/beret/solgov/army/command

/decl/hierarchy/outfit/job/atlantis/marine_commander/New()
	..()
	BACKPACK_OVERRIDE_COMMAND

/decl/hierarchy/outfit/job/atlantis/officer
	name = OUTFIT_JOB_NAME("SFV Atlantis - Staff Officer")
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	l_ear = /obj/item/device/radio/headset/atlantis/command
	shoes = /obj/item/clothing/shoes/dutyboots
	head = /obj/item/clothing/head/beret/solgov/fleet/command
	id_types = list(/obj/item/card/id/fleetship/command)
	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/atlantis/officer/New()
	..()
	BACKPACK_OVERRIDE_COMMAND

/datum/job/submap/altanits_captain
	title = "Patrol Vessel Commanding Officer"
	supervisors = "the Sol Central Government and the Sol Code of Uniform Justice"
	minimal_player_age = 14
	economic_power = 16
	minimum_character_age = list(SPECIES_HUMAN = 40)
	ideal_character_age = 50
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/atlantis/captain
	alt_titles = list(
		"Commanding Officer"
		)
	allowed_branches = list(
		/datum/mil_branch/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o6
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

/datum/job/captain/get_description_blurb()
	return "You are the Commanding Officer on board of SFV 'Atlantis'. You are in charge of your assignment vessel and all operations on it. Deligate tasks to the other officers."

/datum/job/submap/altanits_field_commader
	title = "Marine Commander"
	supervisors = "Commanding Officer of your vessel and Sol Central Government and it's Sol Code of Uniform Justice"
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 24)
	outfit_type = /decl/hierarchy/outfit/job/atlantis/marine_commander
	allowed_branches = list(
		/datum/mil_branch/army
	)
	allowed_ranks = list(
		/datum/mil_rank/army/o5,
		/datum/mil_rank/army/o4,
		/datum/mil_rank/army/o3
	)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

/datum/job/captain/get_description_blurb()
	return "You are the Marine Commander on board of SFV 'Atlantis'. You are first in matters of organazing off-ship operations. You may not lead your men and women in battle by yourself, but sure you do lead them."

/datum/job/submap/atlantis_officer
	title = "Staff Officer"
	supervisors = "Commanding Officer of your vessel."
	outfit_type = /decl/hierarchy/outfit/job/atlantis/officer
	minimum_character_age = list(SPECIES_HUMAN = 22)
	total_positions = 2
	spawn_positions = 2
	alt_titles = list(
		"Requisition Officer",
		"Navigation Officer")
	allowed_branches = list(
		/datum/mil_branch/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o1
	)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30


/datum/job/captain/get_description_blurb()
	return "You are the Staff Officer on board of SFV 'Atlantis'. You answer to your Captain and help hip with organizing the ship or pilot it."
