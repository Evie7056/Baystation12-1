/datum/map/exodus
	name          = "Exodus"
	full_name     = "NSS Exodus"
	path          = "exodus"

	station_name  = "NSS Exodus"
	station_short = "Exodus"
	dock_name     = "NAS Crescent"
	boss_name     = "Central Command"
	boss_short    = "Centcomm"
	company_name  = "NanoTrasen"
	company_short = "NT"
	system_name   = "Nyx"

	flags = MAP_HAS_BRANCH | MAP_HAS_RANK
	admin_levels  = list(3)
	escape_levels = list(3,4)
	empty_levels  = list(5)
	overmap_size = 35
	overmap_event_areas = 34
	accessible_z_levels = list("1"=1,"2"=2,"5"=3)
	usable_email_tlds = list("torch.ec.scg", "torch.fleet.mil", "army.mil", "freemail.net", "torch.scg")

	num_exoplanets = 1

	allowed_spawns = list("Arrivals Shuttle","Cryogenic Storage", "Cyborg Storage")
	default_spawn = "Cryogenic Storage"

	lobby_screens = list(
		'maps/exodus/lobby/exodus.png'
	)
	lobby_tracks = list(
		/decl/audio/track/clouds_of_neptune,
		/decl/audio/track/chasing_time,
		/decl/audio/track/torch,
		/decl/audio/track/human,
		/decl/audio/track/marhaba,
		/decl/audio/track/treacherous_voyage,
		/decl/audio/track/comet_haley,
		/decl/audio/track/lysendraa,
		/decl/audio/track/lasers,
		/decl/audio/track/martian_cowboy,
		/decl/audio/track/monument,
		/decl/audio/track/as_far_as_it_gets,
		/decl/audio/track/eighties,
		/decl/audio/track/torn,
		/decl/audio/track/nebula,
		/decl/audio/track/epicintro2015,
		/decl/audio/track/epicintro2017,
		/decl/audio/track/hull_rupture,
		/decl/audio/track/on_the_rocks,
		/decl/audio/track/rimward_cruise,
		/decl/audio/track/misanthropic_corridors,
		/decl/audio/track/voidsent
	)

	map_admin_faxes = list(
		"SFP Territory Support",
		"SFP Special Investigations",
		"SFP Fugitive Recovery",
		"Bureau of Diplomatic Affairs",
		"Emergency Management Bureau",
		"NT Luna Headquarters",
		"NT Central Command"
	)
	evac_controller_type = /datum/evacuation_controller/shuttle

//  For /datum/evacuation_controller/shuttle

	shuttle_docked_message = "The public ferry to %dock_name% has docked with the station. It will depart in approximately %ETD%"
	shuttle_leaving_dock   = "The public ferry has left the station. Estimate %ETA% until the ferry docks at %dock_name%."
	shuttle_called_message = "A public ferry to %dock_name% has been scheduled. It will arrive in approximately %ETA%"
	shuttle_recall_message = "The scheduled ferry has been cancelled."

//  For /datum/evacuation_controller/starship

//	shuttle_docked_message = "Attention all hands: Jump preparation complete. The subspace drive is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
//	shuttle_leaving_dock   = "Attention all hands: Jump initiated, exiting subspace in %ETA%."
//	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
//	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

/datum/map/exodus/get_map_info()
	return "Welcome to Exodus Station, one of the largest remaining stopovers between the core worlds and the rim. Enjoy your stay!"
