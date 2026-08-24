/obj/item/clothing/suit/field_jacket
	name = "PCN field jacket"
	desc = "A field jacket issued by the United Nations Peacekeeper Corps Navy. How many owners has this one had?"
	body_parts_covered = TORSO|ARMS
	bloodoverlayimage = SUITBLOOD_COAT
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/clothing/item_suit.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/worn_suit.dmi'
	icon_state = "field_jacket"
	item_state = "field_jacket"
	coat_style = "field_jacket"

/obj/item/clothing/suit/field_jacket/setupProperties()
	..()
	setProperty("coldprot", 25)
	setProperty("heatprot", 15)

/obj/item/clothing/suit/field_jacket/New()
	..()
	src.AddComponent(/datum/component/toggle_coat, coat_style = "[src.coat_style]", buttoned = TRUE)

/obj/item/clothing/suit/armor/vest/un
	name = "UNPC flak vest"
	desc = "A flak vest in bright United Nations blue. Gaudy!"
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/clothing/item_suit.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/worn_suit.dmi'

	icon_state = "flak_vest"
	item_state = "flak_vest"

/obj/item/clothing/suit/armor/vest/un/attack_self(mob/user)
	return
