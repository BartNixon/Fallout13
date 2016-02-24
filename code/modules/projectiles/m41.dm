/obj/item/weapon/gun/projectile/automatic/m41a
	name = "M41A Pulse Rifle MK2"
	desc = "Lightweight and rugged, perfectly usable even in a vacuum, ultimate Xenomorph killing machine!<br>Uses 10x24mm caseless ammo."
	icon_state = "m41"
	item_state = "m41"
	slot_flags = SLOT_BACK
	fire_sound = "sound/f13weapons/m41a.ogg"
	w_class = 3.0
	mag_type = /obj/item/ammo_box/magazine/p10mm

/obj/item/weapon/gun/projectile/automatic/m41a/process_chamber(var/eject_casing = 0, var/empty_chamber = 1)
	..()

/obj/item/weapon/gun/projectile/automatic/m41a/afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag)
	..()
	if(!chambered && !get_ammo() && !alarmed)
		playsound(user, 'sound/weapons/smg_empty_alarm.ogg', 40, 1)
		update_icon()
		alarmed = 1
	return

/obj/item/ammo_casing/caseless/p10mm
	desc = "A 10x24mm bullet casing."
	caliber = "10x24m caseless"
	projectile_type = /obj/item/projectile/bullet/p10mm

/obj/item/projectile/bullet/p10mm
	name ="bullet"
	icon_state= "bullet"
	damage = 30
	flag = "bullet"

/obj/item/ammo_box/magazine/p10mm
	name = "pulse rifle magazine (10x24mm)"
	icon_state = "mp10mm"
	ammo_type = /obj/item/ammo_casing/caseless/p10mm
	multiple_sprites = 2
	caliber = "10x24mm caseless"
	max_ammo = 40