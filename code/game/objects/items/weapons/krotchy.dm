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