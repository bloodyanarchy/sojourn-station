/obj/item/clothing/head/hardhat
	name = "yellow hard hat"
	desc = "Yellow headgear for dangerous working conditions. Comes with a built-in light."
	icon_state = "hardhat0_yellow"
	action_button_name = "Toggle Headlamp"
	brightness_on = 4 //luminosity when on
	light_overlay = "hardhat_light"
	armor = list(
		melee = 10,
		bullet = 10,
		energy = 10,
		bomb = 10,
		bio = 10,
		rad = 25
	)
	siemens_coefficient = 0.8
	w_class = ITEM_SIZE_NORMAL
	price_tag = 30

/obj/item/clothing/head/hardhat/orange
	name = "orange hard hat"
	desc = "Orange headgear for dangerous working conditions. Comes with a built-in light."
	icon_state = "hardhat0_orange"

/obj/item/clothing/head/firefighter
	icon_state = "hardhat0_red"
	name = "firefighter helmet"
	desc = "Fire-resistant red headgear worn for firefighting purposes."
	item_flags = STOPPRESSUREDAMAGE
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/head/firefighter/chief
	name = "firefighter chief helmet"
	desc = "Fire-resistant white headgear worn for firefighting command purposes."
	icon_state = "hardhat0_white"
	item_flags = STOPPRESSUREDAMAGE
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	action_button_name = "Toggle Headlamp"
	brightness_on = 5 //luminosity when on
	light_overlay = "hardhat_light"
	armor = list(
		melee = 20,
		bullet = 15,
		energy = 10,
		bomb = 15,
		bio = 10,
		rad = 25
	)
	siemens_coefficient = 0.8
	w_class = ITEM_SIZE_NORMAL
	price_tag = 100

/obj/item/clothing/head/hardhat/dblue
	name = "blue hard hat"
	desc = "Blue headgear for dangerous working conditions. Comes with a built-in light."
	icon_state = "hardhat0_dblue"
