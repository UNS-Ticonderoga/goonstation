/obj/item/card/id
	/// Can this card hold a military rank?
	var/allow_rank = FALSE
	var/datum/rank/rank = null

/obj/item/card/id/un
	desc = "A United Nations microchipped identification card that grants the wielder access to areas and equipment based on their access level."
	icon = 'modular_ticonderoga/icons/obj/items/card.dmi'
	allow_rank = TRUE
	modularized = TRUE

/obj/item/card/id/un/command
	icon_state = "id_com"

/obj/item/card/id/un/command/captains_spare
	name = "Master access ID"
	desc = "A United Nations ID that provides access to all shipboard areas and equipment."

/obj/item/card/id/un/command/captains_spare/New()
	..()
	src.access = get_access("Captain")
	src.AddComponent(/datum/component/log_item_pickup, first_time_only = TRUE, authorized_job = "Captain", message_admins_too = FALSE)

/obj/item/card/id/un/security
	icon_state = "id_sec"

/obj/item/card/id/un/medical
	icon_state = "id_med"

/obj/item/card/id/un/engineering
	icon_state = "id_eng"

/obj/item/card/id/un/civilian
	icon_state = "id_civ"

/obj/item/card/id/un/guest
	icon_state = "id_basic"
