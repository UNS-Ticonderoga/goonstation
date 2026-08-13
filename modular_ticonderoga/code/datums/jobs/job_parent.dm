/datum/job
	/// Ticonderoga: Only United Nations personnel receive UN-issued equipment as standard.
	var/receives_un_gear = FALSE

/proc/give_un_gear(datum/job/target_job, mob/living/carbon/human/target)
	var/list/unequipped_items = list()

	// All UN personnel receive SWAT boots and a field jacket.
	var/obj/item/clothing/shoes/swat/boots = new()
	if (!target.equip_if_possible(boots, SLOT_SHOES))
		unequipped_items += boots

	var/obj/item/clothing/suit/field_jacket/jacket = new()
	if (!target.equip_if_possible(jacket, SLOT_WEAR_SUIT))
		unequipped_items += jacket

	if (istype(target_job, /datum/job/command))
		unequipped_items += give_bridge_gear(target)
	else if (is_officer(target))
		unequipped_items += give_officer_gear(target)
	else
		unequipped_items += give_enlisted_gear(target)

	if (!length(unequipped_items))
		return

	var/obj/item/storage/box/starter/starter_box = locate(/obj/item/storage/box/starter) in (target.back?.contents | target.belt?.contents)

	for (var/obj/item/unequipped_item as anything in unequipped_items)
		if (starter_box)
			starter_box.storage.add_contents(unequipped_item, target, FALSE)
			continue
		target.stow_in_available(unequipped_item, FALSE)

// Bridge Officers receive a set of service whites and a white cap.
/proc/give_bridge_gear(mob/living/carbon/human/target)
	. = list()

	if (!istype(target.head, /obj/item/clothing/head/fancy/un/bridge))
		var/obj/item/clothing/head/fancy/un/bridge/bridge_cap = new()
		if (!target.equip_if_possible(bridge_cap, SLOT_HEAD))
			. += bridge_cap

	if (!istype(target.w_uniform, /obj/item/clothing/under/rank/service_whites))
		var/obj/item/clothing/under/rank/service_khakis/whites = new()
		if (!target.equip_if_possible(whites, SLOT_W_UNIFORM))
			. += whites

// Non-commissioned Officers and Commissioned Officers outside of the Bridge receive a set of service khakis and a khaki cap.
/proc/give_officer_gear(mob/living/carbon/human/target)
	. = list()

	if (!istype(target.head, /obj/item/clothing/head/fancy/un/officer))
		var/obj/item/clothing/head/fancy/un/officer/officer_cap = new()
		if (!target.equip_if_possible(officer_cap, SLOT_HEAD))
			. += officer_cap

	if (!istype(target.w_uniform, /obj/item/clothing/under/rank/service_khakis))
		var/obj/item/clothing/under/rank/service_khakis/khakis = new()
		if (!target.equip_if_possible(khakis, SLOT_W_UNIFORM))
			. += khakis

// Enlisted non-NCOs receive coveralls and a baseball cap.
/proc/give_enlisted_gear(mob/living/carbon/human/target)
	. = list()

	if (!istype(target.head, /obj/item/clothing/head/basecap/un))
		var/obj/item/clothing/head/basecap/un/basecap = new()
		if (!target.equip_if_possible(basecap, SLOT_HEAD))
			. += basecap

	if (!istype(target.w_uniform, /obj/item/clothing/under/rank/shipboard_coveralls))
		var/obj/item/clothing/under/rank/shipboard_coveralls/coveralls = new()
		if (!target.equip_if_possible(coveralls, SLOT_W_UNIFORM))
			. += coveralls
