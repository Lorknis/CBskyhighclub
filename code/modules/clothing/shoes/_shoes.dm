/obj/item/clothing/shoes
	name = "shoes"
	icon = 'icons/obj/clothing/shoes.dmi'
	desc = "Comfortable-looking shoes."
	gender = PLURAL //Carn: for grammarically correct text-parsing
	w_class = WEIGHT_CLASS_SMALL
	var/chained = 0
	armor = ARMOR_VALUE_CLOTHES

	body_parts_covered = FEET
	slot_flags = INV_SLOTBIT_FEET

	permeability_coefficient = 0.5
	slowdown = SHOES_SLOWDOWN
	var/blood_state = BLOOD_STATE_NOT_BLOODY
	var/list/bloody_shoes = list(BLOOD_STATE_BLOOD = 0, BLOOD_STATE_OIL = 0, BLOOD_STATE_NOT_BLOODY = 0)
	var/offset = 0
	var/equipped_before_drop = FALSE

	mutantrace_variation = STYLE_DIGITIGRADE
	var/last_bloodtype = ""	//used to track the last bloodtype to have graced these shoes; makes for better performing footprint shenanigans
	var/last_blood_DNA = ""	//same as last one
	var/last_blood_color = ""

	///Whether these shoes have laces that can be tied/untied
	var/can_be_tied = TRUE
	///Are we currently tied? Can either be SHOES_UNTIED, SHOES_TIED, or SHOES_KNOTTED
	var/tied = SHOES_TIED
	///How long it takes to lace/unlace these shoes
	var/lace_time = 5 SECONDS
	///any alerts we have active
	var/atom/movable/screen/alert/our_alert

/obj/item/clothing/shoes/ComponentInitialize()
	. = ..()
	RegisterSignal(src, COMSIG_COMPONENT_CLEAN_ACT, TYPE_PROC_REF(/atom,clean_blood))

/obj/item/clothing/shoes/examine(mob/user)
	. = ..()

	if(!ishuman(loc))
		return ..()
	if(tied == SHOES_UNTIED)
		. += "The shoelaces are untied."
	else if(tied == SHOES_KNOTTED)
		. += "The shoelaces are all knotted together."

/obj/item/clothing/shoes/transfer_blood_dna(list/blood_dna, diseases)
	..()
	if(blood_dna.len)
		last_bloodtype = blood_dna[blood_dna[blood_dna.len]]//trust me this works
		last_blood_DNA = blood_dna[blood_dna.len]
		last_blood_color = blood_dna["color"]

/obj/item/clothing/shoes/worn_overlays(isinhands = FALSE, icon_file, used_state, style_flags = NONE)
	. = ..()
	if(!isinhands)
		var/bloody = FALSE
		if(blood_DNA)
			bloody = TRUE
		else
			bloody = bloody_shoes[BLOOD_STATE_BLOOD]

		if(damaged_clothes)
			. += mutable_appearance('icons/effects/item_damage.dmi', "damagedshoe")
		if(bloody)
			var/file2use = style_flags & STYLE_DIGITIGRADE ? 'icons/mob/clothing/feet_digi.dmi' : 'icons/effects/blood.dmi'
			. += mutable_appearance(file2use, "shoeblood", color = blood_DNA_to_color())

/obj/item/clothing/shoes/equipped(mob/user, slot)
	. = ..()

	if(offset && slot_flags & slotdefine2slotbit(slot))
		user.pixel_y += offset
		worn_y_dimension -= (offset * 2)
		user.update_inv_shoes()
		equipped_before_drop = TRUE
	if(can_be_tied && tied == SHOES_UNTIED)
		our_alert = user.throw_alert("shoealert", /atom/movable/screen/alert/shoes/untied)
		RegisterSignal(src, COMSIG_SHOES_STEP_ACTION,PROC_REF(check_trip), override=TRUE)

/obj/item/clothing/shoes/proc/restore_offsets(mob/user)
	equipped_before_drop = FALSE
	user.pixel_y -= offset
	worn_y_dimension = world.icon_size

/obj/item/clothing/shoes/dropped(mob/user)
	if(our_alert && (our_alert.mob_viewer == user))
		user.clear_alert("shoealert")
	if(offset && equipped_before_drop)
		restore_offsets(user)
	. = ..()

/obj/item/clothing/shoes/update_clothes_damaged_state()
	..()
	if(ismob(loc))
		var/mob/M = loc
		M.update_inv_shoes()

/obj/item/clothing/shoes/clean_blood(datum/source, strength)
	. = ..()
	bloody_shoes = list(BLOOD_STATE_BLOOD = 0, BLOOD_STATE_OIL = 0, BLOOD_STATE_NOT_BLOODY = 0)
	blood_state = BLOOD_STATE_NOT_BLOODY
	if(ismob(loc))
		var/mob/M = loc
		M.update_inv_shoes()

/obj/item/proc/negates_gravity()
	return FALSE

/**
 * adjust_laces adjusts whether our shoes (assuming they can_be_tied) and tied, untied, or knotted
 *
 * In addition to setting the state, it will deal with getting rid of alerts if they exist, as well as registering and unregistering the stepping signals
 *
 * Arguments:
 * *
 * * state: SHOES_UNTIED, SHOES_TIED, or SHOES_KNOTTED, depending on what you want them to become
 * * user: used to check to see if we're the ones unknotting our own laces
 */
/obj/item/clothing/shoes/proc/adjust_laces(state, mob/user)
	if(!can_be_tied)
		return

	var/mob/living/carbon/human/our_guy
	if(ishuman(loc))
		our_guy = loc

	tied = state
	if(tied == SHOES_TIED)
		if(our_guy)
			our_guy.clear_alert("shoealert")
		UnregisterSignal(src, COMSIG_SHOES_STEP_ACTION)
	else
		if(tied == SHOES_UNTIED && our_guy && user == our_guy)
			our_alert = our_guy.throw_alert("shoealert", /atom/movable/screen/alert/shoes/untied) // if we're the ones unknotting our own laces, of course we know they're untied
		RegisterSignal(src, COMSIG_SHOES_STEP_ACTION,PROC_REF(check_trip), override=TRUE)

/**
 * handle_tying deals with all the actual tying/untying/knotting, inferring your intent from who you are in relation to the state of the laces
 *
 * If you're the wearer, you want them to move towards tied-ness (knotted -> untied -> tied). If you're not, you're pranking them, so you're moving towards knotted-ness (tied -> untied -> knotted)
 *
 * Arguments:
 * *
 * * user: who is the person interacting with the shoes?
 */
/obj/item/clothing/shoes/proc/handle_tying(mob/user)
	///our_guy here is the wearer, if one exists (and he must exist, or we don't care)
	var/mob/living/carbon/human/our_guy = loc
	if(!istype(our_guy))
		return

	if(!in_range(user, our_guy))
		to_chat(user, span_warning("I am not close enough to interact with [src]'s laces!"))
		return

	if(user == loc && tied != SHOES_TIED) // if they're our own shoes, go tie-wards
		if(INTERACTING_WITH(user, our_guy))
			to_chat(user, span_warning("You're already interacting with [src]!"))
			return
		user.visible_message(span_notice("[user] begins [tied ? "unknotting" : "tying"] the laces of [user.p_their()] [src.name]."), span_notice("I begin [tied ? "unknotting" : "tying"] the laces of your [src.name]..."))

		if(do_after(user, lace_time, needhand=TRUE, target=our_guy, extra_checks=CALLBACK(src,PROC_REF(still_shoed), our_guy)))
			to_chat(user, span_notice("I [tied ? "unknot" : "tie"] the laces of your [src.name]."))
			if(tied == SHOES_UNTIED)
				adjust_laces(SHOES_TIED, user)
			else
				adjust_laces(SHOES_UNTIED, user)

	else // if they're someone else's shoes, go knot-wards
		var/mob/living/L = user
		if(istype(L) && (L.mobility_flags & MOBILITY_STAND))
			to_chat(user, span_warning("I must be on the floor to interact with [src]!"))
			return
		if(tied == SHOES_KNOTTED)
			to_chat(user, span_warning("The laces on [loc]'s [src.name] are already a hopelessly tangled mess!"))
			return
		if(INTERACTING_WITH(user, our_guy))
			to_chat(user, span_warning("You're already interacting with [src]!"))
			return

		var/mod_time = lace_time
		to_chat(user, span_notice("I quietly set to work [tied ? "untying" : "knotting"] [loc]'s [src.name]..."))
		if(HAS_TRAIT(user, TRAIT_CLUMSY)) // based clowns trained their whole lives for this
			mod_time *= 0.75

		if(do_after(user, mod_time, needhand=TRUE, target=our_guy, extra_checks=CALLBACK(src,PROC_REF(still_shoed), our_guy)))
			to_chat(user, span_notice("I [tied ? "untie" : "knot"] the laces on [loc]'s [src.name]."))
			if(tied == SHOES_UNTIED)
				adjust_laces(SHOES_KNOTTED, user)
			else
				adjust_laces(SHOES_UNTIED, user)
		else // if one of us moved
			user.visible_message(span_danger("[our_guy] stamps on [user]'s hand, mid-shoelace [tied ? "knotting" : "untying"]!"), span_userdanger("Ow! [our_guy] stamps on your hand!"), list(our_guy))
			to_chat(our_guy, span_userdanger("I stamp on [user]'s hand! What the- [user.p_they()] [user.p_were()] [tied ? "knotting" : "untying"] your shoelaces!"))
			user.emote("scream")
			if(istype(L))
				var/obj/item/bodypart/ouchie = L.get_bodypart(pick(BODY_ZONE_L_ARM, BODY_ZONE_R_ARM))
				if(ouchie)
					ouchie.receive_damage(brute = 10, stamina = 40)
				L.Paralyze(10)

///checking to make sure we're still on the person we're supposed to be, for lacing do_after's
/obj/item/clothing/shoes/proc/still_shoed(mob/living/carbon/our_guy)
	return (loc == our_guy)

///check_trip runs on each step to see if we fall over as a result of our lace status. Knotted laces are a guaranteed trip, while untied shoes are just a chance to stumble
/obj/item/clothing/shoes/proc/check_trip()
	var/mob/living/carbon/human/our_guy = loc
	if(!istype(our_guy)) // are they REALLY /our guy/?
		return

	if(tied == SHOES_KNOTTED)
		our_guy.Paralyze(5)
		our_guy.Knockdown(10)
		our_guy.visible_message(span_danger("[our_guy] trips on [our_guy.p_their()] knotted shoelaces and falls! What a klutz!"), span_userdanger("I trip on your knotted shoelaces and fall over!"))
		SEND_SIGNAL(our_guy, COMSIG_ADD_MOOD_EVENT, "trip", /datum/mood_event/tripped) // well we realized they're knotted now!
		our_alert = our_guy.throw_alert("shoealert", /atom/movable/screen/alert/shoes/knotted)

	else if(tied ==  SHOES_UNTIED)
		var/wiser = TRUE // did we stumble and realize our laces are undone?
		switch(rand(1, 1000))
			if(1) // .1% chance to trip and fall over (note these are per step while our laces are undone)
				our_guy.Paralyze(5)
				our_guy.Knockdown(10)
				SEND_SIGNAL(our_guy, COMSIG_ADD_MOOD_EVENT, "trip", /datum/mood_event/tripped) // well we realized they're knotted now!
				our_guy.visible_message(span_danger("[our_guy] trips on [our_guy.p_their()] untied shoelaces and falls! What a klutz!"), span_userdanger("I trip on your untied shoelaces and fall over!"))

			if(2 to 5) // .4% chance to stumble and lurch forward
				our_guy.throw_at(get_step(our_guy, our_guy.dir), 3, 2)
				to_chat(our_guy, span_danger("I stumble on your untied shoelaces and lurch forward!"))

			if(6 to 13) // .7% chance to stumble and fling what we're holding
				var/have_anything = FALSE
				for(var/obj/item/I in our_guy.held_items)
					have_anything = TRUE
					our_guy.accident(I)
				to_chat(our_guy, span_danger("I trip on your shoelaces a bit[have_anything ? ", flinging what you were holding" : ""]!"))

			if(14 to 25) // 1.3ish% chance to stumble and be a bit off balance (like being disarmed)
				to_chat(our_guy, span_danger("I stumble a bit on your untied shoelaces!"))
				our_guy.ShoveOffBalance(SHOVE_OFFBALANCE_DURATION)
				our_guy.Stagger(SHOVE_OFFBALANCE_DURATION)		//yes, same.
			if(26 to 1000)
				wiser = FALSE
		if(wiser)
			SEND_SIGNAL(our_guy, COMSIG_ADD_MOOD_EVENT, "untied", /datum/mood_event/untied) // well we realized they're untied now!
			our_alert = our_guy.throw_alert("shoealert", /atom/movable/screen/alert/shoes/untied)


/obj/item/clothing/shoes/on_attack_hand(mob/living/user, act_intent, unarmed_attack_flags)
	if(!istype(user))
		return ..()
	if(loc == user && tied != SHOES_TIED && (user.mobility_flags & MOBILITY_USE))
		handle_tying(user)
		return
	return ..()

/obj/item/clothing/shoes/attack_self(mob/user)
	. = ..()

	if(INTERACTING_WITH(user, src))
		to_chat(user, span_warning("You're already interacting with [src]!"))
		return

	to_chat(user, span_notice("I begin [tied ? "untying" : "tying"] the laces on [src]..."))

	if(do_after(user, lace_time, needhand=TRUE, target=src,extra_checks=CALLBACK(src,PROC_REF(still_shoed), user)))
		to_chat(user, span_notice("I [tied ? "untie" : "tie"] the laces on [src]."))
		adjust_laces(tied ? SHOES_TIED : SHOES_UNTIED, user)
