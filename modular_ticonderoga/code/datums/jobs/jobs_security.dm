/datum/job/security
	receives_un_gear = TRUE
	slot_jump = list(/obj/item/clothing/under/rank/un/officer)
	slot_back = list(/obj/item/storage/backpack/security/un)
	slot_foot = list(/obj/item/clothing/shoes/swat)

/datum/job/security/security_officer
	name = "Marine Guard"
	alias_names = list("Security Officer", "Security Assistant")
	limit = 8
	lower_limit = 5
	variable_limit = TRUE
	high_priority_job = TRUE
	high_priority_limit = 2
	order_priority = 2
	wages = PAY::TRADESMAN
	trait_list = list("training_security")
	access_string = "Security Officer"
	can_roll_antag = FALSE
	receives_implants = list(/obj/item/implant/health/security/anti_mindhack)
	slot_head = list(/obj/item/clothing/head/fancy/un/beret)
	slot_belt = list(/obj/item/device/pda2/security)
	slot_suit = list(/obj/item/clothing/suit/armor/vest/un)
	slot_ears = list(/obj/item/device/radio/headset/security)
	slot_eyes = list(/obj/item/clothing/glasses/sunglasses/sechud)
	slot_poc1 = list(/obj/item/storage/security_pouch)
	slot_poc2 = list(/obj/item/requisition_token/security)
	rounds_needed_to_play = ROUNDS_MIN_SECURITY
	wiki_link = "https://wiki.ss13.co/Security_Officer"

/datum/job/security/detective
	name = "Forensic Specialist"
	alias_names = list("Detective")
	limit = 1
	wages = PAY::TRADESMAN
	trait_list = list("training_drinker", "training_forensic")
	access_string = "Detective"
	invalid_antagonist_roles = list(ROLE_HEAD_REVOLUTIONARY, ROLE_GANG_LEADER, ROLE_GANG_MEMBER, ROLE_CONSPIRATOR)
	allow_antag_fallthrough = FALSE
	unique = TRUE
	slot_head = list(/obj/item/clothing/head/det_hat)
	slot_belt = list(/obj/item/storage/belt/security/shoulder_holster)
	slot_poc1 = list(/obj/item/device/pda2/forensic)
	slot_glov = list(/obj/item/clothing/gloves/black)
	slot_suit = list(/obj/item/clothing/suit/det_suit)
	slot_ears = list(/obj/item/device/radio/headset/detective)
	slot_back = list(/obj/item/storage/backpack/un)
	items_in_backpack = list(
		/obj/item/clothing/glasses/vr,
		/obj/item/storage/box/detectivegun,
		/obj/item/camera/large,
	)
	map_can_autooverride = FALSE
	rounds_needed_to_play = ROUNDS_MIN_DETECTIVE
	wiki_link = "https://wiki.ss13.co/Detective"

/datum/job/security/forensic_specialist/special_setup(mob/living/carbon/human/M)
	..()
	if (M.traitHolder && !M.traitHolder.hasTrait("smoker"))
		items_in_backpack += list(/obj/item/device/light/zippo)
