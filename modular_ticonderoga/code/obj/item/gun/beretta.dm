/obj/item/gun/kinetic/beretta
	name = "\improper M9 Pistol"
	desc = "A 9x19mm service pistol of Italian origin, built by one of Earth's oldest arms manufacturers."
	icon_state = "beretta"
	// item_state = "beretta"
	w_class = W_CLASS_SMALL
	force = MELEE_DMG_PISTOL
	contraband = 4
	ammo_cats = list(AMMO_PISTOL_9MM)
	max_ammo_capacity = 15
	shoot_delay = 2
	auto_eject = TRUE
	has_empty_state = TRUE
	// fire_animation = TRUE
	default_magazine = /obj/item/ammo/bullets/bullet_9mm

/obj/item/gun/kinetic/beretta/New()
	src.ammo = new src.default_magazine
	src.set_current_projectile(new /datum/projectile/bullet/bullet_9mm)
	..()
