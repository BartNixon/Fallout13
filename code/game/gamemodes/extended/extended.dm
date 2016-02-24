/datum/game_mode/extended
	name = "extended"
	config_tag = "extended"
	required_players = 0

/datum/game_mode/announce()
	world << "<B>The current game mode is - Wasteland survival!</B>"
	world << "<B>Stay away from mutants, hunt down the raiders, join factions...</B>"
	world << "<B>Survive and role-play!</B>"

/datum/game_mode/extended/pre_setup()
	return 1

/datum/game_mode/extended/post_setup()
	..()