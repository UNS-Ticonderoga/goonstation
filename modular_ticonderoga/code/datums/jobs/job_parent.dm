/datum/job
	var/receives_standard_gear = FALSE

/proc/give_standard_gear(mob/living/carbon/human/target)
	var/obj/item/clothing/shoes/swat/boots = new()

	var/equipped_boots = FALSE
	if (target.equip_if_possible(boots, SLOT_SHOES))
		equipped_boots = TRUE

	var/equipped_jacket = FALSE
	// Placeholder for now.
	var/obj/item/clothing/suit/lined_jacket/jacket = new()
	if (target.equip_if_possible(jacket, SLOT_WEAR_SUIT))
		equipped_jacket = TRUE

	if (equipped_boots && equipped_jacket)
		return

	var/obj/item/storage/box/starter/starter_box = locate(/obj/item/storage/box/starter) in target

	if (istype(starter_box, /obj/item/storage/box/starter))
		if (!equipped_boots)
			starter_box.storage.add_contents(boots, target, FALSE)
		if (!equipped_jacket)
			starter_box.storage.add_contents(jacket, target, FALSE)
		return

	if (!equipped_boots)
		target.stow_in_available(boots, FALSE)
	if (!equipped_jacket)
		target.stow_in_available(jacket, FALSE)
