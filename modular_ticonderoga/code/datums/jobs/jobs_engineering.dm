/datum/job/engineering
	receives_un_gear = TRUE
	slot_head = list(/obj/item/clothing/head/basecap/un)
	slot_jump = list(/obj/item/clothing/under/rank/un/coveralls)
	slot_suit = list(/obj/item/clothing/suit/hi_vis)
	slot_back = list(/obj/item/storage/backpack/engineering/un)
	slot_foot = list(/obj/item/clothing/shoes/swat)

/datum/job/engineering/engineer
	name = "Engineer"
	rank_type = RANK_ENLISTED_NCO
	limit = 8
	wages = PAY::TRADESMAN
	trait_list = list("training_engineer")
	access_string = "Engineer"
	slot_belt = list(/obj/item/storage/belt/utility/prepared)
	slot_lhan = list(/obj/item/storage/toolbox/mechanical/engineer_spawn)
	slot_glov = list(/obj/item/clothing/gloves/yellow)
	slot_poc1 = list(/obj/item/device/pda2/engine)
	slot_poc2 = list(/obj/item/old_grenade/oxygen)
	slot_ears = list(/obj/item/device/radio/headset/engineer)
	slot_head = list(/obj/item/clothing/head/helmet/hardhat)
	wiki_link = "https://wiki.ss13.co/Engineer"

/datum/job/engineering/technical_assistant
	name = "Technical Assistant"
	alias_names = list("Technical Trainee")
	limit = 2
	wages = PAY::UNTRAINED
	trait_list = list("training_engineer")
	access_string = "Engineer"
	rounds_allowed_to_play = ROUNDS_MAX_TECHASS
	slot_ears = list(/obj/item/device/radio/headset/engineer)
	slot_lhan = list(/obj/item/storage/toolbox/mechanical/engineer_spawn)
	slot_glov = list(/obj/item/clothing/gloves/yellow)
	slot_belt = list(/obj/item/storage/belt/utility/prepared)
	slot_poc1 = list(/obj/item/device/pda2/engine)
	slot_head = list(/obj/item/clothing/head/helmet/hardhat)
	wiki_link = "https://wiki.ss13.co/Technical_Assistant"

/datum/job/engineering/quartermaster
	name = "Supply Technician"
	alias_names = list("Quartermaster", "Miner")
	limit = 3
	wages = PAY::TRADESMAN
	trait_list = list("training_quartermaster", "training_miner")
	access_string = "Quartermaster"
	slot_suit = list()
	slot_glov = list(/obj/item/clothing/gloves/black)
	slot_belt = list(/obj/item/storage/belt/mining/prepared)
	slot_ears = list(/obj/item/device/radio/headset/shipping)
	slot_poc1 = list(/obj/item/device/pda2/quartermaster)
	slot_poc2 = list(/obj/item/crowbar)
	wiki_link = "https://wiki.ss13.co/Quartermaster"
	email_group = MGD_SUPPLY

ABSTRACT_TYPE(/datum/job/engineering/miner)
/datum/job/engineering/miner
