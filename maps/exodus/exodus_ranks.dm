/datum/map/exodus
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
