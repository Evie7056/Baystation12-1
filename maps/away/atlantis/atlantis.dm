#include "atlantis_jobs.dm"

/datum/map_template/ruin/away_site/fleetship
	name = "ERT Base"
	suffixes = list("atlantis/ert_base-1.dmm")
	shuttles_to_initialise = list(/datum/shuttle/autodock/multi/antag/rescue)
	apc_test_exempt_areas = list(
		/area/map_template/rescue_base = NO_SCRUBBER|NO_VENT|NO_APC
	)
	spawn_cost = 200000
	player_cost = 4
	spawn_weight = 0.67

/decl/submap_archetype/atlantis
	descriptor = "SCG Fleet patrol vessel."
	map = "SCGF Atlantis"
	crew_jobs = list(
		/datum/job/submap/altanits_field_commader,
		/datum/job/submap/atlantis_officer,
		/datum/job/submap/altanits_captain
	)

/obj/effect/submap_landmark/joinable_submap/fleetship
	name = "SCGF Atlantis"
	archetype = /decl/submap_archetype/atlantis

/obj/effect/submap_landmark/spawnpoint/fleetship
	name = "Staff Officer"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/submap_landmark/spawnpoint/fleetship/captain
	name = "Patrol Vessel Commanding Officer"

/obj/effect/submap_landmark/spawnpoint/fleetship/commander
	name = "Marine Commander"

/datum/shuttle/autodock/multi/antag/rescue
	name = "Rescue"
	warmup_time = 0
	defer_initialisation = TRUE
	destination_tags = list(
		"nav_ert_dock",
		"nav_ert_start"
		)
	shuttle_area = /area/map_template/rescue_base/start
	dock_target = "rescue_shuttle"
	current_location = "nav_ert_start"
	landmark_transition = "nav_ert_transition"
	home_waypoint = "nav_ert_start"
	announcer = "Proximity Sensor Array"
	arrival_message = "Attention, vessel detected entering vessel proximity."
	departure_message = "Attention, vessel detected leaving vessel proximity."

/obj/effect/shuttle_landmark/ert/start
	name = "Response Team Base"
	landmark_tag = "nav_ert_start"
	docking_controller = "rescue_base"

/obj/effect/shuttle_landmark/ert/internim
	name = "In transit"
	landmark_tag = "nav_ert_transition"

/obj/effect/shuttle_landmark/ert/dock
	name = "Docking Port"
	landmark_tag = "nav_ert_dock"
	docking_controller = "rescue_shuttle_dock_airlock"

// Areas

/area/map_template/rescue_base
	name = "\improper Response Team Base"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/map_template/rescue_base/base
	name = "\improper Barracks"
	icon_state = "yellow"
	dynamic_lighting = 0

/area/map_template/rescue_base/start
	name = "\improper Response Team Base"
	icon_state = "shuttlered"
	base_turf = /turf/unsimulated/floor/rescue_base

//Objects


//Radio
/obj/item/device/radio/headset/atlantis
	name = "SCGF radio headset"
	desc = "The headset of big guys."
	icon_state = "com_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/atlantis/com

/obj/item/device/radio/headset/atlantis/marine
	ks1type = /obj/item/device/encryptionkey/atlantis/mar

/obj/item/device/radio/headset/atlantis/command
	desc = "The headset of the biggest guys."
	ks1type = /obj/item/device/encryptionkey/atlantis/cmd


//Telecomms
/obj/item/stock_parts/circuitboard/telecomms/allinone/ert
	build_path = /obj/machinery/telecomms/allinone/ert

/obj/machinery/telecomms/allinone/ert
	listening_freqs = list(ATL_COM)
	channel_color = COMMS_COLOR_CENTCOMM
	channel_name = "Atlantis Common"
	circuitboard = /obj/item/stock_parts/circuitboard/telecomms/allinone/ert

//Access and Cards
var/global/const/access_atlantis = "ACCESS_ATLANTIS"
/datum/access/atlantis
	id = access_atlantis
	desc = "Atlantis Deck"
	access_type = ACCESS_TYPE_NONE

var/global/const/access_atlantis_marine = "ACCESS_ATLANTIS_MARINE"
/datum/access/atlantis_marine
	id = access_atlantis_marine
	desc = "Atlantis Marine"
	access_type = ACCESS_TYPE_NONE

var/global/const/access_atlantis_bridge = "ACCESS_ATLANTIS_BRIDGE"
/datum/access/atlantis_bridge
	id = access_atlantis_bridge
	desc = "Atlantis Bridge"
	access_type = ACCESS_TYPE_NONE

var/global/const/access_atlantis_medbay = "ACCESS_ATLANTIS_MEDBAY"
/datum/access/atlantis_medbay
	id = access_atlantis_medbay
	desc = "Atlantis Medbay"
	access_type = ACCESS_TYPE_NONE

var/global/const/access_atlantis_engineering = "ACCESS_ATLANTIS_ENGINEERING"
/datum/access/atlantis_engineering
	id = access_atlantis_engineering
	desc = "Atlantis Engineering"
	access_type = ACCESS_TYPE_NONE

/obj/item/card/id/fleetship/command
	color = COLOR_SOL
	detail_color = COLOR_GOLD
	access = list(	access_atlantis,
					access_atlantis_marine,
					access_atlantis_bridge,
					access_atlantis_medbay,
					access_atlantis_engineering
	)

/obj/item/card/id/fleetship/command/marine
	color = COLOR_SOL
	detail_color = COLOR_RED_LIGHT
	access = list(	access_atlantis,
					access_atlantis_marine,
					access_atlantis_bridge,
					access_atlantis_medbay,
					access_atlantis_engineering
	)
