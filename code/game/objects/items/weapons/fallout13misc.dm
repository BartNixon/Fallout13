//Holodisks stuff
//Here we get the basic mechanics as coded by WB! Praise him and other Unknown coder for this.

/obj/item/weapon/holodisk
	name = "holodisk"
	desc = "A durable laser-readable storage device produced by Wattz Electronics, based on the tape holography technology, storing their information safely for extended periods of time."
	icon = 'icons/obj/items.dmi'
	icon_state = "holodisk"
	item_state = "holodisk"
	throwforce = 0
	hitsound = null //To prevent tap.ogg playing, as the item lacks of force
	w_class = 1.0
	throw_speed = 3
	throw_range = 7
	attack_verb = list("Played holodisk")
	var/busy = 0
	var/soundLength = 50
	var/soundFile = 'sound/f13music/mysteriousstranger.ogg'

/obj/item/weapon/holodisk/New()
        src.name = "holodisk #[rand(1,999)]"
        return ..()

/obj/item/weapon/holodisk/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	src.playAudio(user)
	return ..()

/obj/item/weapon/holodisk/attack_self(mob/user as mob)
	src.playAudio(user)
	return

/obj/item/weapon/holodisk/proc/playAudio(mob/user)
	if(!src.busy)
		src.busy = 1
		playsound(get_turf(src),src.soundFile,50)
		src.add_fingerprint(user)
		src.icon_state = "[initial(src.icon_state)]anim"
		spawn(src.soundLength)
			src.icon_state = initial(src.icon_state)
			src.busy = 0
	return

//Here we get any holodisks we want, using the basic mechanics.

/obj/item/weapon/holodisk/holodiskabducted
	soundFile =  'sound/f13items/holodiskabducted.ogg'
	soundLength = 430

/obj/item/weapon/holodisk/holodiskrussian
	soundFile =  'sound/f13items/holodiskrussian.ogg'
	soundLength = 330

/obj/item/weapon/holodisk/holodiskmarinesen
	soundFile =  'sound/f13items/holodiskmarinesen.ogg'
	soundLength = 340

/obj/item/weapon/holodisk/holodiskmarinesru
	soundFile =  'sound/f13items/holodiskmarinesru.ogg'
	soundLength = 340

/obj/item/weapon/holodisk/holodiskcursed
	soundFile =  'sound/f13items/holodiskcursed.ogg'
	soundLength = 230

/obj/item/weapon/holodisk/holodiskcursed/playAudio(mob/user)
	if(!src.busy)
		src.busy = 1
		playsound(get_turf(src),src.soundFile,50)
		src.add_fingerprint(user)
		src.icon_state = "[initial(src.icon_state)]anim"
		spawn(src.soundLength)
			if(user) user.gib()
			src.icon_state = initial(src.icon_state)
			src.busy = 0
	return

//Krotchy doll, hail Postal. by WalterJe

/obj/item/weapon/krotchy
	name = "krotchy doll"
	desc = "The Bad Touch - Krotchy Doll."
	icon = 'icons/obj/krotchy.dmi'
	icon_state = "doll"
	item_state = "doll"
	throwforce = 0
	hitsound = null //To prevent tap.ogg playing, as the item lacks of force
	w_class = 1.0
	throw_speed = 3
	throw_range = 7
	attack_verb = list("Played krotchy")
	var/spam_flag = 0

/obj/item/weapon/krotchy/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	playsound(loc, "krotchy", 50) //plays instead of tap.ogg!
	return ..()

/obj/item/weapon/krotchy/attack_self(mob/user as mob)
	if(spam_flag == 0)
		spam_flag = 1
		playsound(src.loc, "krotchy", 50)
		src.add_fingerprint(user)
		spawn(20)
			spam_flag = 0
	return

