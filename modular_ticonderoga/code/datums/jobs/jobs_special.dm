/datum/job/special/journalist
	name = "Journalist"
	wages = PAY::UNTRAINED
	slot_jump = list(/obj/item/clothing/under/suit/red)
	slot_head = list(/obj/item/clothing/head/fedora)
	slot_lhan = list(/obj/item/storage/briefcase)
	slot_poc1 = list(/obj/item/camera)
	slot_foot = list(/obj/item/clothing/shoes/brown)
	items_in_backpack = list(/obj/item/camera_film/large)
	special_spawn_location = LANDMARK_JOURNALIST_SPAWN

/datum/job/special/journalist/special_setup(mob/living/carbon/human/M)
	..()
	if (!M)
		return

	var/obj/item/storage/briefcase/B = M.find_type_in_hand(/obj/item/storage/briefcase)
	if (B && istype(B))
		B.storage.add_contents(new /obj/item/device/camera_viewer/public(B))
		B.storage.add_contents(new /obj/item/clothing/head/helmet/camera(B))
		B.storage.add_contents(new /obj/item/device/audio_log(B))
		B.storage.add_contents(new /obj/item/clipboard/with_pen(B))
