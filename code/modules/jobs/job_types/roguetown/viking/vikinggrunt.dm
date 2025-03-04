
/datum/job/roguetown/vikinggrunt
	title = "Northmen Berserkir"
	f_title = "Northmen Ulfhednar"
	flag = VIKINGGRUNT
	department_flag = VIKING
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	allowed_patrons = list(/datum/patron/inhumen/graggar)
	tutorial = "A hardened warrior from the Frost Lands. Follow the leader of your warband, and serve Graggar well. May the black sun darken the sky for all time!"
	whitelist_req = FALSE
	outfit = /datum/outfit/job/roguetown/vikinggrunt

	display_order = JDO_VIKINGGRUNT
	min_pq = 2
	max_pq = null
	cmode_music = 'sound/music/combat_viking.ogg'

/datum/outfit/job/roguetown/vikinggrunt/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/graggaritehelmet
	backr = /obj/item/storage/backpack/rogue/satchel
	beltl = /obj/item/rogueweapon/huntingknife/idagger/steel
	r_hand = /obj/item/rogueweapon/shield/wood/crafted
	gloves = /obj/item/clothing/gloves/roguetown/graggaritegauntlets
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
	neck = /obj/item/storage/belt/rogue/pouch/coins/rich
	pants = /obj/item/clothing/under/roguetown/chainlegs/iron
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/rogueweapon/stoneaxe/battle
	armor = /obj/item/clothing/suit/roguetown/armor/plate/half/graggaritearmor
	shoes = /obj/item/clothing/shoes/roguetown/boots/graggariteboots
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE) // Chieftess gets nearly same skills as guard.
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2 , TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 3 , TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/axes, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/fishing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/butchering, 3, TRUE)

		H.change_stat("strength", 4)
		H.change_stat("intelligence", -2)
		H.change_stat("constitution", 4)
		H.change_stat("endurance", 3)
		H.change_stat("speed", -2)


