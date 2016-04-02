//We have dooors here, unlike doors the dooors are way more simple and thus better.
//Wasteland dooors from wasteland_doors.dmi
/obj/machinery/dooor/wood
	name = "wooden door"
	desc = "It opens and closes."
	icon = 'icons/obj/doors/wasteland_doors.dmi'
	icon_state = "wasteland"
	opacity = 1
	density = 1
	anchored = 1
	layer = 4.2
	var/woodopen_sound = 'sound/machines/door_open.ogg'
	var/woodclose_sound = 'sound/machines/door_close.ogg'

/obj/machinery/dooor/wood/attackby(obj/item/weapon/I, mob/living/user, params)
	if (density)
		icon_state = "wastelandopen"
		playsound(src.loc, woodopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "wasteland"
		playsound(src.loc, woodclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/wood/attack_hand(mob/user)
	if (density)
		icon_state = "wastelandopen"
		playsound(src.loc, woodopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "wasteland"
		playsound(src.loc, woodclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/wood/attack_tk(mob/user)
	if (density)
		icon_state = "wastelandopen"
		playsound(src.loc, woodopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "wasteland"
		playsound(src.loc, woodclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/wood/CanPass(atom/movable/mover, turf/target, height=0)
	if (mover.loc == loc)
		return 1
	return !density

/obj/machinery/dooor/wood/CheckExit(atom/movable/O as mob|obj, target)
	if (O.loc == loc)
		return 1
	return !density

//Copy-paste
/obj/machinery/dooor/house
	name = "wooden door"
	desc = "It opens and closes."
	icon = 'icons/obj/doors/wasteland_doors.dmi'
	icon_state = "house"
	opacity = 1
	density = 1
	anchored = 1
	layer = 4.2
	var/houseopen_sound = 'sound/machines/door_open.ogg'
	var/houseclose_sound = 'sound/machines/door_close.ogg'

/obj/machinery/dooor/house/attackby(obj/item/weapon/I, mob/living/user, params)
	if (density)
		icon_state = "houseopen"
		playsound(src.loc, houseopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "house"
		playsound(src.loc, houseclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/house/attack_hand(mob/user)
	if (density)
		icon_state = "houseopen"
		playsound(src.loc, houseopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "house"
		playsound(src.loc, houseclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/house/attack_tk(mob/user)
	if (density)
		icon_state = "houseopen"
		playsound(src.loc, houseopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "house"
		playsound(src.loc, houseclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/house/CanPass(atom/movable/mover, turf/target, height=0)
	if (mover.loc == loc)
		return 1
	return !density

/obj/machinery/dooor/house/CheckExit(atom/movable/O as mob|obj, target)
	if (O.loc == loc)
		return 1
	return !density


//I can only copypaste you know...

/obj/machinery/dooor/room
	name = "wooden door"
	desc = "It opens and closes."
	icon = 'icons/obj/doors/wasteland_doors.dmi'
	icon_state = "room"
	opacity = 1
	density = 1
	anchored = 1
	layer = 4.2
	var/woodroomopen_sound = 'sound/machines/door_open.ogg'
	var/woodroomclose_sound = 'sound/machines/door_close.ogg'

/obj/machinery/dooor/room/attackby(obj/item/weapon/I, mob/living/user, params)
	if (density)
		icon_state = "roomopen"
		playsound(src.loc, woodroomopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "room"
		playsound(src.loc, woodroomclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/room/attack_hand(mob/user)
	if (density)
		icon_state = "roomopen"
		playsound(src.loc, woodroomopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "room"
		playsound(src.loc, woodroomclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/room/attack_tk(mob/user)
	if (density)
		icon_state = "roomopen"
		playsound(src.loc, woodroomopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "room"
		playsound(src.loc, woodroomclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/room/CanPass(atom/movable/mover, turf/target, height=0)
	if (mover.loc == loc)
		return 1
	return !density

/obj/machinery/dooor/room/CheckExit(atom/movable/O as mob|obj, target)
	if (O.loc == loc)
		return 1
	return !density


//Fuck them copypastes, someone pls, make a system for dooor so no one gets to copypaste shit!
/obj/machinery/dooor/dirtyglass
	name = "wooden door"
	desc = "It opens and closes."
	icon = 'icons/obj/doors/wasteland_doors.dmi'
	icon_state = "dirtyglass"
	opacity = 1
	density = 1
	anchored = 1
	layer = 4.2
	var/dirtyglassopen_sound = 'sound/machines/door_open.ogg'
	var/dirtyglassclose_sound = 'sound/machines/door_close.ogg'

/obj/machinery/dooor/dirtyglass/attackby(obj/item/weapon/I, mob/living/user, params)
	if (density)
		icon_state = "dirtyglassopen"
		playsound(src.loc, dirtyglassopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "dirtyglass"
		playsound(src.loc, dirtyglassclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/dirtyglass/attack_hand(mob/user)
	if (density)
		icon_state = "dirtyglassopen"
		playsound(src.loc, dirtyglassopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "dirtyglass"
		playsound(src.loc, dirtyglassclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/dirtyglass/attack_tk(mob/user)
	if (density)
		icon_state = "dirtyglassopen"
		playsound(src.loc, dirtyglassopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "dirtyglass"
		playsound(src.loc, dirtyglassclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/dirtyglass/CanPass(atom/movable/mover, turf/target, height=0)
	if (mover.loc == loc)
		return 1
	return !density

/obj/machinery/dooor/dirtyglass/CheckExit(atom/movable/O as mob|obj, target)
	if (O.loc == loc)
		return 1
	return !density

//Copypaste ride never ends!
/obj/machinery/dooor/fakeglass
	name = "damaged wooden door"
	desc = "It still somehow opens and closes."
	icon = 'icons/obj/doors/wasteland_doors.dmi'
	icon_state = "fakeglass"
	opacity = 1
	density = 1
	anchored = 1
	layer = 4.2
	var/fakeglassopen_sound = 'sound/machines/door_open.ogg'
	var/fakeglassclose_sound = 'sound/machines/door_close.ogg'

/obj/machinery/dooor/fakeglass/attackby(obj/item/weapon/I, mob/living/user, params)
	if (density)
		icon_state = "fakeglassopen"
		playsound(src.loc, fakeglassopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "fakeglass"
		playsound(src.loc, fakeglassclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/fakeglass/attack_hand(mob/user)
	if (density)
		icon_state = "fakeglassopen"
		playsound(src.loc, fakeglassopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "fakeglass"
		playsound(src.loc, fakeglassclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/fakeglass/attack_tk(mob/user)
	if (density)
		icon_state = "fakeglassopen"
		playsound(src.loc, fakeglassopen_sound, 30, 0, 0)
		opacity = 0
	else
		icon_state = "fakeglass"
		playsound(src.loc, fakeglassclose_sound, 30, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/fakeglass/CanPass(atom/movable/mover, turf/target, height=0)
	if (mover.loc == loc)
		return 1
	return !density

/obj/machinery/dooor/fakeglass/CheckExit(atom/movable/O as mob|obj, target)
	if (O.loc == loc)
		return 1
	return !density

//Will this copypasting hell ever stop?!
/obj/machinery/dooor/brokenglass
	name = "shattered door"
	desc = "It still opens and closes."
	icon = 'icons/obj/doors/wasteland_doors.dmi'
	icon_state = "brokenglass"
	opacity = 0
	density = 1
	anchored = 1
	layer = 4.2
	var/brokenglassopen_sound = 'sound/machines/door_open.ogg'
	var/brokenglassclose_sound = 'sound/machines/door_close.ogg'

/obj/machinery/dooor/brokenglass/attackby(obj/item/weapon/I, mob/living/user, params)
	if (density)
		icon_state = "brokenglassopen"
		playsound(src.loc, brokenglassopen_sound, 30, 0, 0)
	else
		icon_state = "brokenglass"
		playsound(src.loc, brokenglassclose_sound, 30, 0, 0)
	density = !density

/obj/machinery/dooor/brokenglass/attack_hand(mob/user)
	if (density)
		icon_state = "brokenglassopen"
		playsound(src.loc, brokenglassopen_sound, 30, 0, 0)
	else
		icon_state = "brokenglass"
		playsound(src.loc, brokenglassclose_sound, 30, 0, 0)
	density = !density

/obj/machinery/dooor/brokenglass/attack_tk(mob/user)
	if (density)
		icon_state = "brokenglassopen"
		playsound(src.loc, brokenglassopen_sound, 30, 0, 0)
	else
		icon_state = "brokenglass"
		playsound(src.loc, brokenglassclose_sound, 30, 0, 0)
	density = !density

/obj/machinery/dooor/brokenglass/CanPass(atom/movable/mover, turf/target, height=0)
	if (mover.loc == loc)
		return 1
	return !density

/obj/machinery/dooor/brokenglass/CheckExit(atom/movable/O as mob|obj, target)
	if (O.loc == loc)
		return 1
	return !density

//Why the hell no one made a normal door system yet without any material/overlays/power/wiring bullshit?
/obj/machinery/dooor/glass
	name = "wooden door"
	desc = "It opens and closes."
	icon = 'icons/obj/doors/wasteland_doors.dmi'
	icon_state = "glass"
	opacity = 0
	density = 1
	anchored = 1
	layer = 4.2
	var/glassopen_sound = 'sound/machines/door_open.ogg'
	var/glassclose_sound = 'sound/machines/door_close.ogg'

/obj/machinery/dooor/glass/attackby(obj/item/weapon/I, mob/living/user, params)
	if (density)
		icon_state = "glassopen"
		playsound(src.loc, glassopen_sound, 30, 0, 0)
	else
		icon_state = "glass"
		playsound(src.loc, glassclose_sound, 30, 0, 0)
	density = !density

/obj/machinery/dooor/glass/attack_hand(mob/user)
	if (density)
		icon_state = "glassopen"
		playsound(src.loc, glassopen_sound, 30, 0, 0)
	else
		icon_state = "glass"
		playsound(src.loc, glassclose_sound, 30, 0, 0)
	density = !density

/obj/machinery/dooor/glass/attack_tk(mob/user)
	if (density)
		icon_state = "glassopen"
		playsound(src.loc, glassopen_sound, 30, 0, 0)
	else
		icon_state = "glass"
		playsound(src.loc, glassclose_sound, 30, 0, 0)
	density = !density

/obj/machinery/dooor/glass/CanPass(atom/movable/mover, turf/target, height=0)
	if (mover.loc == loc)
		return 1
	return !density

/obj/machinery/dooor/glass/CheckExit(atom/movable/O as mob|obj, target)
	if (O.loc == loc)
		return 1
	return !density

//Wolololo copypaste overload my brlndrdr
/obj/machinery/dooor/dirtystore
	name = "metal door"
	desc = "It's a metal door with dirty glass."
	icon = 'icons/obj/doors/wasteland_doors.dmi'
	icon_state = "dirtystore"
	opacity = 1
	density = 1
	anchored = 1
	layer = 4.2
	var/dirtystoreopen_sound = 'sound/f13machines/doorstore_open.ogg'
	var/dirtystoreclose_sound = 'sound/f13machines/doorstore_close.ogg'

/obj/machinery/dooor/dirtystore/attackby(obj/item/weapon/I, mob/living/user, params)
	if (density)
		icon_state = "dirtystoreopen"
		playsound(src.loc, dirtystoreopen_sound, 50, 0, 0)
		opacity = 0
	else
		icon_state = "dirtystore"
		playsound(src.loc, dirtystoreclose_sound, 50, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/dirtystore/attack_hand(mob/user)
	if (density)
		icon_state = "dirtystoreopen"
		playsound(src.loc, dirtystoreopen_sound, 50, 0, 0)
		opacity = 0
	else
		icon_state = "dirtystore"
		playsound(src.loc, dirtystoreclose_sound, 50, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/dirtystore/attack_tk(mob/user)
	if (density)
		icon_state = "dirtystoreopen"
		playsound(src.loc, dirtystoreopen_sound, 50, 0, 0)
		opacity = 0
	else
		icon_state = "dirtystore"
		playsound(src.loc, dirtystoreclose_sound, 50, 0, 0)
		opacity = 1
	density = !density

/obj/machinery/dooor/dirtystore/CanPass(atom/movable/mover, turf/target, height=0)
	if (mover.loc == loc)
		return 1
	return !density

/obj/machinery/dooor/dirtystore/CheckExit(atom/movable/O as mob|obj, target)
	if (O.loc == loc)
		return 1
	return !density

//Finaly?
/obj/machinery/dooor/store
	name = "metal door"
	desc = "It opens and closes."
	icon = 'icons/obj/doors/wasteland_doors.dmi'
	icon_state = "store"
	opacity = 0
	density = 1
	anchored = 1
	layer = 4.2
	var/storeopen_sound = 'sound/f13machines/doorstore_open.ogg'
	var/storeclose_sound = 'sound/f13machines/doorstore_close.ogg'

/obj/machinery/dooor/store/attackby(obj/item/weapon/I, mob/living/user, params)
	if (density)
		icon_state = "storeopen"
		playsound(src.loc, storeopen_sound, 50, 0, 0)
	else
		icon_state = "store"
		playsound(src.loc, storeclose_sound, 50, 0, 0)
	density = !density

/obj/machinery/dooor/store/attack_hand(mob/user)
	if (density)
		icon_state = "storeopen"
		playsound(src.loc, storeopen_sound, 50, 0, 0)
	else
		icon_state = "store"
		playsound(src.loc, storeclose_sound, 50, 0, 0)
	density = !density

/obj/machinery/dooor/store/attack_tk(mob/user)
	if (density)
		icon_state = "storeopen"
		playsound(src.loc, storeopen_sound, 50, 0, 0)
	else
		icon_state = "store"
		playsound(src.loc, storeclose_sound, 50, 0, 0)
	density = !density

/obj/machinery/dooor/store/CanPass(atom/movable/mover, turf/target, height=0)
	if (mover.loc == loc)
		return 1
	return !density

/obj/machinery/dooor/store/CheckExit(atom/movable/O as mob|obj, target)
	if (O.loc == loc)
		return 1
	return !density