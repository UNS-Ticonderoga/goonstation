ABSTRACT_TYPE(/datum/rank/officer)
/datum/rank/officer
	rank_type = RANK_TYPE_OFFICER

ABSTRACT_TYPE(/datum/rank/officer/bridge)
/datum/rank/officer/bridge
	rank_items = list(
		SLOT_HEAD = /obj/item/clothing/head/fancy/un/bridge,
		SLOT_W_UNIFORM = /obj/item/clothing/under/rank/service_whites,
	)

/datum/rank/officer/bridge/lcdr
	name = RANK_OFFICER_O4
	short_name = "LCDR"
	order = 4

/datum/rank/officer/bridge/lt
	name = RANK_OFFICER_O3
	short_name = "LT"
	order = 3

/datum/rank/officer/bridge/slt
	name = RANK_OFFICER_O2
	short_name = "SLT"
	order = 2

ABSTRACT_TYPE(/datum/rank/officer/junior)
/datum/rank/officer/junior
	rank_items = list(
		SLOT_HEAD = /obj/item/clothing/head/fancy/un/officer,
		SLOT_W_UNIFORM = /obj/item/clothing/under/rank/service_khakis,
	)

/datum/rank/officer/junior/ens
	name = RANK_OFFICER_O1
	short_name = "ENS"
	order = 1

ABSTRACT_TYPE(/datum/rank/enlisted)
/datum/rank/enlisted
	rank_type = RANK_TYPE_ENLISTED

ABSTRACT_TYPE(/datum/rank/enlisted/nco)
/datum/rank/enlisted/nco
	rank_items = list(
		SLOT_HEAD = /obj/item/clothing/head/fancy/un/officer,
		SLOT_W_UNIFORM = /obj/item/clothing/under/rank/service_khakis,
	)

/datum/rank/enlisted/nco/po1
	name = RANK_ENLISTED_E6
	short_name = "PO1"
	order = 6

/datum/rank/enlisted/nco/po2
	name = RANK_ENLISTED_E5
	short_name = "PO2"
	order = 5

/datum/rank/enlisted/nco/po3
	name = RANK_ENLISTED_E4
	short_name = "PO3"
	order = 4

ABSTRACT_TYPE(/datum/rank/enlisted/junior)
/datum/rank/enlisted/junior
	rank_items = list(
		SLOT_HEAD = /obj/item/clothing/head/basecap/un,
		SLOT_W_UNIFORM = /obj/item/clothing/under/rank/shipboard_coveralls,
	)

/datum/rank/enlisted/junior/s1c
	name = RANK_ENLISTED_E3
	short_name = "S1C"
	order = 3

/datum/rank/enlisted/junior/s2c
	name = RANK_ENLISTED_E2
	short_name = "S2C"
	order = 2

/datum/rank/enlisted/junior/s3c
	name = RANK_ENLISTED_E1
	short_name = "S3C"
	order = 1
