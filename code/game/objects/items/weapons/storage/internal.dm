//A storage item intended to be used by other items to provide storage functionality.
//Types that use this should consider overriding emp_act() and hear_talk(), unless they shield their contents somehow.
/obj/item/storage/internal
	var/obj/item/master_item

/obj/item/storage/internal/New(obj/item/MI)
	master_item = MI
	name = master_item.name
	loc = master_item
	verbs -= /obj/item/verb/verb_pickup	//make sure this is never picked up.
	..()

/obj/item/storage/internal/Destroy()
	master_item = null
	. = ..()

/obj/item/storage/internal/attack_hand()
	return		//make sure this is never picked up

/obj/item/storage/internal/mob_can_equip()
	return 0	//make sure this is never picked up

//Helper procs to cleanly implement internal storages - storage items that provide inventory slots for other items.
//These procs are completely optional, it is up to the master item to decide when it's storage get's opened by calling open()
//However they are helpful for allowing the master item to pretend it is a storage item itself.
//If you are using these you will probably want to override attackby() as well.
//See /obj/item/clothing/suit/storage for an example.

//items that use internal storage have the option of calling this to emulate default storage MouseDrop behaviour.
//returns 1 if the master item's parent's MouseDrop() should be called, 0 otherwise. It's strange, but no other way of
//doing it without the ability to call another proc's parent, really.
/obj/item/storage/internal/proc/handle_mousedrop(mob/user as mob, obj/over_object as obj)
	if (ishuman(user) || issmall(user)) //so monkeys can take off their backpacks -- Urist

		if(over_object == user && Adjacent(user)) // this must come before the screen objects only block
			src.open(user)
			return 0

		if (!( istype(over_object, /obj/screen) ))
			return 1

		//makes sure master_item is equipped before putting it in hand, so that we can't drag it into our hand from miles away.
		//there's got to be a better way of doing this...
		if (!(master_item.loc == user) || (master_item.loc && master_item.loc.loc == user))
			return 0

		//TODO make this less terrible
		if (!( user.restrained() ) && !( user.stat ))
			switch(over_object.name)
				if(BP_R_HAND)
					if(user.unEquip(master_item))
						user.put_in_r_hand(master_item)
				if(BP_L_HAND)
					if(user.unEquip(master_item))
						user.put_in_l_hand(master_item)
			master_item.add_fingerprint(user)
			return 0

//items that use internal storage have the option of calling this to emulate default storage attack_hand behaviour.
//returns 1 if the master item's parent's attack_hand() should be called, 0 otherwise.
//It's strange, but no other way of doing it without the ability to call another proc's parent, really.
/obj/item/storage/internal/proc/handle_attack_hand(mob/user as mob)
	if (openable_location(user))
		src.open(user)
		return 0

	close_all()
	return 1

/obj/item/storage/internal/Adjacent(var/atom/neighbor)
	return master_item.Adjacent(neighbor)

// Used by webbings, coat pockets, etc
/obj/item/storage/internal/pockets/New(var/newloc, var/slots, var/slot_size)
	storage_slots = slots
	max_w_class = slot_size
	..()

/obj/item/storage/internal/pouch/New(var/newloc, var/storage_space)
	max_storage_space = storage_space
	..()

/obj/item/storage/internal/proc/openable_location(var/mob/user)
	.=FALSE
	if (master_item.loc == user)
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			if(H.l_store == master_item)	//Prevents opening if it's in a pocket.
				return
			if(H.r_store == master_item)
				return
		return TRUE
	else if (isturf(master_item.loc) && Adjacent(user))
		return TRUE

/obj/item/storage/internal/updating/update_icon()
	if(master_item)
		master_item.update_icon()
