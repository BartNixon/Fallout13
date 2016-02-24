/obj/item/clothing/suit/armor
	allowed = list(/obj/item/weapon/gun/energy,/obj/item/weapon/reagent_containers/spray/pepper,/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/melee/telebaton)
	body_parts_covered = CHEST
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	put_on_delay = 60

/obj/item/clothing/suit/armor/vest
	name = "armor"
	desc = "An armored vest that protects against some damage."
	icon_state = "armor"
	item_state = "armor"
	blood_overlay_type = "armor"
	armor = list(melee = 50, bullet = 15, laser = 50, energy = 10, bomb = 25, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/hos
	name = "armored greatcoat"
	desc = "A greatcoat enchanced with a special alloy for some protection and style for those with a commanding presence."
	icon_state = "hos"
	item_state = "hos"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list(melee = 65, bullet = 30, laser = 50, energy = 10, bomb = 25, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS
	strip_delay = 80
	put_on_delay = 40

/obj/item/clothing/suit/armor/hos/trenchcoat
	name = "armored trenchoat"
	desc = "A trenchcoat enchanced with a special lightweight kevlar. The epitome of tactical plainclothes."
	icon_state = "jensencoat"
	item_state = "jensencoat"
	flags_inv = 0
	strip_delay = 80
	put_on_delay = 40

/obj/item/clothing/suit/armor/vest/warden
	name = "warden's jacket"
	desc = "An armored jacket with silver rank pips and livery."
	icon_state = "warden_jacket"
	item_state = "armor"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS|HANDS
	heat_protection = CHEST|GROIN|ARMS|HANDS

/obj/item/clothing/suit/armor/vest/capcarapace
	name = "captain's carapace"
	desc = "An armored vest reinforced with ceramic plates and pauldrons to provide additional protection whilst still offering maximum mobility and flexibility. Issued only to the station's finest, although it does chafe your nipples."
	icon_state = "capcarapace"
	item_state = "armor"
	body_parts_covered = CHEST|GROIN
	armor = list(melee = 50, bullet = 30, laser = 50, energy = 10, bomb = 25, bio = 0, rad = 0)


/obj/item/clothing/suit/armor/riot
	name = "riot suit"
	desc = "A suit of armor with heavy padding to protect against melee attacks. Looks like it might impair movement."
	icon_state = "riot"
	item_state = "swat_suit"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = 1
	armor = list(melee = 80, bullet = 10, laser = 10, energy = 10, bomb = 0, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	strip_delay = 80
	put_on_delay = 80

/obj/item/clothing/suit/armor/bulletproof
	name = "bulletproof vest"
	desc = "A vest that excels in protecting the wearer against high-velocity solid projectiles."
	icon_state = "bulletproof"
	item_state = "armor"
	blood_overlay_type = "armor"
	armor = list(melee = 10, bullet = 80, laser = 10, energy = 10, bomb = 0, bio = 0, rad = 0)
	strip_delay = 40
	put_on_delay = 40


/obj/item/clothing/suit/armor/laserproof
	name = "ablative armor vest"
	desc = "A vest that excels in protecting the wearer against energy projectiles."
	icon_state = "armor_reflec"
	item_state = "armor_reflec"
	blood_overlay_type = "armor"
	armor = list(melee = 10, bullet = 10, laser = 80, energy = 50, bomb = 0, bio = 0, rad = 0)
	reflect_chance = 40
	strip_delay = 40
	put_on_delay = 40

/obj/item/clothing/suit/armor/laserproof/IsReflect(var/def_zone)
	var/hit_reflect_chance = reflect_chance
	if(!(def_zone in list("chest", "groin"))) //If not shot where ablative is covering you, you don't get the reflection bonus!
		hit_reflect_chance = 0
	if (prob(hit_reflect_chance))
		return 1


/obj/item/clothing/suit/armor/vest/det_suit
	name = "armor"
	desc = "An armored vest with a detective's badge on it."
	icon_state = "detective-armor"
	allowed = list(/obj/item/weapon/tank/emergency_oxygen,/obj/item/weapon/reagent_containers/spray/pepper,/obj/item/device/flashlight,/obj/item/weapon/gun/energy,/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/device/detective_scanner,/obj/item/device/taperecorder)



//Reactive armor
//When the wearer gets hit, this armor will teleport the user a short distance away (to safety or to more danger, no one knows. That's the fun of it!)
/obj/item/clothing/suit/armor/reactive
	name = "reactive teleport armor"
	desc = "Someone seperated our Research Director from his own head!"
	var/active = 0.0
	icon_state = "reactiveoff"
	item_state = "reactiveoff"
	blood_overlay_type = "armor"
	slowdown = 1
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	action_button_name = "Toggle Armor"
	unacidable = 1

/obj/item/clothing/suit/armor/reactive/IsShield()
	if(active)
		return 1
	return 0

/obj/item/clothing/suit/armor/reactive/attack_self(mob/user as mob)
	src.active = !( src.active )
	if (src.active)
		user << "<span class='notice'>[src] is now active.</span>"
		src.icon_state = "reactive"
		src.item_state = "reactive"
	else
		user << "<span class='notice'>[src] is now inactive.</span>"
		src.icon_state = "reactiveoff"
		src.item_state = "reactiveoff"
		src.add_fingerprint(user)
	return

/obj/item/clothing/suit/armor/reactive/emp_act(severity)
	active = 0
	src.icon_state = "reactiveoff"
	src.item_state = "reactiveoff"
	..()


//All of the armor below is mostly unused


/obj/item/clothing/suit/armor/centcom
	name = "\improper Centcom armor"
	desc = "A suit that protects against some damage."
	icon_state = "centcom"
	item_state = "centcom"
	w_class = 4//bulky item
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/weapon/gun/energy,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/tank/emergency_oxygen)
	flags = THICKMATERIAL
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT

/obj/item/clothing/suit/armor/heavy
	name = "heavy armor"
	desc = "A heavily armored suit that protects against moderate damage."
	icon_state = "heavy"
	item_state = "swat_suit"
	w_class = 4//bulky item
	gas_transfer_coefficient = 0.90
	flags = THICKMATERIAL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = 3
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT

/obj/item/clothing/suit/armor/tdome
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags = THICKMATERIAL
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS

/obj/item/clothing/suit/armor/tdome/red
	name = "thunderdome suit"
	desc = "Reddish armor."
	icon_state = "tdred"
	item_state = "tdred"

/obj/item/clothing/suit/armor/tdome/green
	name = "thunderdome suit"
	desc = "Pukish armor."	//classy.
	icon_state = "tdgreen"
	item_state = "tdgreen"

	//Fallout 13 armors here! More down the list - the worth protection they give.

/obj/item/clothing/suit/armor/advpowerarmor
	name = "advanced power armor Mk I"
	desc = "An advanced suit of armor typically used by the Enclave. It is composed of lightweight metal alloys, reinforced with ceramic castings at key stress points.<br>Additionally, like the T-51b power armor, it includes a recycling system that can convert human waste into drinkable water, and an air conditioning system for it's user's comfort."
	icon_state = "advpowerarmor"
	item_state = "advpowerarmor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	slowdown = 1
	armor = list(melee = 90, bullet = 70, laser = 70, energy = 70, bomb = 50, bio = 100, rad = 40)
	flags = STOPSPRESSUREDMAGE
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/suit/armor/t45dpowerarmor
	name = "T-45d power armor"
	desc = "Originally developed and manufactured for the United States Army by American defense contractor West Tek, the T-45d power armor was the first version of power armor to be successfully deployed in battle."
	icon_state = "t45dpowerarmor"
	item_state = "t45dpowerarmor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	slowdown = 2
	armor = list(melee = 80, bullet = 60, laser = 60, energy = 60, bomb = 50, bio = 100, rad = 20)
	flags = STOPSPRESSUREDMAGE
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS

/obj/item/clothing/suit/armor/t45bpowerarmor
	name = "NCR salvaged power armor"
	desc = "It's a set of T-45d power armor recovered by the NCR during the NCR-Brotherhood War.<br>NCR technicians have restored it to working order by replacing the back-mounted cylinders with a custom air conditioning module and stripping out the joint servomotors.<br>Due to the lack of servomotors in the limbs, this armor is so heavy that it feels like you're carrying a brahmin on your back!"
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	slowdown = 3
	armor = list(melee = 70, bullet = 50, laser = 50, energy = 50, bomb = 50, bio = 100, rad = 0)
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/suit/armor/bmetalarmor
	name = "metal armor"
	desc = "A set of sturdy metal armor made from various bits of scrap metal. It looks like it might impair movement"
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	slowdown = 1
	armor = list(melee = 60, bullet = 30, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/suit/armor/yankee
	name = "yankee raider armor"
	desc = "A set of armor made from football player protective wear. Together we play."
	icon_state = "yankee"
	item_state = "yankee"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list(melee = 60, bullet = 20, laser = 5, energy = 5, bomb = 5, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = CHEST|GROIN|LEGS|ARMS

/obj/item/clothing/suit/armor/supafly
	name = "supa-fly raider armor"
	desc = "Fabulous mutant powers were revealed to me the day I held aloft my bumper sword and said...<br>BY THE POWER OF NUKA-COLA, I AM RAIDER MAN!"
	icon_state = "supafly"
	item_state = "supafly"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list(melee = 50, bullet = 20, laser = 5, energy = 5, bomb = 5, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = CHEST|GROIN|LEGS|ARMS

/obj/item/clothing/suit/armor/leatherarmor
	name = "leather armor"
	desc = "A set of light armor made of boiled brahmin leather. It should protect you against your average 9mm peashooter, but anything higher caliber will punch through it like butter."
	icon_state = "leatherarmor"
	item_state = "leatherarmor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 40, bullet = 10, laser = 5, energy = 5, bomb = 5, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

//The following don't provide any armor, but Fallout related, and used as a storage. Don't want to put it into "misc", not to spread the content.

/obj/item/clothing/suit/armor/cowboybvest //Originally cowboy stuff by Nienhaus
	name = "brown vest"
	desc = "A brown vest, typically worn by wannabe cowboys and prospectors. It has a few pockets for tiny items."
	icon_state = "cowboybvest"
	item_state = "cowboybvest"
	allowed = list(/obj/item/weapon/stamp, /obj/item/weapon/reagent_containers/food/drinks/flask, /obj/item/weapon/melee, /obj/item/weapon/storage/box/matches, /obj/item/weapon/lighter, /obj/item/clothing/mask/cigarette, /obj/item/weapon/storage/fancy/cigarettes, /obj/item/device/flashlight, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/weapon/scalpel, /obj/item/weapon/surgical_drapes, /obj/item/weapon/cautery, /obj/item/weapon/hemostat, /obj/item/weapon/retractor)

/obj/item/clothing/suit/armor/cowboygvest
	name = "gray vest"
	desc = "A brown vest, typically worn by wannabe cowboys and prospectors. It has a few pockets for tiny items."
	icon_state = "cowboygvest"
	item_state = "cowboygvest"
	allowed = list(/obj/item/weapon/stamp, /obj/item/weapon/reagent_containers/food/drinks/flask, /obj/item/weapon/melee, /obj/item/weapon/storage/box/matches, /obj/item/weapon/lighter, /obj/item/clothing/mask/cigarette, /obj/item/weapon/storage/fancy/cigarettes, /obj/item/device/flashlight, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/weapon/scalpel, /obj/item/weapon/surgical_drapes, /obj/item/weapon/cautery, /obj/item/weapon/hemostat, /obj/item/weapon/retractor)

/obj/item/clothing/suit/armor/autumn //Based of Colonel Autumn's uniform.
	name = "tan trenchcoat"
	desc = "A resistant, tan trenchcoat, typically worn by pre-War generals."
	icon_state = "autumn"
	item_state = "autumn"
	body_parts_covered = CHEST|LEGS|FEET|ARMS
	armor = list(melee = 20, bullet = 20, laser = 5, energy = 5, bomb = 5, bio = 0, rad = 10)
	body_parts_covered = CHEST|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/kitchenknife, /obj/item/weapon/butch, /obj/item/weapon/stamp, /obj/item/weapon/reagent_containers/food/drinks/flask, /obj/item/weapon/melee, /obj/item/device/flash, /obj/item/weapon/storage/box/matches, /obj/item/weapon/lighter, /obj/item/clothing/mask/cigarette, /obj/item/weapon/storage/fancy/cigarettes, /obj/item/weapon/tank/emergency_oxygen,/obj/item/device/flashlight,/obj/item/weapon/gun/energy,/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing, /obj/item/weapon/scalpel, /obj/item/weapon/surgical_drapes, /obj/item/weapon/cautery, /obj/item/weapon/hemostat, /obj/item/weapon/retractor)

//US Colonial Marines?!

/obj/item/clothing/suit/armor/uscmc/m3ppa
	name = "M3 PPA"
	desc = "Pattern Personal Armor is a standard ballistic protective armor system employed by the United States Colonial Marine Corps.<br>It is designed to balance lightness and comfort with optimum protection."
	icon_state = "m3ppa"
	item_state = "m3ppa"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 40, bullet = 30, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/suit/armor/uscmc/m3ppamedic
	name = "M3 medic PPA"
	desc = "Pattern Personal Armor is a standard ballistic protective armor system employed by the United States Colonial Marine Corps.<br>It is designed to balance lightness and comfort with optimum protection."
	icon_state = "m3ppamedic"
	item_state = "m3ppamedic"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 40, bullet = 30, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/suit/armor/uscmc/m3ppaengineer
	name = "M3 engineer PPA"
	desc = "Pattern Personal Armor is a standard ballistic protective armor system employed by the United States Colonial Marine Corps.<br>It is designed to balance lightness and comfort with optimum protection."
	icon_state = "m3ppaengineer"
	item_state = "m3ppaengineer"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 40, bullet = 30, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/suit/armor/uscmc/m3ppaofficer
	name = "M3 officer PPA"
	desc = "Pattern Personal Armor is a standard ballistic protective armor system employed by the United States Colonial Marine Corps.<br>It is designed to balance lightness and comfort with optimum protection.<br>This variant is additionaly reinforced for protection of command personnel."
	icon_state = "m3ppaofficer"
	item_state = "m3ppaofficer"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 50, bullet = 40, laser = 30, energy = 30, bomb = 30, bio = 0, rad = 0)
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

//And fucking Star Craft here as well?!
/obj/item/clothing/suit/armor/battlecruiser
	name = "captain's coat"
	desc = "Battlecruiser operational!"
	icon_state = "battlecruiser"
	item_state = "battlecruiser"
	body_parts_covered = CHEST|LEGS|FEET|ARMS
	armor = list(melee = 20, bullet = 10, laser = 5, energy = 5, bomb = 5, bio = 0, rad = 0)
	body_parts_covered = CHEST|ARMS
	allowed = list(/obj/item/weapon/kitchenknife, /obj/item/weapon/butch, /obj/item/weapon/stamp, /obj/item/weapon/reagent_containers/food/drinks/flask, /obj/item/weapon/melee, /obj/item/device/flash, /obj/item/weapon/storage/box/matches, /obj/item/weapon/lighter, /obj/item/clothing/mask/cigarette, /obj/item/weapon/storage/fancy/cigarettes, /obj/item/weapon/tank/emergency_oxygen,/obj/item/device/flashlight,/obj/item/weapon/gun/energy,/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing, /obj/item/weapon/scalpel, /obj/item/weapon/surgical_drapes, /obj/item/weapon/cautery, /obj/item/weapon/hemostat, /obj/item/weapon/retractor)
