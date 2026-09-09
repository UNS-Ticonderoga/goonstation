/obj/item/gun/kinetic/fal
	name = "\improper Light Automatic Rifle"
	desc = {"The right arm of the Frontier. Many of these were dumped on the surplus market alongside their former Kalashnikov rivals. Uses 7.62x51mm
			NATO rounds."}
	flags =  TABLEPASS | CONDUCT | USEDELAY
	c_flags = ONBACK
	modularized = TRUE

	icon = 'modular_ticonderoga/icons/obj/items/guns/kinetic64x32.dmi'
	wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/back.dmi'
	inhand_image_icon = 'modular_ticonderoga/icons/mob/inhand/hand_guns.dmi'
	icon_state = "fal"
	item_state = "fal"
	wear_state = "fal"
	fire_animation = TRUE
	has_empty_state = TRUE

	force = MELEE_DMG_RIFLE
	max_ammo_capacity = 20
	ammo_cats = list(AMMO_RIFLE_308)
	auto_eject = TRUE
	two_handed = TRUE
	can_dual_wield = FALSE
	spread_angle = 0
	shoot_delay = 3 DECI SECONDS
	default_magazine = /obj/item/ammo/bullets/fal
	ammobag_magazines = list(/obj/item/ammo/bullets/fal)

/obj/item/gun/kinetic/fal/New()
	src.ammo = new src.default_magazine
	src.set_current_projectile(new /datum/projectile/bullet/fal)
	src.projectiles = list(src.current_projectile, new /datum/projectile/bullet/fal/burst)
	..()

/obj/item/gun/kinetic/fal/attackby(obj/item/ammo/bullets/b, mob/user)
	. = ..()

	if (istype(src.current_projectile, /datum/projectile/bullet/fal/burst))
		src.set_current_projectile(new /datum/projectile/bullet/fal/burst)
		src.projectiles = list(new /datum/projectile/bullet/fal, current_projectile)
	else
		src.set_current_projectile(new /datum/projectile/bullet/fal)
		src.projectiles = list(src.current_projectile, new /datum/projectile/bullet/fal/burst)

/obj/item/gun/kinetic/fal/attack_self(mob/user)
	..()
	// Equivalent spread angle to AKM, slightly longer shot delay to account for the FN FAL's massive recoil in auto.
	if (istype(src.current_projectile, /datum/projectile/bullet/fal/burst))
		src.spread_angle = 9
		src.shoot_delay = 5 DECI SECONDS
	else
		src.spread_angle = initial(src.spread_angle)
		src.shoot_delay = initial(src.shoot_delay)

/obj/item/ammo/bullets/fal
	sname = "7.62x51mm NATO"
	name = "LAR magazine"
	desc = "A magazine of 7.62x51mm NATO rounds, a full-sized rifle cartridge."

	icon = 'modular_ticonderoga/icons/obj/items/guns/ammo.dmi'
	icon_state = "fal"

	ammo_type = new /datum/projectile/bullet/fal
	amount_left = 20
	max_amount = 20
	ammo_cat = AMMO_RIFLE_308
	sound_load = 'sound/weapons/gunload_heavy.ogg'

// Equivalent damage to the AKM's 7.62x39mm. Tempered due to the availability of LARs.
/datum/projectile/bullet/fal
	name = "bullet"
	shot_sound = 'modular_ticonderoga/sound/weapons/lar_shot.ogg'
	damage = 45
	cost = 1
	shot_number = 1
	damage_type = D_KINETIC
	hit_type = DAMAGE_CUT
	impact_image_state = "bullethole-small"
	implanted = /obj/item/implant/projectile/bullet_308
	casing = /obj/item/casing/rifle
	ricochets = TRUE

// Two-round burst to emulate disciplined fire.
/datum/projectile/bullet/fal/burst
	sname = "two-round burst"
	cost = 2
	shot_number = 2

/obj/item/storage/pouch/fal
	name = "LAR magazine pouch"
	icon_state = "ammopouch-double"
	slots = 2
	spawn_contents = list(/obj/item/ammo/bullets/fal = 2)
