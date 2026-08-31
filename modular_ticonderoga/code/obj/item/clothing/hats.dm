ABSTRACT_TYPE(/obj/item/clothing/head/fancy/un)
/obj/item/clothing/head/fancy/un
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/clothing/item_hats.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'

	icon_state = "pcn-enlisted"
	item_state = "pcn-enlisted"

/obj/item/clothing/head/fancy/un/setupProperties()
	..()
	setProperty("meleeprot_head", 3)

/obj/item/clothing/head/fancy/un/bridge
	name = "\improper PCN bridge officer's cap"
	desc = "This hat has an air of authority granted by centuries of human naval traditions. It is also derisively called the milkman's cap."
	icon_state = "pcn-bridge"
	item_state = "pcn-bridge"

/obj/item/clothing/head/fancy/un/officer
	name = "\improper PCN officer's cap"
	desc = "The hat for those who demand greater respect than what their rank provides."
	icon_state = "pcn-officer"
	item_state = "pcn-officer"

/obj/item/clothing/head/fancy/un/nco
	name = "\improper PCN NCO's garrison cap"
	desc = "Issued to non-commissioned officers. Are we flipping burgers or something?"
	icon_state = "pcn-nco"
	item_state = "pcn-nco"

/obj/item/clothing/head/fancy/un/enlisted
	name = "\improper PCN enlisted sailor's cap"
	desc = "Issued to junior enlisted sailors. Very not spiffy."
	icon_state = "pcn-enlisted"
	item_state = "pcn-enlisted"

/obj/item/clothing/head/fancy/un/mdo
	name = "\improper PCN campaign hat"
	desc = "Does not come with earplugs."
	icon_state = "pcn-mdo"
	item_state = "pcn-mdo"

/obj/item/clothing/head/fancy/un/beret
	name = "\improper UNPC beret"
	desc = "The beret of the vaunted United Nations Peacekeeper Corps. That is, when the Security Council gets their act together."
	icon_state = "unpc-beret"
	item_state = "unpc-beret"

/obj/item/clothing/head/basecap/un
	hatcolour = "un"
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/clothing/item_hats.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'

	icon_state = "basecap_un"
	item_state = "basecap_un"

/obj/item/clothing/head/basecap/un/New()
	..()
	name = "\improper UNS Ticonderoga cap"

/obj/item/clothing/head/helmet/un
	name = "\improper UNPC helmet"
	desc = "The iconic Blue Helmet of the United Nations Peacekeeper Corps, always seemingly showing up the moment after they would've been useful."
	modularized = TRUE
	c_flags = COVERSEYES | BLOCKCHOKE
	protective_temperature = 500 KELVIN

	icon = 'modular_ticonderoga/icons/obj/clothing/item_hats.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/head.dmi'

	icon_state = "unpc-helmet"
	item_state = "unpc-helmet"

/obj/item/clothing/head/helmet/un/setupProperties()
	..()
	setProperty("coldprot", 10)
	setProperty("heatprot", 10)
	setProperty("meleeprot_head", 5)
	setProperty("rangedprot", 1)
