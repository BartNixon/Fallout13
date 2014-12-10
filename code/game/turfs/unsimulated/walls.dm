/turf/unsimulated/wall
	name = "wall"
	icon = 'icons/turf/walls.dmi'
	icon_state = "riveted"
	opacity = 1
	density = 1
	blocks_air = 1

/turf/unsimulated/wall/normal
	icon_state = "wall"

/turf/unsimulated/wall/fakeglass
	name = "window"
	icon_state = "fakewindows"
	opacity = 0

/turf/unsimulated/wall/fakedoor
	name = "Centcom Access"
	icon = 'icons/obj/doors/Doorele.dmi'
	icon_state = "door_closed"

/turf/unsimulated/wall/splashscreen
	var/tickerPeriod = 300 //in deciseconds
	var/atom/movable/fullDark

turf/unsimulated/wall/splashscreen/New()
	.=..()
	name = "Fallout 13"
	desc = "Welcome to Fallout 13!<br>Meet our laborious team:<br>BartNixon (Creator, Manager, Spriter, Coder)<br>Ivan_mrr (Spriter, Creative Director)<br>WB (Coder)<br>Nienhaus (Spriter, Ambassador)<br>MrSnapwalk(Spriter, Voice Actor)<br>WalterJe(Spriter)<br>And all the others who made our dream come true."
	icon = 'icons/misc/fullscreen.dmi'
	icon_state = "title[rand(1,13)]"
	layer = 60
	src.fullDark = new/atom/movable{
		icon = 'icons/misc/fullscreen.dmi' //Replace with actual icon
		icon_state = "transition" //Replace with actual state
		layer = 61;
		alpha = 0;
		}(src)
	spawn() src.ticker()
	return

turf/unsimulated/wall/splashscreen/proc/ticker()
	while(src && istype(src,/turf/unsimulated/wall/splashscreen))
		src.swapImage()
		sleep(src.tickerPeriod)
	world << "Badmins spawn shit and title screen was deleted.<br>You know... I'm out of here!"
	return

//Change the time to determine how short/long the fading animation is.
//Change the easing to determine what interpolation it uses to change the value on a curve: good ones to try are CUBIC, BOUNCE, and ELASTIC as well as CIRCULAR. BOUNCE and ELASTIC both "bounce" or "flicker" a little bit at the end instead of just finishing straight at black.

/turf/unsimulated/wall/splashscreen/proc/swapImage()
	animate(src.fullDark,alpha=255,time=10,easing=CUBIC_EASING)
	sleep(12) //buffer of about 1/5 of the time of the animation, since they are not synchronized: the sleep happens on the server, but the animation is played for each client using directX. It's good to leave a buffer, but most of the time the directX will be much faster than the server anyway so you probably wont have any problems.
	src.icon_state = "title[rand(1,13)]"
	animate(src.fullDark,alpha=0,time=10,easing=CUBIC_EASING)
	return

/turf/unsimulated/wall/other
	icon_state = "r_wall"
	name = "reinforced wall"

/turf/unsimulated/shuttle
	name = "shuttle"
	icon = 'icons/turf/shuttle.dmi'
	thermal_conductivity = 0.05
	heat_capacity = 0
	layer = 2

/turf/unsimulated/shuttle/wall
	name = "wall"
	icon_state = "wall1"
	opacity = 1
	density = 1
	blocks_air = 1

/turf/unsimulated/shuttle/floor
	name = "floor"
	icon_state = "floor"