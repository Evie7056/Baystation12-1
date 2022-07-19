/obj/item/gun/projectile/revolver/zakatneba
	name = "Revolver 'Saitako'"
	desc = "This is a very reliable revolver, custom made for a specific person. The caliber of the gun is .38 Special, be careful when interacting with it. It was made by a private manufacturer - Saitako. You may notice the Yangui characters on the grip."
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "mateba"
	handle_casings = CYCLE_CASINGS
	caliber = CALIBER_PISTOL_SMALL
	max_shells = 6
	ammo_type = /obj/item/ammo_casing/pistol/small/rubber

/obj/item/storage/secure/briefcase/zakatneba
	l_code = "12345"
	l_set = 1
	startswith = list(
		/obj/item/gun/projectile/revolver/zakatneba,
		/obj/item/ammo_magazine/speedloader/small/rubber,
		/obj/item/ammo_magazine/speedloader/small/rubber,
		/obj/item/ammo_magazine/speedloader/small/rubber,
		/obj/item/ammo_magazine/speedloader/small/rubber,
	)
