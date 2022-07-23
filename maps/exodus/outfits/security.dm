/decl/hierarchy/outfit/job/security
	abstract_type = /decl/hierarchy/outfit/job/security
	glasses = /obj/item/clothing/glasses/hud/security/prot
	l_ear = /obj/item/clothing/glasses/hud/security/prot
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(/obj/item/handcuffs = 1)

/decl/hierarchy/outfit/job/security/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/security/hos
	name = "Job - Head of security"
	l_ear = /obj/item/device/radio/headset/heads/hos
	uniform = /obj/item/clothing/under/rank/head_of_security/corp
	id_types = list(/obj/item/card/id/security/head)
	pda_type = /obj/item/modular_computer/pda/heads
	backpack_contents = list(/obj/item/handcuffs = 1)

/decl/hierarchy/outfit/job/security/warden
	name = "Job - Warden"
	uniform = /obj/item/clothing/under/rank/warden/corp
	l_pocket = /obj/item/device/flash
	id_types = list(/obj/item/card/id/security)
	pda_type = /obj/item/modular_computer/pda
	head = /obj/item/clothing/head/warden
	suit = /obj/item/clothing/suit/security/navywarden

/decl/hierarchy/outfit/job/security/detective
	name = "Job - Detective"
	head = /obj/item/clothing/head/det
	uniform = /obj/item/clothing/under/det
	suit = /obj/item/clothing/suit/storage/det_trench
	l_pocket = /obj/item/flame/lighter/zippo
	shoes = /obj/item/clothing/shoes/black
	id_types =  list(/obj/item/card/id/security)
	pda_type = /obj/item/modular_computer/pda
	backpack_contents = list(/obj/item/storage/box/evidence = 1)

/decl/hierarchy/outfit/job/security/detective/Initialize()
	. = ..()
	backpack_overrides.Cut()

/decl/hierarchy/outfit/job/security/detective/forensic
	name = "Job - Forensic technician"
	head = null
	suit = /obj/item/clothing/suit/storage/forensics/blue

/decl/hierarchy/outfit/job/security/officer
	name = "Job - Security Officer"
	uniform = /obj/item/clothing/under/rank/security/corp
	l_pocket = /obj/item/device/flash
	r_pocket = /obj/item/handcuffs
	id_types = list(/obj/item/card/id/security)
	pda_type = /obj/item/modular_computer/pda
