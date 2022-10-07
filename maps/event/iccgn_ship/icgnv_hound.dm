#include "icgnv_hound_shuttle.dm"

/datum/map_template/ruin/icgnv_hound
	name = "СFV Cerberus"
	id = "icgnv_hound"
	description = "A standard ALFA-pattern, armed The Cuchulain Foundation transport shuttle. The transponder reads on open channels as The Cuchulain Foundation and is broadcasting the designation 'CFV Cerberus' in Zurich Accord Common."
	suffixes = list("maps/event/iccgn_ship/icgnv_hound.dmm")
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/icgnv_hound)

/obj/effect/overmap/visitable/sector/icgnv_hound_space
	name = "Sensor Anomaly"
	desc = "Sensors readings are confused and inaccurate on this grid sector."
	in_space = TRUE
	icon_state = "event"
	hide_from_reports = TRUE

/obj/effect/overmap/visitable/ship/landable/icgnv_hound
	name = "CFV Hound"
	desc = "A standard ALFA-pattern, armed The Cuchulain Foundation transport shuttle. The transponder reads on open channels as The Cuchulain Foundation and is broadcasting the designation 'CFV Cerberus' in Zurich Accord Common."
	shuttle = "ICGNV Hound"
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL
	vessel_mass = 1000
	known = FALSE
	initial_generic_waypoints = list(
		"nav_icgnv_hound_1",
		"nav_icgnv_hound_2",
		"nav_icgnv_hound_3",
		"nav_icgnv_hound_4",
		"nav_icgnv_hound_antag"
	)

/obj/effect/shuttle_landmark/icgnv_hound/dock
	name = "4th Deck, Port Airlock (CFV Cerberus)"
	landmark_tag = "nav_hound_dock"

//Areas

/area/map_template/icgnv_hound
	name = "\improper CFV Cerberus"
	icon_state = "yellow"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_syndicate)
