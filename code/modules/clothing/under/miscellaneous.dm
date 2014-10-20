/obj/item/clothing/under/pj/red
	name = "red pj's"
	desc = "Sleepwear."
	icon_state = "red_pyjamas"
	item_color = "red_pyjamas"
	item_state = "w_suit"

/obj/item/clothing/under/pj/blue
	name = "blue pj's"
	desc = "Sleepwear."
	icon_state = "blue_pyjamas"
	item_color = "blue_pyjamas"
	item_state = "w_suit"

/obj/item/clothing/under/scratch
	name = "white suit"
	desc = "A white suit, suitable for an excellent host"
	icon_state = "scratch"
	item_state = "scratch"
	item_color = "scratch"

/obj/item/clothing/under/sl_suit
	desc = "It's a very amish looking suit."
	name = "amish suit"
	icon_state = "sl_suit"
	item_color = "sl_suit"

/obj/item/clothing/under/roman
	name = "roman armor"
	desc = "An ancient Roman armor. Made of metallic strips and leather straps."
	icon_state = "roman"
	item_color = "roman"
	item_state = "armor"

/obj/item/clothing/under/waiter
	name = "waiter's outfit"
	desc = "It's a very smart uniform with a special pocket for tip."
	icon_state = "waiter"
	item_state = "waiter"
	item_color = "waiter"

/obj/item/clothing/under/rank/mailman
	name = "mailman's jumpsuit"
	desc = "<i>'Special delivery!'</i>"
	icon_state = "mailman"
	item_state = "b_suit"
	item_color = "mailman"

/obj/item/clothing/under/sexyclown
	name = "sexy-clown suit"
	desc = "It makes you look HONKable!"
	icon_state = "sexyclown"
	item_state = "sexyclown"
	item_color = "sexyclown"
	fitted = 0

/obj/item/clothing/under/rank/vice
	name = "vice officer's jumpsuit"
	desc = "It's the standard issue pretty-boy outfit, as seen on Holo-Vision."
	icon_state = "vice"
	item_state = "gy_suit"
	item_color = "vice"

/obj/item/clothing/under/rank/centcom_officer
	desc = "It's a jumpsuit worn by Centcom Officers."
	name = "\improper Centcom officer's jumpsuit"
	icon_state = "officer"
	item_state = "g_suit"
	item_color = "officer"

/obj/item/clothing/under/rank/centcom_commander
	desc = "It's a jumpsuit worn by Centcom's highest-tier Commanders."
	name = "\improper Centcom officer's jumpsuit"
	icon_state = "centcom"
	item_state = "dg_suit"
	item_color = "centcom"

/obj/item/clothing/under/space
	name = "\improper NASA jumpsuit"
	desc = "It has a NASA logo on it and is made of space-proofed materials."
	icon_state = "black"
	item_state = "bl_suit"
	item_color = "black"
	w_class = 4//bulky item
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.02
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST | GROIN | LEGS | ARMS //Needs gloves and shoes with cold protection to be fully protected.
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT

/obj/item/clothing/under/acj
	name = "administrative cybernetic jumpsuit"
	icon_state = "syndicate"
	item_state = "bl_suit"
	item_color = "syndicate"
	desc = "it's a cybernetically enhanced jumpsuit used for administrative duties."
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list(melee = 100, bullet = 100, laser = 100,energy = 100, bomb = 100, bio = 100, rad = 100)
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT

/obj/item/clothing/under/owl
	name = "owl uniform"
	desc = "A jumpsuit with owl wings. Photorealistic owl feathers! Twooooo!"
	icon_state = "owl"
	item_color = "owl"
	fitted = 0

/obj/item/clothing/under/johnny
	name = "johnny~~ jumpsuit"
	desc = "Johnny~~"
	icon_state = "johnny"
	item_color = "johnny"

/obj/item/clothing/under/rainbow
	name = "rainbow"
	desc = "rainbow"
	icon_state = "rainbow"
	item_state = "rainbow"
	item_color = "rainbow"

/obj/item/clothing/under/cloud
	name = "cloud"
	desc = "cloud"
	icon_state = "cloud"
	item_color = "cloud"

/obj/item/clothing/under/gimmick/rank/captain/suit
	name = "captain's suit"
	desc = "A green suit and yellow necktie. Exemplifies authority."
	icon_state = "green_suit"
	item_state = "dg_suit"
	item_color = "green_suit"

/obj/item/clothing/under/gimmick/rank/head_of_personnel/suit
	name = "head of personnel's suit"
	desc = "A teal suit and yellow necktie. An authoritative yet tacky ensemble."
	icon_state = "teal_suit"
	item_state = "g_suit"
	item_color = "teal_suit"

/obj/item/clothing/under/suit_jacket
	name = "black suit"
	desc = "A black suit and red tie. Very formal."
	icon_state = "black_suit"
	item_state = "bl_suit"
	item_color = "black_suit"

/obj/item/clothing/under/suit_jacket/really_black
	name = "executive suit"
	desc = "A formal black suit and red tie, intended for the station's finest."
	icon_state = "really_black_suit"
	item_state = "bl_suit"
	item_color = "black_suit"

/obj/item/clothing/under/suit_jacket/female
	name = "executive suit"
	desc = "A formal trouser suit for women, intended for the station's finest."
	icon_state = "black_suit_fem"
	item_state = "black_suit_fem"
	item_color = "black_suit_fem"

/obj/item/clothing/under/suit_jacket/red
	name = "red suit"
	desc = "A red suit and blue tie. Somewhat formal."
	icon_state = "red_suit"
	item_state = "r_suit"
	item_color = "red_suit"

/obj/item/clothing/under/suit_jacket/charcoal
	name = "charcoal suit"
	desc = "A charcoal suit and red tie. Very professional."
	icon_state = "charcoal_suit"
	item_state = "charcoal_suit"
	item_color = "charcoal_suit"

/obj/item/clothing/under/suit_jacket/navy
	name = "navy suit"
	desc = "A navy suit and red tie, intended for the station's finest."
	icon_state = "navy_suit"
	item_state = "navy_suit"
	item_color = "navy_suit"

/obj/item/clothing/under/suit_jacket/burgundy
	name = "burgundy suit"
	desc = "A burgundy suit and black tie. Somewhat formal."
	icon_state = "burgundy_suit"
	item_state = "burgundy_suit"
	item_color = "burgundy_suit"

/obj/item/clothing/under/suit_jacket/checkered
	name = "checkered suit"
	desc = "That's a very nice suit you have there. Shame if something were to happen to it, eh?"
	icon_state = "checkered_suit"
	item_state = "checkered_suit"
	item_color = "checkered_suit"

/obj/item/clothing/under/blackskirt
	name = "black skirt"
	desc = "A black skirt, very fancy!"
	icon_state = "blackskirt"
	item_color = "blackskirt"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = 0

/obj/item/clothing/under/schoolgirl
	name = "schoolgirl uniform"
	desc = "It's just like one of my Japanese animes!"
	icon_state = "schoolgirl"
	item_state = "schoolgirl"
	item_color = "schoolgirl"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = 0

/obj/item/clothing/under/overalls
	name = "laborer's overalls"
	desc = "A set of durable overalls for getting the job done."
	icon_state = "overalls"
	item_state = "lb_suit"
	item_color = "overalls"

/obj/item/clothing/under/pirate
	name = "pirate outfit"
	desc = "Yarr."
	icon_state = "pirate"
	item_state = "pirate"
	item_color = "pirate"

/obj/item/clothing/under/soviet
	name = "soviet uniform"
	desc = "For the Motherland!"
	icon_state = "soviet"
	item_state = "soviet"
	item_color = "soviet"

/obj/item/clothing/under/redcoat
	name = "redcoat uniform"
	desc = "Looks old."
	icon_state = "redcoat"
	item_state = "redcoat"
	item_color = "redcoat"

/obj/item/clothing/under/kilt
	name = "kilt"
	desc = "Includes shoes and plaid"
	icon_state = "kilt"
	item_state = "kilt"
	item_color = "kilt"
	body_parts_covered = CHEST|GROIN|FEET
	fitted = 0

/obj/item/clothing/under/sexymime
	name = "sexy mime outfit"
	desc = "The only time when you DON'T enjoy looking at someone's rack."
	icon_state = "sexymime"
	item_state = "sexymime"
	item_color = "sexymime"
	body_parts_covered = CHEST|GROIN|LEGS
	fitted = 0

/obj/item/clothing/under/gladiator
	name = "gladiator uniform"
	desc = "Are you not entertained? Is that not why you are here?"
	icon_state = "gladiator"
	item_state = "gladiator"
	item_color = "gladiator"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = 0

/obj/item/clothing/under/sundress
	name = "sundress"
	desc = "Makes you want to frolic in a field of daisies."
	icon_state = "sundress"
	item_state = "sundress"
	item_color = "sundress"
	body_parts_covered = CHEST|GROIN
	fitted = 0

/obj/item/clothing/under/captainformal
	name = "captain's formal uniform"
	desc = "A captain's formal-wear, for special occasions."
	icon_state = "captain_formal"
	item_state = "by_suit"
	item_color = "captain_formal"

/obj/item/clothing/under/hosformalmale
	name = "head of security's formal uniform"
	desc = "A male head of security's formal-wear, for special occasions."
	icon_state = "hos_formal_male"
	item_state = "r_suit"
	item_color = "hos_formal_male"

/obj/item/clothing/under/hosformalfem
	name = "head of security's formal uniform"
	desc = "A female head of security's formal-wear, for special occasions."
	icon_state = "hos_formal_fem"
	item_state = "r_suit"
	item_color = "hos_formal_fem"
	fitted = 0

/obj/item/clothing/under/assistantformal
	name = "assistant's formal uniform"
	desc = "An assistant's formal-wear. Why an assistant needs formal-wear is still unknown."
	icon_state = "assistant_formal"
	item_state = "gy_suit"
	item_color = "assistant_formal"

/obj/item/clothing/under/blacktango
	name = "black tango dress"
	desc = "Filled with latin fire."
	icon_state = "black_tango"
	item_state = "wcoat"
	item_color = "black_tango"
	fitted = 0

//The following wears were sprited and coded by BartNixon, Nienhaus and MrSnapwalk.

/obj/item/clothing/under/vault13 //Goonstation? Never heard of it!
	name = "standard Vault 13 jumpsuit"
	desc = "The regulation clothing carried by the vault dwellers of Vault-Tec vaults. It's made of leather."
	icon_state = "vault13"
	item_state = "vault13"
	item_color = "vault13"

/obj/item/clothing/under/vault13ut
	name = "the Vault utility jumpsuit"
	desc = "A modified version of the standard Vault Jumpsuit, designed for manual labor and routine repair. It's made of leather."
	icon_state = "vault13ut"
	item_state = "vault13ut"
	item_color = "vault13ut"

/obj/item/clothing/under/relaxedwearm
	name = "pre-War male relaxedwear"
	desc = "It's a dirty long-sleeve blue shirt with a greenish brown sweater-vest and slacks."
	icon_state = "relaxedwearm"
	item_state = "relaxedwearm"
	item_color = "relaxedwearm"

/obj/item/clothing/under/springm
	name = "pre-War male spring outfit"
	desc = "It's a dirty long-sleeve beige shirt with a red sweater-vest and brown trousers"
	icon_state = "springm"
	item_state = "springm"
	item_color = "springm"

/obj/item/clothing/under/bennys //Benny's suit from Fallout: New Vegas. But Benny was just a kid back in 2255, so it's just a fancy suit for you.
	name = "fancy suit"
	desc = "It's a black and white buffalo plaid suit. Fancy!"
	icon_state = "bennys"
	item_state = "bennys"
	item_color = "bennys"

/obj/item/clothing/under/enclaveo
	name = "the Enclave officer uniform"
	desc = "It's a standard Enclave officer apparel.<br>The outer layer is made of a sturdy material designed to withstand the harsh conditions of the wasteland."
	icon_state = "enclaveo"
	item_state = "enclaveo"
	item_color = "enclaveo"

/obj/item/clothing/under/mercam
	name = "male merc adventurer outfit"
	desc = "It's a large leather jacket with torn-off sleeves, a red sweater underneath, a brown bandolier, a pair of brown pants.<br>A necklace with three teeth on it make up this suit of clothing."
	icon_state = "mercam"
	item_state = "mercam"
	item_color = "mercam"

/obj/item/clothing/under/mercaf
	name = "female merc adventurer outfit"
	desc = "It's a large leather jacket with torn-off sleeves, a bare midriff red/black top, a pair of brown pants.<br>There is also a leather belt and a leather strap on the top."
	icon_state = "mercaf"
	item_state = "mercaf"
	item_color = "mercaf"

/obj/item/clothing/under/roving
	name = "roving trader outfit "
	desc = "It's an outfit commonly worn by various wastelanders, but it still looks pretty badass!"
	icon_state = "roving"
	item_state = "roving"
	item_color = "roving"

/obj/item/clothing/under/doctor
	name = "wasteland doctor fatigues"
	desc = "It's a white t-shirt, a small brown satchel bag and brown trousers with pouches attached to the belt."
	icon_state = "doctor"
	item_state = "doctor"
	item_color = "doctor"
	allowed = list(/obj/item/weapon/scalpel, /obj/item/weapon/surgical_drapes, /obj/item/weapon/cautery, /obj/item/weapon/hemostat, /obj/item/weapon/retractor)

/obj/item/clothing/under/doomsday
	name = "doomsday cult outfit"
	desc = "It's a grimy pre-war dress shirt, tie, and slacks, with some makeshift pauldrons made of scrap metal attached with leather straps."
	icon_state = "doomsday"
	item_state = "doomsday"
	item_color = "doomsday"

/obj/item/clothing/under/shiny //Firefly, yay!
	name = "shiny outfit"
	desc = "Some space cowboy should be wearing this, because it's shiny!"
	icon_state = "shiny"
	item_state = "shiny"
	item_color = "shiny"

/obj/item/clothing/under/cowboyb //Originally cowboy and mafia stuff by Nienhaus
	name = "dusty prospector outfit"
	desc = "It's a white shirt with brass buttons and a pair of brown trousers, commonly worn by prospectors."
	icon_state = "cowboyb"
	item_state = "cowboyb"
	item_color = "cowboyb"

/obj/item/clothing/under/cowboyg
	name = "well-heeled prospector outfit"
	desc = "It's a white shirt with black buttons and a pair of gray trousers, commonly worn by prospectors."
	icon_state = "cowboyg"
	item_state = "cowboyg"
	item_color = "cowboyg"

/obj/item/clothing/under/tangambler
	name = "fancy gambler suit"
	desc = "A tan suit with a yellow tie. Smart, but casual amongst gamblers."
	icon_state = "tangambler"
	item_state = "tangambler"
	item_color = "tangambler"

/obj/item/clothing/under/suegambler
	name = "sharp gambler suit"
	desc = "If I were you, I wouldn't play poker with the one who wears this."
	icon_state = "suegambler"
	item_state = "suegambler"
	item_color = "suegambler"

/obj/item/clothing/under/flapper
	name = "flapper dress"
	desc = "It's an outfit commonly worn by old-time prostitutes from around New Reno, but can be seen all over the Wasteland."
	icon_state = "flapper"
	item_state = "flapper"
	item_color = "flapper"

//Fallout 13 goes rampage at this point. The following uniforms provide decent deffence bonus.

/obj/item/clothing/under/recon
	name = "recon armor"
	desc = "Intended to serve as the under-armor of the T-45d power armor, the recon armor is a vacuum-sealed asbestos jumpsuit covering the entire body.<br>Attached to it is the interface and mounts for the power armor.<br>Its purpose is twofold - it allows the user to actually operate the armor and protect soft tissue from moving parts inside the suit and heat."
	icon_state = "recon"
	item_state = "recon"
	item_color = "recon"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS|HEAD
	flags = BLOCKHAIR //It doesn't block the hair. What I did wrong?
	armor = list(melee = 40, bullet = 30, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HEAD
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HEAD

/obj/item/clothing/under/agent47
	name = "the Suit"
	desc = "It was made by a blind man named Tommy, who runed a tailor shop in Chicago."
	icon_state = "agent47"
	item_state = "agent47"
	item_color = "agent47"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list(melee = 20, bullet = 10, laser = 10,energy = 10, bomb = 50, bio = 0, rad = 0)