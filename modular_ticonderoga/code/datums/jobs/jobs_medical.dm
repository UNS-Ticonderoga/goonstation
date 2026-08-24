/datum/job/medical
	receives_un_gear = TRUE
	slot_foot = list(/obj/item/clothing/shoes/swat)

/datum/job/medical/medical_doctor
	name = "Medical Doctor"
	limit = 5
	wages = PAY::DOCTORATE
	trait_list = list("training_medical")
	access_string = "Medical Doctor"
	slot_back = list(/obj/item/storage/backpack/medic/un)
	slot_glov = list(/obj/item/clothing/gloves/latex)
	slot_belt = list(/obj/item/storage/belt/medical/prepared)
	slot_jump = list(/obj/item/clothing/under/scrub/blue)
	slot_ears = list(/obj/item/device/radio/headset/medical)
	slot_eyes = list(/obj/item/clothing/glasses/healthgoggles/upgraded)
	slot_poc1 = list(/obj/item/device/pda2/medical)
	slot_poc2 = list(/obj/item/crowbar/blue)
	wiki_link = "https://wiki.ss13.co/Medical_Doctor"

/datum/job/medical/roboticist
	name = "Roboticist"
	limit = 3
	wages = PAY::DOCTORATE
	trait_list = list("training_medical")
	access_string = "Roboticist"
	slot_back = list(/obj/item/storage/backpack/robotics/un)
	slot_belt = list(/obj/item/storage/belt/roboticist/prepared)
	slot_jump = list(/obj/item/clothing/under/scrub/maroon)
	slot_glov = list(/obj/item/clothing/gloves/latex)
	slot_eyes = list(/obj/item/clothing/glasses/healthgoggles/upgraded)
	slot_ears = list(/obj/item/device/radio/headset/medical)
	slot_poc1 = list(/obj/item/device/pda2/robotics)
	slot_poc2 = list(/obj/item/reagent_containers/mender/brute)
	wiki_link = "https://wiki.ss13.co/Roboticist"

/datum/job/medical/medical_assistant
	name = "Medical Assistant"
	rank_type = RANK_ENLISTED_NCO
	alias_names = list("Medical Trainee")
	limit = 2
	wages = PAY::UNTRAINED
	trait_list = list("training_medical")
	access_string = "Medical Doctor"
	rounds_allowed_to_play = ROUNDS_MAX_MEDASS
	slot_back = list(/obj/item/storage/backpack/medic/un)
	slot_belt = list(/obj/item/storage/belt/medical/prepared)
	slot_ears = list(/obj/item/device/radio/headset/medical)
	slot_glov = list(/obj/item/clothing/gloves/latex)
	slot_eyes = list(/obj/item/clothing/glasses/healthgoggles/upgraded)
	slot_poc1 = list(/obj/item/device/pda2/medical)
	slot_jump = list(/obj/item/clothing/under/scrub)
	wiki_link = "https://wiki.ss13.co/Medical_Assistant"

/datum/job/medical/pharmacist
	name = "Pharmacist"
	alias_names = list("Scientist")
	wages = PAY::DOCTORATE
	limit = 3
	access_string = "Pharmacist"
	slot_back = list(/obj/item/storage/backpack/pharmacist/un)
	slot_belt = list(/obj/item/device/pda2/pharmacist)
	slot_jump = list(/obj/item/clothing/under/scrub/orange)
	slot_ears = list(/obj/item/device/radio/headset/pharmacist)
	slot_eyes = list(/obj/item/clothing/glasses/spectro)
	items_in_backpack = list(
		/obj/item/storage/box/beakerbox,
		/obj/item/beaker_lid,
		/obj/item/reagent_containers/injector_filler,
	)
	wiki_link = "https://wiki.ss13.co/Pharmacist"

ABSTRACT_TYPE(/datum/job/medical/geneticist)
/datum/job/medical/geneticist
