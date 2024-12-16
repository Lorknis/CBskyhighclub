/obj/item/borg_chameleon
	name = "cyborg chameleon projector"
	icon = 'icons/obj/device.dmi'
	icon_state = "shield0"
	flags_1 = CONDUCT_1
	item_flags = NOBLUDGEON
	inhand_icon_state = "electronic"
	lefthand_file = 'icons/mob/inhands/misc/devices_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/devices_righthand.dmi'
	w_class = WEIGHT_CLASS_SMALL
	var/friendlyName
	var/savedName
	var/active = FALSE
	var/activationCost = 300
	var/activationUpkeep = 50
	var/disguise = null
	var/disguise_icon_override = null
	var/disguise_pixel_offset = null
	var/mob/listeningTo
	var/static/list/signalCache = list( // list here all signals that should break the camouflage
			COMSIG_PARENT_ATTACKBY,
			COMSIG_ATOM_ATTACK_HAND,
			COMSIG_MOVABLE_IMPACT_ZONE,
			COMSIG_ATOM_BULLET_ACT,
			COMSIG_ATOM_EX_ACT,
			COMSIG_ATOM_FIRE_ACT,
			COMSIG_ATOM_EMP_ACT,
			)
	var/mob/living/silicon/robot/user // needed for process()
	var/animation_playing = FALSE

	var/list/engymodels = list("Default", "Default - Treads", "Heavy", "Sleek", "Marina", "Can", "Spider", "Loader","Handy", "Pup Dozer", "Vale")


/obj/item/borg_chameleon/Initialize()
	. = ..()
	friendlyName = pick(GLOB.ai_names)

/obj/item/borg_chameleon/Destroy()
	listeningTo = null
	return ..()

/obj/item/borg_chameleon/dropped(mob/user)
	. = ..()
	disrupt(user)

/obj/item/borg_chameleon/equipped(mob/user)
	. = ..()
	disrupt(user)

/obj/item/borg_chameleon/attack_self(mob/living/silicon/robot/user)
	if (user && user.cell && user.cell.charge >  activationCost)
		if (isturf(user.loc))
			toggle(user)
		else
			to_chat(user, span_warning("I can't use [src] while inside something!"))
	else
		to_chat(user, span_warning("I need at least [activationCost] charge in your cell to use [src]!"))

/obj/item/borg_chameleon/proc/toggle(mob/living/silicon/robot/user)
	if(active)
		playsound(src, 'sound/effects/pop.ogg', 100, TRUE, -6)
		to_chat(user, span_notice("I deactivate \the [src]."))
		deactivate(user)
	else
		if(animation_playing)
			to_chat(user, span_notice("\the [src] is recharging."))
			return
		var/borg_icon = input(user, "Select an icon!", "Robot Icon", null) as null|anything in engymodels
		if(!borg_icon)
			return FALSE
		switch(borg_icon)
			if("Default")
				disguise = "engineer"
				disguise_icon_override = 'icons/mob/robots.dmi'
			if("Default - Treads")
				disguise = "engi-tread"
				disguise_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			if("Loader")
				disguise = "loaderborg"
				disguise_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			if("Handy")
				disguise = "handyeng"
				disguise_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			if("Sleek")
				disguise = "sleekeng"
				disguise_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			if("Can")
				disguise = "caneng"
				disguise_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			if("Marina")
				disguise = "marinaeng"
				disguise_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			if("Spider")
				disguise = "spidereng"
				disguise_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			if("Heavy")
				disguise = "heavyeng"
				disguise_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			if("Pup Dozer")
				disguise = "pupdozer"
				disguise_icon_override = 'modular_citadel/icons/mob/widerobot.dmi'
				disguise_pixel_offset = -16
			if("Vale")
				disguise = "valeeng"
				disguise_icon_override = 'modular_citadel/icons/mob/widerobot.dmi'
				disguise_pixel_offset = -16
		animation_playing = TRUE
		to_chat(user, span_notice("I activate \the [src]."))
		playsound(src, 'sound/effects/seedling_chargeup.ogg', 100, TRUE, -6)
		apply_wibbly_filters(user)
		if (do_after(user, 50, target=user) && user.cell.use(activationCost))
			playsound(src, 'sound/effects/bamf.ogg', 100, TRUE, -6)
			to_chat(user, span_notice("I am now disguised as the US Government engineering borg \"[friendlyName]\"."))
			activate(user)
		else
			to_chat(user, span_warning("The chameleon field fizzles."))
			do_sparks(3, FALSE, user)
		remove_wibbly_filters(user)
		animation_playing = FALSE

/obj/item/borg_chameleon/process()
	if (user)
		if (!user.cell || !user.cell.use(activationUpkeep))
			disrupt(user)
	else
		return PROCESS_KILL

/obj/item/borg_chameleon/proc/activate(mob/living/silicon/robot/user)
	START_PROCESSING(SSobj, src)
	src.user = user
	savedName = user.name
	user.name = friendlyName
	user.module.cyborg_base_icon = disguise
	user.module.cyborg_icon_override = disguise_icon_override
	user.bubble_icon = "robot"
	active = TRUE
	user.update_icons()

	if(listeningTo == user)
		return
	if(listeningTo)
		UnregisterSignal(listeningTo, signalCache)
	RegisterSignal(user, signalCache,PROC_REF(disrupt))
	listeningTo = user

/obj/item/borg_chameleon/proc/deactivate(mob/living/silicon/robot/user)
	STOP_PROCESSING(SSobj, src)
	if(listeningTo)
		UnregisterSignal(listeningTo, signalCache)
		listeningTo = null
	do_sparks(5, FALSE, user)
	user.name = savedName
	user.module.cyborg_base_icon = initial(user.module.cyborg_base_icon)
	user.module.cyborg_icon_override = 'icons/mob/robots.dmi'
	user.bubble_icon = "syndibot"
	active = FALSE
	user.update_icons()
	src.user = user

/obj/item/borg_chameleon/proc/disrupt(mob/living/silicon/robot/user)
	if(active)
		to_chat(user, span_danger("My chameleon field deactivates."))
		deactivate(user)