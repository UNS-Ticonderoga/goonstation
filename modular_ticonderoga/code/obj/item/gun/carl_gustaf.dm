// UN equivalent of the RPG-7.
/obj/item/gun/kinetic/carl_gustaf
	name = "\improper MORS M3"
	desc = {"The Multi-role Ordinance Recoilless System, Model 3. Originally developed in Sweden, this has existed in some form since the end of World
			War 2."}
	c_flags = ONBACK
	w_class = W_CLASS_BULKY
	modularized = TRUE

	// Note: The item icon_state is actually flipped on the vertical axis compared to real life as the side with all the optics and bits is more
	// visually interesting, and I am not breaking convention by having the weapon face left. This means that inhands should be flipped from what is
	// seen on the item icon_state. - @DisturbHerb
	icon = 'modular_ticonderoga/icons/obj/items/guns/kinetic48x32.dmi'
	// wear_image_icon = 'modular_ticonderoga/icons/mob/clothing/back.dmi'
	// inhand_image_icon = 'modular_ticonderoga/icons/mob/inhand/hand_guns.dmi'
	icon_state = "carl_gustaf"
	// item_state = "carl_gustaf"
	// wear_state = "carl_gustaf"

	// TODO: Placeholder.
	inhand_image_icon = 'icons/mob/inhand/hand_guns.dmi'
	wear_image_icon = 'icons/mob/clothing/back.dmi'
	item_state = "rpg7"
	wear_state = "rpg7"

	can_dual_wield = FALSE
	two_handed = TRUE
	has_empty_state = TRUE

	throw_speed = 2
	throw_range = 4
	force = MELEE_DMG_LARGE
	contraband = 8
	ammo_cats = list(AMMO_RECOILLESS)
	max_ammo_capacity = 1
	muzzle_flash = "muzzle_flash_launch"

	default_magazine = /obj/item/ammo/bullets/carl_gustaf
	ammobag_magazines = list(/obj/item/ammo/bullets/carl_gustaf)
	ammobag_spec_required = TRUE
	ammobag_restock_cost = 4
	recoil_strength = 13

/obj/item/gun/kinetic/carl_gustaf/New()
	src.ammo = new src.default_magazine
	src.ammo.amount_left = 0
	src.set_current_projectile(new /datum/projectile/bullet/carl_gustaf)
	AddComponent(/datum/component/holdertargeting/windup, 0.2 SECOND)
	..()

/obj/item/ammo/bullets/carl_gustaf
	sname = "84x255mm R RCL"
	name = "\improper MORS M3 round"
	desc = "A high-explosive anti-personnel recoilless rifle round."

	icon = 'modular_ticonderoga/icons/obj/items/guns/ammo.dmi'
	icon_state = "carl_gustaf"

	ammo_type = new /datum/projectile/bullet/carl_gustaf
	ammo_cat = AMMO_RECOILLESS
	w_class = W_CLASS_NORMAL
	amount_left = 1
	max_amount = 1
	delete_on_reload = TRUE
	sound_load = 'sound/weapons/gunload_mprt.ogg'

/datum/projectile/bullet/carl_gustaf
	name = "84x255mm R RCL"
	icon = 'modular_ticonderoga/icons/obj/projectiles.dmi'
	icon_state = "carl_gustaf"
	damage_type = D_KINETIC
	hit_type = DAMAGE_BLUNT
	damage = 40
	dissipation_delay = 30
	cost = 1
	shot_sound = 'sound/weapons/rocket.ogg'
	impact_image_state = "bullethole-large"

/datum/projectile/bullet/carl_gustaf/on_hit(atom/hit, angle, obj/projectile/O)
	var/turf/T = get_turf(hit)
	if (!isturf(T))
		return

	for (var/mob/living/carbon/human/M in view(hit, 2))
		M.TakeDamage("chest", 15/M.get_ranged_protection(), 0)

		if (M.get_ranged_protection() >= 1.5)
			boutput(M, SPAN_ALERT("Your armor blocks the shrapnel!"))
			continue

		var/obj/item/implant/projectile/shrapnel/implanted = new /obj/item/implant/projectile/shrapnel
		implanted.implanted(M, null, 2)
		boutput(M, SPAN_ALERT("You are struck by shrapnel!"))

	T.hotspot_expose(700, 125)
	explosion_new(null, T, 36, range_cutoff_fraction = 0.45)
