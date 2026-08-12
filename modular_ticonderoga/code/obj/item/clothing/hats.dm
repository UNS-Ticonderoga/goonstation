// TODO: brown version for NCOs in khakis?
/obj/item/clothing/head/fancy/un
	name = "United Nations Peacekeeper Corps Navy peaked cap"
	desc = "This hat has an air of authority granted by centuries of human naval traditions. It is also derisively called the milkman's cap."
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/clothing/item_hats.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'

	icon_state = "peaked_cap-un"
	item_state = "peaked_cap-un"

/obj/item/clothing/head/fancy/un/setupProperties()
	..()
	setProperty("meleeprot_head", 3)

/obj/item/clothing/head/UNberet
	name = "United Nations Peacekeeper Corps beret"
	desc = "The beret of the vaunted United Nations Peacekeeper Corps. That is, when the Security Council gets their act together."
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/clothing/item_hats.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'

	icon_state = "beret-un"
	item_state = "beret-un"

/obj/item/clothing/head/UNberet/setupProperties()
	..()
	setProperty("meleeprot_head", 3)

/obj/item/clothing/head/basecap/un
	hatcolour = "un"
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/clothing/item_hats.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'

	icon_state = "basecap_un"
	item_state = "basecap_un"

/obj/item/clothing/head/basecap/un/New()
	..()
	name = "United Nations Peacekeeper Corps Navy cap"

/obj/item/clothing/head/helmet/un
	name = "United Nations Peacekeeper Corps helmet"
	desc = "The iconic Blue Helmet, always seemingly showing up the moment after they would've been useful."
	modularized = TRUE
	c_flags = COVERSEYES | BLOCKCHOKE
	protective_temperature = 500 KELVIN

	icon = 'modular_ticonderoga/icons/obj/clothing/item_hats.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'

	icon_state = "helmet-un"
	item_state = "helmet-un"

/obj/item/clothing/head/helmet/un/setupProperties()
	..()
	setProperty("coldprot", 10)
	setProperty("heatprot", 10)
	setProperty("meleeprot_head", 5)
