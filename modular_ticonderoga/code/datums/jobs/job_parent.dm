/datum/job
	/// Ticonderoga: Only United Nations personnel receive UN-issued equipment as standard.
	var/receives_un_gear = FALSE

/proc/give_un_gear(datum/job/target_job, mob/living/carbon/human/target)
	// Type paths for items to stuff in UN starter boxes.
	var/list/uniform_box_items = list()

	// Rank/Job-specific gear.
	var/datum/rank/target_rank = target.mind?.assigned_rank || null
	if (!istype(target_rank, /datum/rank))
		return

	// Apply rank items.
	for (var/list/rank_item_slot as anything in target_rank.rank_items)
		var/item_slot = rank_item_slot
		var/item_type = target_rank.rank_items[rank_item_slot]
		var/obj/item/item_in_slot = target.get_slot(item_slot)

		if (istype(item_in_slot, item_type))
			continue

		uniform_box_items |= item_type

	// All UN personnel receive SWAT boots and a field jacket.
	uniform_box_items |= /obj/item/clothing/suit/field_jacket
	if (!istype(target.shoes, /obj/item/clothing/shoes/swat))
		uniform_box_items |= /obj/item/clothing/shoes/swat

	if (!length(uniform_box_items))
		return

	var/obj/item/storage/box/uniform/uniform_box = new(target)
	target.stow_in_available(uniform_box, FALSE)

	for (var/obj/item/unequipped_item as anything in uniform_box_items)
		unequipped_item = new unequipped_item()
		if (uniform_box)
			uniform_box.storage.add_contents(unequipped_item, target, FALSE)
			continue
		target.stow_in_available(unequipped_item, FALSE)
