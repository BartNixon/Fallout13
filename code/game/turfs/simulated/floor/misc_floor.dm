/* In this file:
 *
 * Commemorative Plaque
 * Vault floor
 * Vault wall (why)
 * Blue grid
 * Green grid
 * Shuttle floor
 * Beach
 * Ocean
 * Iron Sand
 * Snow
 * High-traction
 */

/turf/simulated/floor/goonplaque
	name = "Commemorative Plaque"
	icon_state = "plaque"
	desc = "\"This is a plaque in honour of our comrades on the G4407 Stations. Hopefully TG4407 model can live up to your fame and fortune.\" Scratched in beneath that is a crude image of a meteor and a spaceman. The spaceman is laughing. The meteor is exploding."

/turf/simulated/floor/vault
	icon_state = "rockvault"

/turf/simulated/wall/vault
	icon_state = "rockvault"

/turf/simulated/floor/bluegrid/New()
	..()
	icon = 'icons/turf/floors+.dmi'
	icon_state = "bcircuit[rand(1,4)]"

/turf/simulated/floor/greengrid/New()
	..()
	icon = 'icons/turf/floors+.dmi'
	icon_state = "gcircuit[rand(1,4)]"

/turf/simulated/floor/redgrid/New()
	..()
	icon = 'icons/turf/floors+.dmi'
	icon_state = "rcircuit[rand(1,4)]"

/turf/simulated/floor/yellowgrid/New()
	..()
	icon = 'icons/turf/floors+.dmi'
	icon_state = "ycircuit[rand(1,4)]"

/turf/simulated/shuttle
	name = "shuttle"
	icon = 'icons/turf/shuttle.dmi'
	thermal_conductivity = 0.05
	heat_capacity = 0
	layer = 2

/turf/simulated/shuttle/wall
	name = "wall"
	icon_state = "wall1"
	opacity = 1
	density = 1
	blocks_air = 1

/turf/simulated/shuttle/floor
	name = "floor"
	icon_state = "floor"

/turf/simulated/shuttle/plating
	name = "plating"
	icon = 'icons/turf/floors.dmi'
	icon_state = "plating"

/turf/simulated/shuttle/floor4 // Added this floor tile so that I have a seperate turf to check in the shuttle -- Polymorph
	name = "Brig floor"        // Also added it into the 2x3 brig area of the shuttle.
	icon_state = "floor4"

//Dropship stuff

/turf/simulated/dropship
	name = "USCMC dropship"
	icon = 'icons/turf/walterje.dmi'
	thermal_conductivity = 0.05
	heat_capacity = 0
	layer = 2

/turf/simulated/dropship/wall
	name = "USCMC dropship"
	icon_state = "5bottom"
	opacity = 1
	density = 1
	blocks_air = 1
	layer = 4

/turf/simulated/dropship/window
	name = "USCMC dropship"
	icon_state = "7middle"
	opacity = 0
	density = 1
	blocks_air = 1
	layer = 4

/turf/simulated/dropship/floor
	name = "floor"
	icon_state = "mainfloor"

/turf/simulated/floor/beach
	name = "Beach"
	icon = 'icons/misc/beach.dmi'

/turf/simulated/floor/beach/ex_act(severity)
	return

/turf/simulated/floor/beach/sand
	name = "Sand"
	icon_state = "sand"

/turf/simulated/floor/beach/coastline
	name = "Coastline"
	icon = 'icons/misc/beach2.dmi'
	icon_state = "sandwater"

/turf/simulated/floor/beach/water
	name = "Water"
	icon_state = "water"

/turf/simulated/floor/plating/ironsand/New()
	..()
	name = "Iron Sand"
	icon_state = "ironsand[rand(1,15)]"

/turf/simulated/floor/plating/snow
	name = "snow"
	icon = 'icons/turf/snow.dmi'
	icon_state = "snow"

/turf/simulated/floor/plating/snow/ex_act(severity)
	return

/turf/simulated/floor/noslip
	name = "high-traction floor"
	icon_state = "noslip"
	floor_tile = /obj/item/stack/tile/noslip
	broken_states = list("noslip-damaged1","noslip-damaged2","noslip-damaged3")
	burnt_states = list("noslip-scorched1","noslip-scorched2")

/turf/simulated/floor/noslip/MakeSlippery()
	return