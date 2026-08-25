/obj/item/clothing/mask/gas/un
	name = "\improper M17 gas mask"
	desc = {"US Military surplus, now marked with the UN's globe and olive branches. The hood's supposed to protect you from exposure to outside
			contaminants, but it definitely makes you look like a comic book villain."}
	c_flags = COVERSHAIR | COVERSMOUTH | COVERSEYES | MASKINTERNALS | BLOCKSMOKE
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/clothing/item_masks.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/mask.dmi'
	icon_state = "gas_mask-un"
	item_state = "gas_mask-un"

	color_r = 0.85
	color_g = 0.85
	color_b = 0.95

/obj/item/clothing/mask/gas/un/setupProperties()
	..()
	setProperty("coldprot", 10)
	setProperty("heatprot", 10)
