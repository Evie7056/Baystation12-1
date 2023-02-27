/obj/item/gun/projectile/automatic/corpo
	name = "corporate submachine gun"
	desc = "The NT41 Enforcer is a self-defense weapon made on bullpup system. Produced by NanoTrasen for it's Security Force. Looks cool and stylish, but sometimes too uncomfortably to run with it. Uses 6mmR rounds."
	icon_state = "nt41"
	item_state = "nt41"
	icon = 'proxima/icons/obj/guns/guns.dmi'
	wielded_item_state = "nt41-wielded"
	item_icons = list(
		slot_r_hand_str = 'proxima/icons/mob/onmob/righthand.dmi',
		slot_l_hand_str = 'proxima/icons/mob/onmob/lefthand.dmi',
		)

	caliber = CALIBER_PISTOL_FAST
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 3)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/corpo
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/corpo
	allowed_magazines = /obj/item/ammo_magazine/corpo
	screen_shake = 0.5 //SMG

	firemodes = list(
		SEMI_AUTO_NODELAY,
		list(mode_name="2-round bursts", mode_desc = "Short, controlled bursts", burst=2, fire_delay=null, move_delay=2, one_hand_penalty=2),
		BURST_3_ROUND,
		FULL_AUTO_600
		)

	bulk = GUN_BULK_RIFLE - 1
	w_class = ITEM_SIZE_NORMAL
	one_hand_penalty = 2

/obj/item/gun/projectile/automatic/corpo/on_update_icon()
	..()
	icon_state = (ammo_magazine)? "nt41" : "nt41-e"

/obj/item/gun/projectile/automatic/amrcarabine
	name = "corporate carabine"
	desc = "The sielent and deadly and manufactured by Aussec Armory, bullpup carabine LDC-542 is a common weapon for a long-medium ranged combat units in Private Military Companies. Uses 12mmR rounds."
	icon = 'proxima/icons/obj/guns/guns.dmi'
	icon_state = "amrcarabine"
	item_state = "z8carbine"
	force = 10
	caliber = CALIBER_ANTIMATERIAL_SMALL
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 2)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/amr
	allowed_magazines = /obj/item/ammo_magazine/amr
	ammo_type = /obj/item/ammo_casing/amr
	wielded_item_state = "z8carbine-wielded"
	burst_delay = 2
	firemodes = list(
		SEMI_AUTO_NODELAY,
		list(mode_name="2-round bursts", mode_desc = "Short, controlled bursts", burst=2, fire_delay=null, move_delay=2, one_hand_penalty=2),
		FULL_AUTO_300
		)

	bulk = GUN_BULK_RIFLE
	w_class = ITEM_SIZE_HUGE
	one_hand_penalty = 7

/obj/item/gun/projectile/automatic/amrcarabine/on_update_icon()
	..()
	icon_state = (ammo_magazine)? "amrcarabine" : "amrcarabine-e"


/obj/item/gun/projectile/automatic/pdw
	name = "corporate personal defense weapons"
	desc = "The BP-15 'Moloh' is a  personal defense weapon, produced by Aussec Armory for use by police spec ops or solders. Uses 6mmR rounds."
	icon = 'proxima/icons/obj/guns/guns.dmi'
	icon_state = "pdw"
	item_state = "c20r"
	item_icons = list(
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns.dmi',
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns.dmi',
		)
	caliber = CALIBER_PISTOL_FAST
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/pdw
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/pdw
	allowed_magazines = /obj/item/ammo_magazine/pdw

	//machine pistol, like SMG but easier to one-hand with
	firemodes = list(
		SEMI_AUTO_NODELAY,
		BURST_3_ROUND,
		BURST_5_ROUND,
		)

	bulk = GUN_BULK_RIFLE - 3
	w_class = ITEM_SIZE_NORMAL
	one_hand_penalty = 3

/obj/item/gun/projectile/automatic/pdw/on_update_icon()
	icon_state = (ammo_magazine)? "pdw" : "pdw-empty"
	..()
