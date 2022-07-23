/datum/job/assistant
	title = "Assistant"
	department = "Service"
	department_flag = SRV
	total_positions = -1
	spawn_positions = -1
	supervisors = "absolutely everyone"
	economic_power = 1
	access = list()
	alt_titles = list("Technical Assistant","Medical Intern","Research Assistant","Visitor")
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/passenger
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)

/datum/job/chaplain
	title = "Chaplain"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(
		access_morgue,
		access_chapel_office,
		access_crematorium,
		access_maint_tunnels
	)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/chaplain
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_FINANCE  = SKILL_BASIC
	)
	skill_points = 20
	software_on_spawn = list(/datum/computer_file/program/reports)

//Food
/datum/job/bartender
	title = "Bartender"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(
		access_hydroponics,
		access_kitchen
	)
	alt_titles = list("Barista")
	outfit_type = /decl/hierarchy/outfit/job/service/bartender
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_COOKING   = SKILL_BASIC,
	    SKILL_BOTANY    = SKILL_BASIC,
	    SKILL_CHEMISTRY = SKILL_BASIC
	)

/datum/job/chef
	title = "Chef"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	access = list(
		access_hydroponics,
		access_kitchen
	)
	alt_titles = list("Cook")
	outfit_type = /decl/hierarchy/outfit/job/service/chef
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_COOKING   = SKILL_ADEPT,
	    SKILL_BOTANY    = SKILL_BASIC,
	    SKILL_CHEMISTRY = SKILL_BASIC
	)

/datum/job/hydro
	title = "Gardener"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(
		access_hydroponics,
		access_kitchen
	)
	alt_titles = list("Hydroponicist")
	outfit_type = /decl/hierarchy/outfit/job/service/gardener
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
		SKILL_BOTANY    = SKILL_BASIC,
	    SKILL_CHEMISTRY = SKILL_BASIC
	)

//Cargo
/datum/job/qm
	title = "Quartermaster"
	department = "Supply"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	economic_power = 5
	access = list(
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	minimal_player_age = 3
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/cargo/qm
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
	    SKILL_FINANCE  = SKILL_BASIC,
	    SKILL_HAULING  = SKILL_BASIC,
	    SKILL_EVA      = SKILL_BASIC,
	    SKILL_PILOT    = SKILL_BASIC
	)
	max_skill = list(
		SKILL_PILOT    = SKILL_MAX
	)
	skill_points = 18
	software_on_spawn = list(
		/datum/computer_file/program/supply,
		/datum/computer_file/program/deck_management,
		/datum/computer_file/program/reports
	)

/datum/job/cargo_tech
	title = "Cargo Technician"
	department = "Supply"
	department_flag = SUP
	total_positions = 2
	spawn_positions = 2
	supervisors = "the quartermaster and the head of personnel"
	access = list(
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)

	outfit_type = /decl/hierarchy/outfit/job/cargo/cargo_tech
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_FINANCE  = SKILL_BASIC,
		SKILL_HAULING  = SKILL_BASIC
	)
	max_skill = list(
		SKILL_PILOT    = SKILL_MAX
	)
	software_on_spawn = list(
		/datum/computer_file/program/supply,
		/datum/computer_file/program/deck_management,
		/datum/computer_file/program/reports
	)

/datum/job/mining
	title = "Shaft Miner"
	department = "Supply"
	department_flag = SUP
	total_positions = 3
	spawn_positions = 3
	supervisors = "the quartermaster and the head of personnel"
	economic_power = 5
	access = list(
		access_maint_tunnels,
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_qm,
		access_mining,
		access_mining_station
	)
	alt_titles = list(
		"Drill Technician",
		"Prospector"
	)
	outfit_type = /decl/hierarchy/outfit/job/cargo/mining
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_HAULING  = SKILL_ADEPT,
	    SKILL_EVA      = SKILL_BASIC
	)
	max_skill = list(
		SKILL_PILOT    = SKILL_MAX
	)

/datum/job/janitor
	title = "Janitor"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(
		access_janitor,
		access_maint_tunnels,
		access_engine,
		access_research,
		access_sec_doors,
		access_medical
	)
	alt_titles = list(
		"Custodian",
		"Sanitation Technician"
	)
	outfit_type = /decl/hierarchy/outfit/job/service/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_HAULING  = SKILL_BASIC
	)


//More or less assistants
/datum/job/librarian
	title = "Librarian"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(
		access_library,
		access_maint_tunnels
	)
	alt_titles = list("Journalist")
	outfit_type = /decl/hierarchy/outfit/job/librarian
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_FINANCE  = SKILL_BASIC
	)
	skill_points = 20
	software_on_spawn = list(/datum/computer_file/program/reports)

/datum/job/lawyer
	title = "Internal Affairs Agent"
	department = "Support"
	department_flag = SPT
	total_positions = 2
	spawn_positions = 2
	supervisors = "company officials and Corporate Regulations"
	economic_power = 7
	access = list(
		access_lawyer,
		access_sec_doors,
		access_maint_tunnels,
		access_bridge
	)

	minimal_player_age = 10
	outfit_type = /decl/hierarchy/outfit/job/internal_affairs_agent
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_FINANCE  = SKILL_BASIC
	)
	skill_points = 20
	software_on_spawn = list(/datum/computer_file/program/reports)

/datum/job/lawyer/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)

/obj/item/card/id/cargo
	name = "identification card"
	desc = "A card issued to cargo staff."
	detail_color = COLOR_BROWN

/obj/item/card/id/cargo/head
	name = "identification card"
	desc = "A card which represents service and planning."
	extra_details = list("goldstripe")

/obj/item/card/id/civilian/internal_affairs_agent
	detail_color = COLOR_NAVY_BLUE
