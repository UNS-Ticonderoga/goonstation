/obj/item/storage/box/starter/un
	spawn_contents = list(
		/obj/item/clothing/mask/gas/un,
		/obj/item/tank/pocket/oxygen,
		/obj/item/storage/box/un_ration,
	)

/obj/item/storage/box/starter/un/make_my_stuff(onlyMaskAndOxygen)
	return

/obj/item/storage/box/uniform
	name = "garment bag"
	desc = "A bag for holding uniform items."
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/items/storage.dmi'
	inhand_image_icon = 'modular_ticonderoga/icons/mob/inhand/hand_storage.dmi'
	icon_state = "garment_bag"
	item_state = "garment_bag"

	check_wclass = STORAGE_CHECK_W_CLASS_INCLUDE
	can_hold = list(
		/obj/item/clothing/suit/field_jacket,
	)

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
