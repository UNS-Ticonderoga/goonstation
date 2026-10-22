// UN equivalent of the Antares LMG.
/obj/item/gun/kinetic/rpk
	name = "\improper RPK squad automatic weapon"
	desc = {"A Cold War-era light machine gun chambered in 7.62x39. Though the design is reaching its centennial, its continued service during the
			Martian war of the 2030s and beyond has kept it far from retirement."}
	c_flags = EQUIPPED_WHILE_HELD | ONBACK
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/items/guns/kinetic64x32.dmi'
	// wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/back.dmi'
	// inhand_image_icon = 'modular_ticonderoga/icons/mob/inhand/hand_guns.dmi'
	icon_state = "rpk"
	// item_state = "rpk"
	// wear_state = "rpk"
	fire_animation = TRUE
	has_empty_state = TRUE

	// TODO: Placeholder.
	wear_image_icon = 'icons/mob/clothing/back.dmi'
	item_state = "ak47"
	wear_state = "ak47"

	two_handed = TRUE
	force = MELEE_DMG_RIFLE
	ammo_cats = list(AMMO_AUTO_762)
	max_ammo_capacity = 40
	auto_eject = FALSE
	shoot_delay = 7
	spread_angle = 6
	can_dual_wield = 0
	contraband = 7
	w_class = W_CLASS_BULKY
	default_magazine = /obj/item/ammo/bullets/akm/rpk
	ammobag_magazines = list(/obj/item/ammo/bullets/akm/rpk)
	ammobag_restock_cost = 3

	camera_recoil_multiplier = 0.65
	camera_recoil_sway_max = 10

	recoil_strength = 5
	recoil_stacking_enabled = TRUE
	recoil_stacking_safe_stacks = 8
	recoil_stacking_max_stacks = 8
	recoil_stacking_amount = 0.5
	recoil_max = 100

/obj/item/gun/kinetic/rpk/New()
	src.ammo = new src.default_magazine
	src.set_current_projectile(new /datum/projectile/bullet/rpk)
	src.projectiles = list(src.current_projectile, new /datum/projectile/bullet/rpk/auto)
	AddComponent(/datum/component/holdertargeting/fullauto, 1.5 DECI SECONDS)
	..()

/obj/item/gun/kinetic/rpk/setupProperties()
	..()
	src.setProperty("carried_movespeed", 1)

/obj/item/ammo/bullets/akm/rpk
	name = "\improper RPK magazine"
	desc = "A curved 40 round magazine, for the RPK squad automatic weapon."

	icon = 'modular_ticonderoga/icons/obj/items/guns/ammo.dmi'
	icon_state = "rpk"

	amount_left = 40
	max_amount = 40
	ammo_type = new /datum/projectile/bullet/rpk

// Identical to LMG.
/datum/projectile/bullet/rpk
	name = "bullet"
	sname = "3-round burst"
	shot_sound = 'sound/weapons/akm.ogg'

	damage = 15
	cost = 3
	shot_number = 3
	shot_delay = 0.1 SECONDS
	dissipation_delay = 12
	damage_type = D_KINETIC
	hit_type = DAMAGE_CUT
	ricochets = TRUE

	impact_image_state = "bullethole-small"
	implanted = /obj/item/implant/projectile/bullet_308
	casing = /obj/item/casing/rifle

/datum/projectile/bullet/rpk/on_hit(atom/hit, angle, obj/projectile/O)
	if (!ishuman(hit))
		return
	var/mob/living/carbon/human/M = hit
	M.setStatus("slowed", 0.3 SECONDS, optional = 4)
	M.changeStatus("staggered", clamp(O.power/8, 5, 1) SECONDS)

/datum/projectile/bullet/rpk/auto
	fullauto_valid = 1
	sname = "full auto"
	shot_volume = 66
	cost = 1
	shot_number = 1
