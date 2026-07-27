/datum/job/command
	receives_standard_gear = TRUE
	slot_head = list(/obj/item/clothing/head/fancy/un)
	slot_jump = list(/obj/item/clothing/under/rank/bridge_officer)

/datum/job/command/captain
	name = "Commanding Officer"
	rank_type = RANK_OFFICER_O4
	alias_names = list("Captain")
	limit = 1
	wages = PAY::EXECUTIVE
	access_string = "Captain"
	high_priority_job = TRUE
	receives_miranda = TRUE
	can_roll_antag = FALSE
	world_announce_priority = ANNOUNCE_ORDER_CAPTAIN
	receives_implants = list(/obj/item/implant/health/security/anti_mindhack/command)
	wiki_link = "https://wiki.ss13.co/Captain"
	slot_belt = list(/obj/item/device/pda2/captain)
	slot_back = list(/obj/item/storage/backpack)
	slot_eyes = list(/obj/item/clothing/glasses/sunglasses)
	slot_ears = list(/obj/item/device/radio/headset/command/captain)
	items_in_backpack = list(
		/obj/item/storage/box/id_kit,
		/obj/item/device/flash,
	)
	rounds_needed_to_play = ROUNDS_MIN_CAPTAIN

/datum/job/command/head_of_personnel
	name = "Executive Officer"
	rank_type = RANK_OFFICER_O3
	alias_names = list("Head of Personnel")
	limit = 1
	wages = PAY::IMPORTANT
	access_string = "Head of Personnel"
	wiki_link = "https://wiki.ss13.co/Head_of_Personnel"
	allow_antag_fallthrough = FALSE
	receives_miranda = TRUE
	world_announce_priority = ANNOUNCE_ORDER_HOP
	slot_back = list(/obj/item/storage/backpack)
	slot_belt = list(/obj/item/device/pda2/hop)
	slot_ears = list(/obj/item/device/radio/headset/command/hop)
	slot_poc1 = list(/obj/item/pocketwatch)
	items_in_backpack = list(
		/obj/item/storage/box/id_kit,
		/obj/item/device/flash,
		/obj/item/storage/box/accessimp_kit,
	)

/datum/job/command/head_of_security
	name = "Marine Commanding Officer"
	rank_type = RANK_OFFICER_O3
	alias_names = list("Head of Security")
	limit = 1
	wages = PAY::IMPORTANT
	trait_list = list("training_drinker", "training_security")
	access_string = "Head of Security"
	requires_whitelist = REQUIRES_WHITELIST_USUALLY
	receives_miranda = TRUE
	can_roll_antag = FALSE
	world_announce_priority = ANNOUNCE_ORDER_HOS
	show_in_id_comp = FALSE
	receives_implants = list(/obj/item/implant/health/security/anti_mindhack/command)
	items_in_backpack = list(/obj/item/device/flash)
	wiki_link = "https://wiki.ss13.co/Head_of_Security"
	rounds_needed_to_play = ROUNDS_MIN_HIGHSEC
	slot_suit = list(/obj/item/clothing/suit/armor/vest)
	slot_back = list(/obj/item/storage/backpack/security)
	slot_belt = list(/obj/item/device/pda2/hos)
	slot_poc1 = list(/obj/item/storage/security_pouch)
	slot_poc2 = list(/obj/item/requisition_token/security)
	slot_ears = list(/obj/item/device/radio/headset/command/hos)
	slot_eyes = list(/obj/item/clothing/glasses/sunglasses/sechud)

/datum/job/command/chief_engineer
	name = "Chief Engineer"
	rank_type = RANK_OFFICER_O2
	limit = 1
	wages = PAY::IMPORTANT
	trait_list = list("training_engineer")
	access_string = "Chief Engineer"
	wiki_link = "https://wiki.ss13.co/Chief_Engineer"
	slot_back = list(/obj/item/storage/backpack/engineering)
	slot_belt = list(/obj/item/storage/belt/utility/prepared/ceshielded)
	slot_glov = list(/obj/item/clothing/gloves/yellow)
	slot_eyes = list(/obj/item/clothing/glasses/toggleable/meson)
	slot_ears = list(/obj/item/device/radio/headset/command/ce)
	slot_poc1 = list(/obj/item/paper/book/from_file/pocketguide/engineering)
	slot_poc2 = list(/obj/item/device/pda2/chiefengineer)
	items_in_backpack = list(
		/obj/item/device/flash,
		/obj/item/rcd_ammo/medium,
		/obj/item/clothing/head/helmet/hardhat/chief_engineer,
	)

/datum/job/command/medical_director
	name = "Chief Medical Officer"
	rank_type = RANK_OFFICER_O3
	alias_names = list("Medical Director")
	limit = 1
	wages = PAY::IMPORTANT
	trait_list = list("training_medical")
	access_string = "Medical Director"
	wiki_link = "https://wiki.ss13.co/Medical_Director"
	slot_back = list(/obj/item/storage/backpack/medic)
	slot_glov = list(/obj/item/clothing/gloves/latex)
	slot_belt = list(/obj/item/storage/belt/medical/prepared)
	slot_ears = list(/obj/item/device/radio/headset/command/md)
	slot_eyes = list(/obj/item/clothing/glasses/healthgoggles/upgraded)
	slot_poc1 = list(/obj/item/device/pda2/medical_director)
	items_in_backpack = list(/obj/item/device/flash)

ABSTRACT_TYPE(/datum/job/command/research_director)
/datum/job/command/research_director
