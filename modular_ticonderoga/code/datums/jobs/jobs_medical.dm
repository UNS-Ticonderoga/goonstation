/datum/job/medical
	receives_standard_gear = TRUE
	slot_head = list(/obj/item/clothing/head/fancy/un/officer)

/datum/job/medical/medical_doctor
	name = "Medical Doctor"
	limit = 5
	wages = PAY::DOCTORATE
	trait_list = list("training_medical")
	access_string = "Medical Doctor"
	slot_back = list(/obj/item/storage/backpack/medic)
	slot_glov = list(/obj/item/clothing/gloves/latex)
	slot_belt = list(/obj/item/storage/belt/medical/prepared)
	slot_jump = list(/obj/item/clothing/under/scrub/blue)
	slot_suit = list(/obj/item/clothing/suit/labcoat/medical)
	slot_ears = list(/obj/item/device/radio/headset/medical)
	slot_eyes = list(/obj/item/clothing/glasses/healthgoggles/upgraded)
	slot_poc1 = list(/obj/item/device/pda2/medical)
	slot_poc2 = list(/obj/item/paper/book/from_file/pocketguide/medical)
	items_in_backpack = list(/obj/item/crowbar/blue)
	wiki_link = "https://wiki.ss13.co/Medical_Doctor"

/datum/job/medical/geneticist
	name = "Geneticist"
	limit = 2
	wages = PAY::DOCTORATE
	access_string = "Geneticist"
	slot_back = list(/obj/item/storage/backpack/genetics)
	slot_belt = list(/obj/item/device/pda2/genetics)
	slot_jump = list(/obj/item/clothing/under/scrub/teal)
	slot_suit = list(/obj/item/clothing/suit/labcoat/genetics)
	slot_ears = list(/obj/item/device/radio/headset/medical)
	slot_poc1 = list(/obj/item/device/analyzer/genetic)
	wiki_link = "https://wiki.ss13.co/Geneticist"

/datum/job/medical/roboticist
	name = "Roboticist"
	limit = 3
	wages = PAY::DOCTORATE
	trait_list = list("training_medical")
	access_string = "Roboticist"
	slot_back = list(/obj/item/storage/backpack/robotics)
	slot_belt = list(/obj/item/storage/belt/roboticist/prepared)
	slot_jump = list(/obj/item/clothing/under/scrub/maroon)
	slot_suit = list(/obj/item/clothing/suit/labcoat/robotics)
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
	slot_back = list(/obj/item/storage/backpack/medic)
	slot_belt = list(/obj/item/storage/belt/medical/prepared)
	slot_ears = list(/obj/item/device/radio/headset/medical)
	slot_glov = list(/obj/item/clothing/gloves/latex)
	slot_eyes = list(/obj/item/clothing/glasses/healthgoggles/upgraded)
	slot_poc1 = list(/obj/item/device/pda2/medical)
	slot_poc2 = list(/obj/item/paper/book/from_file/pocketguide/medical)
	slot_jump = list(/obj/item/clothing/under/scrub)
	wiki_link = "https://wiki.ss13.co/Medical_Assistant"

/datum/job/medical/pharmacist
	name = "Pharmacist"
	alias_names = list("Scientist")
	wages = PAY::DOCTORATE
	limit = 3
	access_string = "Pharmacist"
	slot_back = list(/obj/item/storage/backpack/pharmacist)
	slot_belt = list(/obj/item/device/pda2/pharmacist)
	slot_jump = list(/obj/item/clothing/under/scrub/orange)
	slot_suit = list(/obj/item/clothing/suit/labcoat/pharmacist)
	slot_ears = list(/obj/item/device/radio/headset/pharmacist)
	slot_eyes = list(/obj/item/clothing/glasses/spectro)
	items_in_backpack = list(
		/obj/item/storage/box/beakerbox,
		/obj/item/beaker_lid,
		/obj/item/reagent_containers/injector_filler,
	)
	wiki_link = "https://wiki.ss13.co/Pharmacist"
