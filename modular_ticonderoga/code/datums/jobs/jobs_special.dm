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

/// Drawn, in part, from `/datum/job/special/random/inspector`.
/datum/job/special/nt/representative
	name = "Nanotrasen Representative"
	wages = PAY::IMPORTANT
	limit = 1
	unique = TRUE
	// TODO: NT access
	// access_string = "Inspector"
	receives_miranda = TRUE
	can_roll_antag = FALSE
	badge = /obj/item/clothing/suit/security_badge/nanotrasen
	slot_card = /obj/item/card/id/nanotrasen
	slot_glov = list()
	slot_back = list(/obj/item/storage/backpack/NT)
	slot_belt = list(/obj/item/device/pda2/nt)
	slot_jump = list(/obj/item/clothing/under/misc/NT_rep)
	slot_foot = list(/obj/item/clothing/shoes/dress_shoes)
	slot_head = list(/obj/item/clothing/head/NTberet)
	slot_suit = list(/obj/item/clothing/suit/armor/NT)
	slot_lhan = list(/obj/item/storage/briefcase)
	slot_poc1 = list(/obj/item/device/flash)

/datum/job/special/nt/representative/get_default_miranda()
	. = "I am a Nanotrasen employee! I will not be harmed!"

/datum/job/special/nt/representative/special_setup(mob/living/carbon/human/M)
	..()
	if (!M)
		return

	var/obj/item/storage/briefcase/briefcase = M.find_type_in_hand(/obj/item/storage/briefcase)
	if (istype(briefcase))
		briefcase.storage.add_contents(new /obj/item/instrument/whistle(briefcase))
		briefcase.storage.add_contents(new /obj/item/clipboard/with_pen(briefcase))
