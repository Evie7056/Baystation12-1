/decl/hierarchy/outfit/job/service
	l_ear = /obj/item/device/radio/headset/headset_service
	abstract_type = /decl/hierarchy/outfit/job/service

/decl/hierarchy/outfit/job/service/bartender
	name = "Job - Bartender"
	uniform = /obj/item/clothing/under/rank/bartender
	id_types = list(/obj/item/card/id/civilian)
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/service/chef
	name = "Job - Chef"
	uniform = /obj/item/clothing/under/rank/chef
	suit = /obj/item/clothing/suit/chef
	head = /obj/item/clothing/head/chefhat
	id_types = list(/obj/item/card/id/civilian)
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/service/gardener
	name = "Job - Gardener"
	uniform = /obj/item/clothing/under/rank/hydroponics
	suit = /obj/item/clothing/suit/apron
	gloves = /obj/item/clothing/gloves/thick/botany
	r_pocket = /obj/item/device/scanner/plant
	id_types = list(/obj/item/card/id/civilian)
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/service/gardener/Initialize()
	. = ..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/storage/backpack/hydroponics
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/storage/backpack/satchel/hyd
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/storage/backpack/messenger/hyd

/decl/hierarchy/outfit/job/service/janitor
	name = "Job - Janitor"
	uniform = /obj/item/clothing/under/rank/janitor
	id_types = list(/obj/item/card/id/civilian)
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/librarian
	name = "Job - Librarian"
	uniform = /obj/item/clothing/under/suit_jacket/red
	id_types = list(/obj/item/card/id/civilian)
	pda_type = /obj/item/modular_computer/pda

/decl/hierarchy/outfit/job/internal_affairs_agent
	name = "Job - Internal affairs agent"
	l_ear = /obj/item/device/radio/headset/ia
	uniform = /obj/item/clothing/under/rank/internalaffairs
	suit = /obj/item/clothing/suit/storage/toggle/suit/black
	shoes = /obj/item/clothing/shoes/brown
	glasses = /obj/item/clothing/glasses/sunglasses/big
	r_pocket =  list(/obj/item/storage/briefcase)
	id_types = list(/obj/item/card/id/civilian/internal_affairs_agent)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/decl/hierarchy/outfit/job/chaplain
	name = "Job - Chaplain"
	uniform = /obj/item/clothing/under/rank/chaplain
	r_pocket = list(/obj/item/storage/bible)
	id_types = list(/obj/item/card/id/civilian)
	pda_type = /obj/item/modular_computer/pda/medical
