// TODO: brown version for NCOs in khakis?
/obj/item/clothing/head/fancy/un
	name = "United Nations Peacekeeper Corps Navy peaked cap"
	desc = "This hat has an air of authority granted by centuries of human naval traditions. It is also derisively called the milkman's cap."

	// Placeholders.
	icon_state = "hoscap"
	item_state = "hoscap"

	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'
	wear_state = "peaked_cap-un"

/obj/item/clothing/head/fancy/un/setupProperties()
	..()
	setProperty("meleeprot_head", 3)

/obj/item/clothing/head/UNberet
	name = "United Nations Peacekeeper Corps beret"
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

/obj/item/clothing/head/basecap/un
	// Placeholders.
	hatcolour = "black"
	item_state = "basecap_black"
	icon_state = "basecap_black"

	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'
	wear_state = "basecap-un"

/obj/item/clothing/head/basecap/un/New()
	..()
	name = "United Nations Peacekeeper Corps Navy cap"

/obj/item/clothing/head/basecap/un/attack_self(mob/user)
	..()
	if (src.hatflip)
		src.wear_state = "basecapflip-un"
	else
		src.wear_state = "basecap-un"

/obj/item/clothing/head/helmet/un
	name = "United Nations Peacekeeper Corps helmet"
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
