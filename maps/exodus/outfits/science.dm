/decl/hierarchy/outfit/job/science
	abstract_type = /decl/hierarchy/outfit/job/science
	l_ear = /obj/item/device/radio/headset/headset_sci
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/science

/decl/hierarchy/outfit/job/science/rd
	name = "Job - Chief Science Officer"
	l_ear = /obj/item/device/radio/headset/heads/rd
	uniform = /obj/item/clothing/under/rank/research_director
	shoes = /obj/item/clothing/shoes/brown
	l_pocket = /obj/item/material/clipboard/plastic
	id_types = list(/obj/item/card/id/science/head)
	pda_type = /obj/item/modular_computer/pda/heads
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/rd/nanotrasen

/decl/hierarchy/outfit/job/science/scientist
	name = "Job - Scientist"
	uniform = /obj/item/clothing/under/rank/scientist/executive/nanotrasen
	id_types = list(/obj/item/card/id/science)
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/science/nanotrasen

/decl/hierarchy/outfit/job/science/roboticist
	name = "Job - Roboticist"
	uniform = /obj/item/clothing/under/rank/roboticist
	shoes = /obj/item/clothing/shoes/black
	belt = /obj/item/storage/belt/utility/full
	id_types = list(/obj/item/card/id/science)
	pda_type = /obj/item/modular_computer/pda/science
	l_ear = /obj/item/device/radio/headset/headset_rob
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/science/nanotrasen

/decl/hierarchy/outfit/job/science/roboticist/Initialize()
	. = ..()
	backpack_overrides.Cut()
