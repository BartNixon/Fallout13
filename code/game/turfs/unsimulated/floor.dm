/turf/unsimulated/floor
	name = "floor"
	icon = 'icons/turf/floors.dmi'
	icon_state = "floor"

/turf/unsimulated/floor/plating
	name = "plating"
	icon_state = "plating"
	intact = 0

/turf/unsimulated/floor/bluegrid/New()
	..()
	icon = 'icons/turf/floors+.dmi'
	icon_state = "bcircuit[rand(1,4)]"

/turf/unsimulated/floor/engine
	icon_state = "engine"

//Fallout 13

/turf/unsimulated/floor/wasteland/New()
	..()
	name = "wasteland"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "wasteland[rand(1,31)]"

/turf/unsimulated/floor/housefloor
	name = "wooden floor"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "housewood1"

/turf/unsimulated/floor/housebase
	name = "substruction"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "housebase"

//Horizontal road turfs

/turf/unsimulated/floor/road/horizontaltopbordertop
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "horizontaltopbordertop0"

/turf/unsimulated/floor/road/horizontaltopborderbottom
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "horizontaltopborderbottom0"

/turf/unsimulated/floor/road/horizontalinnermain
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "horizontalinnermain0"

/turf/unsimulated/floor/road/horizontalbottombordertop
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "horizontalbottombordertop0"

/turf/unsimulated/floor/road/horizontalbottomborderbottom
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "horizontalbottomborderbottom0"

/turf/unsimulated/floor/road/horizontaloutermain
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "horizontaloutermain0"

//Vertical road turfs

/turf/unsimulated/floor/road/verticalleftborderleft
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "verticalleftborderleft0"

/turf/unsimulated/floor/road/verticalleftborderright
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "verticalleftborderright0"

/turf/unsimulated/floor/road/verticalinnermain
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "verticalinnermain0"

/turf/unsimulated/floor/road/verticalrightborderleft
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "verticalrightborderleft0"

/turf/unsimulated/floor/road/verticalrightborderright
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "verticalrightborderright0"

/turf/unsimulated/floor/road/verticaloutermain
	name = "road"
	icon = 'icons/turf/floors+.dmi'
	icon_state = "verticaloutermain0"

//I don't wanna touch this...

/turf/unsimulated/floor/attack_paw(user as mob)
	return src.attack_hand(user)