/datum/map/torch
	branch_types = list(
		//datum/mil_branch/nt,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	spawn_branch_types = list(
		//datum/mil_branch/nt,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	species_to_branch_blacklist = list(
		/datum/species/human   = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/machine = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/machine/shell = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/vox     = list(/datum/mil_branch/civilian)
	)

	species_to_branch_whitelist = list(
		/datum/species/diona        = list(/datum/mil_branch/civilian),
		/datum/species/nabber       = list(/datum/mil_branch/civilian),
		/datum/species/skrell       = list(/datum/mil_branch/civilian, /datum/mil_branch/skrell_fleet),
		/datum/species/unathi       = list(/datum/mil_branch/civilian),
		/datum/species/unathi/yeosa = list(/datum/mil_branch/civilian),
		/datum/species/adherent     = list(/datum/mil_branch/civilian),
		/datum/species/vox          = list(/datum/mil_branch/alien)
	)

/datum/mil_branch/civilian
	name = "Civilian"
	email_domain = "freemail.net"
	allow_custom_email = TRUE

	rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/employee,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/synthetic,
		/datum/mil_rank/civ/exo_synth
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/synthetic,
		/datum/mil_rank/civ/exo_synth
	)

/datum/mil_branch/solgov
	name = "SolGov Employee"
	name_short = "SCG"
	email_domain = "torch.scg"

	rank_types = list(
		/datum/mil_rank/sol/gov,
		/datum/mil_rank/sol/junior_agent,
		/datum/mil_rank/sol/duty_agent,
		/datum/mil_rank/sol/agent,
		/datum/mil_rank/sol/senior_agent,
		/datum/mil_rank/sol/inspector_agent,
		/datum/mil_rank/sol/curator_agent,
		/datum/mil_rank/sol/deputy_agent,
		/datum/mil_rank/sol/director_agent,
		/datum/mil_rank/sol/scientist
	)

	spawn_rank_types = list(
		/datum/mil_rank/sol/gov,
		/datum/mil_rank/sol/junior_agent,
		/datum/mil_rank/sol/duty_agent,
		/datum/mil_rank/sol/agent,
		/datum/mil_rank/sol/senior_agent,
		/datum/mil_rank/sol/inspector_agent,
		/datum/mil_rank/sol/curator_agent,
		/datum/mil_rank/sol/deputy_agent,
		/datum/mil_rank/sol/director_agent,
		/datum/mil_rank/sol/scientist
	)

	/*
 *  Civilians
 *  =========
 */

/datum/mil_rank/civ/civ
	name = "Civilian"

/datum/mil_rank/civ/contractor
	name = "Contractor"

/datum/mil_rank/civ/employee
	name = "Employee"

/datum/mil_rank/civ/synthetic
	name = "Synthetic"
	name_short = "Synth"

/datum/mil_rank/civ/exo_synth
	name = "EXO Synthetic"
	name_short = "Synth"
	accessory = list(/obj/item/clothing/accessory/badge/solgov/synthetic)


/*
 *  SolGov Employees
 *  ====== =========
 */

/datum/mil_rank/sol/gov
	name = "SolGov Representative"
	name_short = "SGR"
	accessory = list(/obj/item/clothing/accessory/badge/solgov/representative)

/datum/mil_rank/sol/junior_agent  //Proxima
	name = "SFP Junior Agent"
	name_short = "JAGT"
	accessory = list(/obj/item/clothing/accessory/badge/junior_agent)

/datum/mil_rank/sol/duty_agent //Proxima
	name = "SFP Duty Agent"
	name_short = "DAGT"
	accessory = list(/obj/item/clothing/accessory/badge/deputy_agent)

/datum/mil_rank/sol/agent
	name = "SFP Agent"
	name_short = "AGT"
	accessory = list(/obj/item/clothing/accessory/badge/agent)

/datum/mil_rank/sol/senior_agent //Proxima
	name = "SFP Senior Agent"
	name_short = "SAGT"
	accessory = list(/obj/item/clothing/accessory/badge/senior_agent)

/datum/mil_rank/sol/inspector_agent //Proxima
	name = "SFP Agent Inspector"
	name_short = "AGTI"
	accessory = list(/obj/item/clothing/accessory/badge/inspector_agent)

/datum/mil_rank/sol/curator_agent //Proxima
	name = "SFP Supervisory Agent"
	name_short = "SUPAGT"
	accessory = list(/obj/item/clothing/accessory/badge/curator_agent)

/datum/mil_rank/sol/deputy_agent //Proxima
	name = "SFP Deputy Director"
	name_short = "DDIR"
	accessory = list(/obj/item/clothing/accessory/badge/deputy_agent)

/datum/mil_rank/sol/director_agent //Proxima
	name = "SFP Director"
	name_short = "DIR"
	accessory = list(/obj/item/clothing/accessory/badge/director_agent)

/datum/mil_rank/sol/scientist
	name = "Government Scientist"
	name_short = "GOVT"

// Vox/foreign alien branch.
/datum/mil_branch/alien
	name = "Alien"
	name_short = "Alien"
	rank_types = list(/datum/mil_rank/alien)
	spawn_rank_types = list(/datum/mil_rank/alien)

/datum/mil_rank/alien
	name = "Alien"
