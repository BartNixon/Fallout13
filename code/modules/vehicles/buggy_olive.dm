//Normal olive buggy
/obj/vehicle/buggy_olive
	name = "dune buggy"
	desc = "<i>Ain't no place for a fancy cars on the Wasteland.<br>No place for classy brands, but nicknames.<br>Only the rusty and trusty death machines.<br>Only fuel and blood.</i>"
	icon = 'icons/obj/vehicles/medium_vehicles.dmi'
	icon_state = "buggy_olive"
	keytype = /obj/item/key
	vehicle_move_delay = 1
	pixel_x = -17
	pixel_y = -2
	var/static/image/buggy_olivecover = null
	var/engine_sound = 'sound/f13machines/buggy_start.ogg'

/obj/vehicle/buggy_olive/New()
	..()
	name = pick("Badger","Bandit","Desert Punk","Dune Buddy","Rooster")
	if(!buggy_olivecover)
		buggy_olivecover = image("medium_vehicles.dmi", "buggy_olive_cover")
		buggy_olivecover.layer = MOB_LAYER + 0.1

obj/vehicle/buggy_olive/post_buckle_mob(mob/living/M)
	if(buckled_mob)
		overlays += buggy_olivecover
		playsound(src.loc, engine_sound, 50, 0, 0)
	else
		overlays -= buggy_olivecover

/obj/vehicle/buggy_olive/handle_vehicle_layer()
	if(dir & NORTH|SOUTH)
		layer = MOB_LAYER - 1
	else
		layer = OBJ_LAYER

/obj/vehicle/buggy_olive/handle_vehicle_offsets()
	..()
	if(buckled_mob)
		switch(buckled_mob.dir)
			if(NORTH)
				buckled_mob.pixel_x = -1
				buckled_mob.pixel_y = 9
			if(EAST)
				buckled_mob.pixel_x = -5
				buckled_mob.pixel_y = 6
			if(SOUTH)
				buckled_mob.pixel_x = 0
				buckled_mob.pixel_y = 12
			if(WEST)
				buckled_mob.pixel_x = 3
				buckled_mob.pixel_y = 6