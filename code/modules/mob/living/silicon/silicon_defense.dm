/mob/living/silicon/KnockToFloor(disarm_items = FALSE, silent = TRUE, updating = TRUE)
	return

/mob/living/silicon/grippedby(mob/living/user, instant = FALSE)
	return //can't upgrade a simple pull into a more aggressive grab.

/mob/living/silicon/get_ear_protection()//no ears
	return 2

/mob/living/silicon/attack_alien(mob/living/carbon/alien/humanoid/M)
	. = ..()
	if(!.) // the attack was blocked or was help/grab intent
		return
	if(M.a_intent == INTENT_HARM)
		var/damage = 20
		if (prob(90))
			log_combat(M, src, "attacked")
			playsound(loc, 'sound/weapons/slash.ogg', 25, 1, -1)
			visible_message(span_danger("[M] has slashed at [src]!"), \
							span_userdanger("[M] has slashed at you!"), target = M, \
							target_message = span_danger("I have slashed at [src]!"))
			if(prob(8))
				flash_act(affect_silicon = 1)
			log_combat(M, src, "attacked")
			adjustBruteLoss(damage)
			updatehealth()
		else
			playsound(loc, 'sound/weapons/slashmiss.ogg', 25, 1, -1)
			visible_message(span_danger("[M] take a swipe at [src]!"), \
							span_userdanger("[M] take a swipe at you!"), target = M, \
							target_message = span_danger("I take a swipe at [src]!"))

/mob/living/silicon/attack_animal(mob/living/simple_animal/M)
	. = ..()
	if(.)
		var/damage = .
		if(prob(damage))
			for(var/mob/living/N in buckled_mobs)
				N.DefaultCombatKnockdown(20)
				unbuckle_mob(N)
				N.visible_message(span_boldwarning("[N] is knocked off of [src] by [M]!"),
					span_boldwarning("I am knocked off of [src] by [M]!"))
		switch(M.melee_damage_type)
			if(BRUTE)
				adjustBruteLoss(damage)
			if(BURN)
				adjustFireLoss(damage)
			if(TOX)
				adjustToxLoss(damage)
			if(OXY)
				adjustOxyLoss(damage)
			if(CLONE)
				adjustCloneLoss(damage)
			if(STAMINA)
				adjustStaminaLoss(damage)

/mob/living/silicon/attack_paw(mob/living/user)
	return attack_hand(user)

/mob/living/silicon/attack_hulk(mob/living/carbon/human/user, does_attack_animation = FALSE)
	if(user.a_intent == INTENT_HARM)
		. = ..(user, TRUE)
		if(.)
			return
		adjustBruteLoss(rand(10, 15))
		playsound(loc, "punch", 25, 1, -1)
		visible_message(span_danger("[user] has punched [src]!"), \
				span_userdanger("[user] has punched you!"), target = user, \
				target_message = span_danger("I have punched [src]!"))
		return TRUE
	return FALSE

/mob/living/silicon/on_attack_hand(mob/living/carbon/human/M)
	. = ..()
	if(.) //the attack was blocked
		return
	switch(M.a_intent)
		if (INTENT_HELP)
			M.visible_message("[M] pets [src].", \
							span_notice("I pet [src]."), target = src,
							target_message = "[M] pets you.")
		if(INTENT_GRAB)
			grabbedby(M)
		else
			M.do_attack_animation(src, ATTACK_EFFECT_PUNCH)
			playsound(src.loc, 'sound/effects/bang.ogg', 10, 1)
			visible_message(span_danger("[M] punches [src], but doesn't leave a dent."), \
				span_warning("[M] punches you, but doesn't leave a dent."), null, COMBAT_MESSAGE_RANGE, null, M,
				span_danger("I punch [src], but don't leave a dent."))

/mob/living/silicon/attack_drone(mob/living/simple_animal/drone/M)
	if(M.a_intent == INTENT_HARM)
		return
	return ..()

/mob/living/silicon/electrocute_act(shock_damage, source, siemens_coeff = 1, flags = NONE)
	if(buckled_mobs)
		for(var/mob/living/M in buckled_mobs)
			unbuckle_mob(M)
			M.electrocute_act(shock_damage/100, source, siemens_coeff, flags)	//Hard metal shell conducts!
	return 0 //So borgs they don't die trying to fix wiring

/mob/living/silicon/emp_act(severity)
	. = ..()
	to_chat(src, span_danger("Warning: Electromagnetic pulse detected."))
	if(. & EMP_PROTECT_SELF)
		return
	src.take_bodypart_damage(severity/5)
	to_chat(src, span_userdanger("*BZZZT*"))
	for(var/mob/living/M in buckled_mobs)
		if(prob(severity/2))
			unbuckle_mob(M)
			M.DefaultCombatKnockdown(40)
			M.visible_message(span_boldwarning("[M] is thrown off of [src]!"),
				span_boldwarning("I am thrown off of [src]!"))
	flash_act(affect_silicon = 1)

/mob/living/silicon/bullet_act(obj/item/projectile/P, def_zone)
	var/totaldamage = P.damage
	if(P.original != src || P.firer != src) //try to block or reflect the bullet, can't do so when shooting oneself
		var/list/returnlist = list()
		var/returned = mob_run_block(P, P.damage, "the [P.name]", ATTACK_TYPE_PROJECTILE, P.armour_penetration, P.firer, def_zone, returnlist)
		if(returned & BLOCK_SHOULD_REDIRECT)
			handle_projectile_attack_redirection(P, returnlist[BLOCK_RETURN_REDIRECT_METHOD])
		if(returned & BLOCK_REDIRECTED)
			return BULLET_ACT_FORCE_PIERCE
		if(returned & BLOCK_SUCCESS)
			P.on_hit(src, returnlist[BLOCK_RETURN_PROJECTILE_BLOCK_PERCENTAGE], def_zone)
			return BULLET_ACT_BLOCK
		totaldamage = block_calculate_resultant_damage(totaldamage, returnlist)
	if((P.damage_type == BRUTE || P.damage_type == BURN))
		adjustBruteLoss(totaldamage)
	if((P.damage >= 10) || P.stun || P.knockdown || (P.stamina >= 20))
		for(var/mob/living/M in buckled_mobs)
			M.visible_message(span_boldwarning("[M] is knocked off of [src] by the [P]!"),
				span_boldwarning("I am knocked off of [src] by the [P]!"))
			unbuckle_mob(M)
			M.DefaultCombatKnockdown(40)
	P.on_hit(src, 0, def_zone)
	return BULLET_ACT_HIT

/mob/living/silicon/flash_act(intensity = 1, override_blindness_check = 0, affect_silicon = 0, visual = 0, type = /atom/movable/screen/fullscreen/flash/static)
	if(affect_silicon)
		return ..()
