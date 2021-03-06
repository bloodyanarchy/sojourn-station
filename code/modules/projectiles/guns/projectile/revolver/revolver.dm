/obj/item/weapon/gun/projectile/revolver
	name = "\"Minotaur\" magnum revolver"
	desc = "The \"H&S\" \"Minotaur\" is a revolver of choice when you absolutely, positively need to make a fist-sized hole in someone, but can't afford to do it in style. Uses .40 Magnum bullets... always wanting more."
	icon = 'icons/obj/guns/projectile/revolver.dmi'
	icon_state = "revolver"
	item_state = "revolver"
	caliber = CAL_MAGNUM
	force = WEAPON_FORCE_NORMAL
	can_dual = 1
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	handle_casings = CYCLE_CASINGS
	max_shells = 6
	var/drawChargeMeter = TRUE
	ammo_type = /obj/item/ammo_casing/magnum
	unload_sound 	= 'sound/weapons/guns/interact/rev_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/rev_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/rev_cock.ogg'
	fire_sound = 'sound/weapons/guns/fire/revolver_fire.ogg'
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_PLASTIC = 8)
	price_tag = 2000
	var/chamber_offset = 0 //how many empty chambers in the cylinder until you hit a round
	fire_delay = 3 //all revolvers can fire faster, but have huge recoil
	damage_multiplier = 1.75
	armor_penetration = 0.65 // Insanely powerful handcannon, but worthless against heavy armor
	recoil_buildup = 50
	one_hand_penalty = 20

/obj/item/weapon/gun/projectile/revolver/verb/spin_cylinder()
	set name = "Spin cylinder"
	set desc = "Fun when you're bored out of your skull."
	set category = "Object"

	chamber_offset = 0
	visible_message(SPAN_WARNING("\The [usr] spins the cylinder of \the [src]!"), \
	SPAN_NOTICE("You hear something metallic spin and click."))
	playsound(src.loc, 'sound/weapons/revolver_spin.ogg', 100, 1)
	loaded = shuffle(loaded)
	if(rand(1,max_shells) > loaded.len)
		chamber_offset = rand(0,max_shells - loaded.len)

/obj/item/weapon/gun/projectile/revolver/consume_next_projectile()
	if(chamber_offset)
		chamber_offset--
		return
	return ..()

/obj/item/weapon/gun/projectile/revolver/load_ammo(var/obj/item/A, mob/user)
	chamber_offset = 0
	return ..()

/obj/item/weapon/gun/projectile/revolver/proc/update_charge()
	if(!drawChargeMeter)
		return
	cut_overlays()
	if(loaded.len==0)
		add_overlay("[icon_state]_off")
	else
		add_overlay("[icon_state]_on")


/obj/item/weapon/gun/projectile/revolver/update_icon()
	update_charge()
