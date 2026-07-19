/obj/item/clothing/head/UNberet
	name = "United Nations Peacekeeper Beret"
	desc = "The beret of the vaunted United Nations Peacekeeper Corps. That is, when the Security Council gets their act together."
	modularized = TRUE

	// Placeholders.
	icon_state = "ntberet"
	item_state = "ntberet"

	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'
	wear_state = "beret-un"

/obj/item/clothing/head/UNberet/setupProperties()
	..()
	setProperty("meleeprot_head", 3)

/obj/item/clothing/head/helmet/un
	name = "United Nations Peacekeeper Helmet"
	desc = "The iconic Blue Helmet, always seemingly showing up the moment after they would've been useful."
	modularized = TRUE
	c_flags = COVERSEYES | BLOCKCHOKE
	protective_temperature = 500 KELVIN

	// Placeholders.
	icon_state = "helmet-hos"
	item_state = "helmet-hos"

	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'
	wear_state = "helmet-un"

/obj/item/clothing/head/helmet/un/setupProperties()
	..()
	setProperty("coldprot", 10)
	setProperty("heatprot", 10)
	setProperty("meleeprot_head", 5)
