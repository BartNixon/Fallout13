/obj/effect/decal
	name = "decal"
	icon = 'icons/effects/effects.dmi'

/obj/effect/fakespace/New()
	name = "space"
	desc = "Ground control to Major Tom..."
	icon = 'icons/turf/space.dmi'
	icon_state = "[rand(0,25)]"
	layer = 3
	..()

/obj/effect/decal/ex_act(severity)
	qdel(src)