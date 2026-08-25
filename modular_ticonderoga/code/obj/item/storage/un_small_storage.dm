/obj/item/storage/box/starter/un
	spawn_contents = list(
		/obj/item/clothing/mask/gas/un,
		/obj/item/tank/pocket/oxygen,
		/obj/item/storage/box/un_ration,
	)

/obj/item/storage/box/starter/un/make_my_stuff(onlyMaskAndOxygen)
	return

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
