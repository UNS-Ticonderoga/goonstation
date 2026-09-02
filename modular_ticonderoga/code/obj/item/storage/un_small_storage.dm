/obj/item/storage/box/starter/un
	name = "\improper PCN survival kit"
	desc = "A UN Peacekeeper Corps Navy canvas bag containing survival supplies."
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/items/storage.dmi'
	icon_state = "box-survival"

	check_wclass = STORAGE_CHECK_W_CLASS_INCLUDE
	spawn_contents = list(
		/obj/item/clothing/mask/gas/un,
		/obj/item/tank/pocket/oxygen,
		/obj/item/storage/box/un_ration,
		/obj/item/cigpacket,
		/obj/item/roadflare,
		/obj/item/matchbook,
	)
	can_hold = list(
		/obj/item/clothing/mask/gas/un,
	)

/obj/item/storage/box/starter/un/make_my_stuff(onlyMaskAndOxygen)
	return

/obj/item/storage/box/uniform
	name = "garment bag"
	desc = "A bag for holding uniform items."
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/items/storage.dmi'
	inhand_image_icon = 'modular_ticonderoga/icons/mob/inhand/hand_storage.dmi'
	icon_state = "box-uniform"
	item_state = "box-uniform"

	slots = 4
	can_hold = list(
		/obj/item/clothing,
	)

/obj/item/storage/box/uniform/New(mob/living/carbon/human/owner)
	. = ..()
	if (!ishuman(owner))
		return

	// For clerical error.
	var/obj/item/card/id/owner_id = owner.get_id()

	var/owner_rank = owner.mind?.assigned_rank ? "[owner.mind.assigned_rank.name]" : ""
	var/owner_role = owner.mind?.assigned_role ? "[owner.mind.assigned_role]" : ""

	desc += " This one belongs to [owner_rank && "[owner_rank] "][owner_id ? owner_id.registered : owner][owner_role && ", [owner_role]"]."

/obj/item/storage/box/un_ration
	name = "emergency ration box"
	desc = "A box of Emergency Ration, version five (ER-5) food bars."
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/items/storage.dmi'
	icon_state = "box-ration"
	item_state = "box"

	slots = 2
	w_class = W_CLASS_TINY
	max_wclass = W_CLASS_TINY
	spawn_contents = list(
		/obj/item/reagent_containers/food/snacks/ration = 2,
	)

/obj/item/storage/box/id_kit/un
	spawn_contents = list(
		/obj/item/card/id/un = 7,
	)
