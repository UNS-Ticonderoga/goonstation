/datum/job
	var/receives_standard_gear = FALSE

/proc/give_standard_gear(mob/living/carbon/human/target)
	var/obj/item/clothing/shoes/swat/boots = new()
	if (!target.equip_if_possible(boots, SLOT_SHOES))
		target.stow_in_available(boots, FALSE)

	// Placeholder for now.
	var/obj/item/clothing/suit/lined_jacket/jacket = new()
	if (!target.equip_if_possible(jacket, SLOT_WEAR_SUIT))
		target.stow_in_available(jacket, FALSE)
