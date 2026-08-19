/datum/job/civilian
	receives_un_gear = TRUE
	slot_back = list(/obj/item/storage/backpack/un)
	slot_head = list(/obj/item/clothing/head/basecap/un)
	slot_jump = list(/obj/item/clothing/under/rank/shipboard_coveralls)

/datum/job/civilian/chef
	name = "Caterer"
	alias_names = list("Chef", "Bartender", "Barman")
	limit = 3
	wages = PAY::UNTRAINED
	trait_list = list("training_drinker", "training_bartender", "training_chef")
	access_string = "Chef"
	slot_head = list(/obj/item/clothing/head/chefhat)
	slot_suit = list(/obj/item/clothing/suit/chef)
	slot_foot = list(/obj/item/clothing/shoes/chef)
	slot_belt = list(/obj/item/device/pda2/chef)
	slot_ears = list(/obj/item/device/radio/headset/civilian/catering)
	slot_poc1 = list(/obj/item/cloth/towel/bar)
	slot_poc2 = list(/obj/item/reagent_containers/food/drinks/cocktailshaker)
	items_in_backpack = list(
		/obj/item/kitchen/rollingpin,
		/obj/item/kitchen/utensil/knife/cleaver,
	)
	wiki_link = "https://wiki.ss13.co/Chef"

/datum/job/civilian/botanist
	name = "Sustainment Technician"
	alias_names = list("Botanist", "Rancher")
	limit = 5
	wages = PAY::TRADESMAN
	access_string = "Botanist"
	slot_belt = list(/obj/item/storage/belt/rancher/prepared)
	slot_glov = list(/obj/item/clothing/gloves/black)
	slot_poc1 = list(/obj/item/device/pda2/botanist)
	slot_poc2 = list(/obj/item/plantanalyzer)
	slot_ears = list(/obj/item/device/radio/headset/civilian/hydroponics)
	items_in_backpack = list(
		/obj/item/device/camera_viewer/ranch,
		/obj/item/paper/image/botany_guide,
		/obj/item/paper/image/ranch_guide,
	)
	wiki_link = "https://wiki.ss13.co/Botanist"
	faction = list(FACTION_BOTANY)

/datum/job/civilian/janitor
	name = "Janitor"
	limit = 3
	wages = PAY::TRADESMAN
	access_string = "Janitor"
	slot_belt = list(/obj/item/storage/fanny/janny)
	slot_foot = list(/obj/item/clothing/shoes/galoshes)
	slot_glov = list(/obj/item/clothing/gloves/long)
	slot_rhan = list(/obj/item/mop)
	slot_ears = list(/obj/item/device/radio/headset/civilian/janitor)
	slot_poc1 = list(/obj/item/device/pda2/janitor)
	items_in_backpack = list(
		/obj/item/reagent_containers/glass/bucket,
		/obj/item/lamp_manufacturer/organic,
	)
	wiki_link = "https://wiki.ss13.co/Janitor"

/datum/job/civilian/chaplain
	name = "Chaplain"
	rank_type = RANK_OFFICER_O1
	limit = 1
	wages = PAY::UNTRAINED
	trait_list = list("training_chaplain")
	access_string = "Chaplain"
	slot_head = list(/obj/item/clothing/head/fancy/un/officer)
	slot_jump = list(/obj/item/clothing/under/rank/service_khakis)
	slot_belt = list(/obj/item/device/pda2/chaplain)
	slot_ears = list(/obj/item/device/radio/headset/civilian/chaplain)
	slot_lhan = list(/obj/item/bible/loaded)
	wiki_link = "https://wiki.ss13.co/Chaplain"

/datum/job/civilian/chaplain/special_setup(mob/living/carbon/human/M)
	..()
	OTHER_START_TRACKING_CAT(M, TR_CAT_CHAPLAINS)

/datum/job/civilian/staff_assistant
	name = "Deckhand"
	alias_names = list("Staff Assistant")
	wages = PAY::UNTRAINED
	access_string = "Staff Assistant"
	no_jobban_from_this_job = TRUE
	low_priority_job = TRUE
	cant_allocate_unwanted = TRUE
	map_can_autooverride = FALSE
	slot_ears = list(/obj/item/device/radio/headset/civilian)
	wiki_link = "https://wiki.ss13.co/Staff_Assistant"

/datum/job/civilian/clown
	name = "Morale Technician"
	receives_un_gear = FALSE // A Clown? In the United Nations? Surely not.
	rank_type = RANK_ENLISTED_E1
	alias_names = list("Clown")
	limit = 1
	wages = PAY::DUMBCLOWN
	request_limit = 3 //this is definitely a bad idea
	request_cost = PAY::TRADESMAN*4
	trait_list = list("training_clown")
	access_string = "Clown"
	ui_colour = TGUI_COLOUR_PINK
	slot_back = list()
	slot_belt = list(/obj/item/storage/fanny/funny)
	slot_mask = list(/obj/item/clothing/mask/clown_hat)
	slot_jump = list(/obj/item/clothing/under/misc/clown)
	slot_foot = list(/obj/item/clothing/shoes/clown_shoes)
	slot_lhan = list(/obj/item/instrument/bikehorn)
	slot_poc1 = list(/obj/item/device/pda2/clown)
	slot_poc2 = list(/obj/item/reagent_containers/food/snacks/plant/banana)
	slot_card = /obj/item/card/id/clown
	slot_ears = list(/obj/item/device/radio/headset/clown)
	items_in_belt = list(/obj/item/cloth/towel/clown)
	change_name_on_spawn = TRUE
	wiki_link = "https://wiki.ss13.co/Clown"

	faction = list(FACTION_CLOWN)

/datum/job/civilian/AI
	name = "AI"
	rank_type = null
	ui_colour = TGUI_COLOUR_GREY
	limit = 0
	no_late_join = TRUE
	high_priority_job = TRUE
	can_roll_antag = FALSE
	slot_ears = list()
	slot_card = null
	slot_back = list()
	slot_belt = list()
	items_in_backpack = list()
	uses_character_profile = FALSE
	show_in_id_comp = FALSE
	wiki_link = "https://wiki.ss13.co/Artificial_Intelligence"
	email_group = MGD_SILICON
	rounds_needed_to_play = ROUNDS_MIN_SECASS
	receives_un_gear = FALSE

/datum/job/civilian/AI/special_setup(mob/living/carbon/human/M)
	..()
	if (!M)
		return
	M.traitHolder.removeTrait("cyber_incompatible")
	return M.AIize()

/datum/job/civilian/cyborg
	name = "Cyborg"
	rank_type = null
	ui_colour = TGUI_COLOUR_GREY
	limit = 8
	no_late_join = TRUE
	can_roll_antag = FALSE
	slot_ears = list()
	slot_card = null
	slot_back = list()
	slot_belt = list()
	items_in_backpack = list()
	uses_character_profile = FALSE
	show_in_id_comp = FALSE
	wiki_link = "https://wiki.ss13.co/Cyborg"
	email_group = MGD_SILICON
	receives_un_gear = FALSE

/datum/job/civilian/cyborg/special_setup(mob/living/carbon/human/M)
	..()
	if (!M)
		return
	var/mob/living/silicon/S = M.Robotize_MK2()
	APPLY_ATOM_PROPERTY(S, PROP_ATOM_ROUNDSTART_BORG, "borg")
	S.traitHolder.removeTrait("cyber_incompatible")
	return S

ABSTRACT_TYPE(/datum/job/civilian/bartender)
/datum/job/civilian/bartender

ABSTRACT_TYPE(/datum/job/civilian/mail_courier)
/datum/job/civilian/mail_courier

ABSTRACT_TYPE(/datum/job/civilian/rancher)
/datum/job/civilian/rancher
