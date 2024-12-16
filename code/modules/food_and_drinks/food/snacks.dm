/** # Snacks

Items in the "Snacks" subcategory are food items that people actually eat. The key points are that they are created
already filled with reagents and are destroyed when empty. Additionally, they make a "munching" noise when eaten.

Notes by Darem: Food in the "snacks" subtype can hold a maximum of 50 units. Generally speaking, you don't want to go over 40
total for the item because you want to leave space for extra condiments. If you want effect besides healing, add a reagent for
it. Try to stick to existing reagents when possible (so if you want a stronger healing effect, just use omnizine). On use
effect (such as the old officer eating a donut code) requires a unique reagent (unless you can figure out a better way).

The nutriment reagent and bitesize variable replace the old heal_amt and amount variables. Each unit of nutriment is equal to
2 of the old heal_amt variable. Bitesize is the rate at which the reagents are consumed. So if you have 6 nutriment and a
bitesize of 2, then it'll take 3 bites to eat. Unlike the old system, the contained reagents are evenly spread among all
the bites. No more contained reagents = no more bites.

Food formatting and crafting examples.
```
/obj/item/reagent_containers/food/snacks/saltedcornchips						//Identification path for the object.
	name = "salted corn chips"													//Name that displays when hovered over.
	desc = "Manufactured in a far away factory."								//Description on examine.
	icon_state = "saltychip"													//Refers to an icon, usually in food.dmi
	bitesize = 3																//How many reagents are consumed in each bite.
	list_reagents = list(/datum/reagent/consumable/nutriment = 6,				//What's inside the snack, but only if spawned. For example, from a chemical reaction, vendor, or slime core spawn.
						/datum/reagent/consumable/nutriment/vitamin = 2)
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1,				//What's -added- to the food, in addition to the reagents contained inside the foods used to craft it. Basically, a reward for cooking.
						/datum/reagent/consumable/nutriment/vitamin = 1)		^^For example. Egg+Egg = 2Egg + Bonus Reagents.
	filling_color = "#F4A460"													//What color it will use if put in a custom food.
	tastes = list("salt" = 1, "oil" = 1)										//Descriptive flavoring displayed when eaten. IE: "I taste a bit of salt and a bit of oil."
	foodtype = GRAIN | JUNKFOOD													//Tag for racial or custom food preferences. IE: Most Lizards cannot have GRAIN.

Crafting Recipe (See files in code/modules/food_and_drinks/recipes/tablecraft/)

/datum/crafting_recipe/food/nachos
	name ="Salted Corn Chips"													//Name that displays in the Crafting UI
	reqs = list(																//The list of ingredients to make the food.
		/obj/item/reagent_containers/food/snacks/tortilla = 1,
		/datum/reagent/consumable/sodiumchloride = 1							//As a note, reagents and non-food items don't get added to the food. If you
	)																			^^want the reagents, make sure the food item has it listed under bonus_reagents.
	result = /obj/item/reagent_containers/food/snacks/saltedcornchips			//Resulting object.
	subcategory = CAT_MISCFOOD													//Subcategory the food falls under in the Food Tab of the crafting menu.
```

All foods are distributed among various categories. Use common sense.
*/
/obj/item/reagent_containers/food/snacks
	name = "snack"
	desc = "Yummy."
	icon = 'icons/obj/food/food.dmi'
	icon_state = null
	lefthand_file = 'icons/mob/inhands/misc/food_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/food_righthand.dmi'
	obj_flags = UNIQUE_RENAME
	grind_results = list() //To let them be ground up to transfer their reagents
	var/bitesize = 2
	var/bitecount = 0
	var/trash = null
	var/slice_path    // for sliceable food. path of the item resulting from the slicing
	var/slices_num
	var/eatverb
	var/dried_type = null
	var/dry = 0
	var/eatingsound = 'sound/items/eatfood.ogg'
	var/cooked_type = null  //for microwave cooking. path of the resulting item after microwaving
	var/filling_color = "#FFFFFF" //color to use when added to custom food.
	var/custom_food_type = null  //for food customizing. path of the custom food to create
	var/junkiness = 0  //for junk food. used to lower human satiety.
	var/list/bonus_reagents //the amount of reagents (usually nutriment and vitamin) added to crafted/cooked snacks, on top of the ingredients reagents.
	var/customfoodfilling = 1 // whether it can be used as filling in custom food
	var/dunkable = FALSE // for dunkable food, make true
	var/dunk_amount = 10 // how much reagent is transferred per dunk
	var/inedible = FALSE // for inedible food, make true

	//Placeholder for effect that trigger on eating that aren't tied to reagents.

/obj/item/reagent_containers/food/snacks/add_initial_reagents()
	var/list/flavors = SSlistbank.get_tastes(src)
	if(!LAZYLEN(flavors))
		return ..()
	if(!list_reagents)
		return ..()
	for(var/rid in list_reagents)
		var/amount = list_reagents[rid]
		if(rid == /datum/reagent/consumable/nutriment || rid == /datum/reagent/consumable/nutriment/vitamin)
			reagents.add_reagent(rid, amount, flavors.Copy())
		else
			reagents.add_reagent(rid, amount)
	..()

/obj/item/reagent_containers/food/snacks/proc/On_Consume(mob/living/eater)
	if(!eater)
		return
	if(!loc)
		return
	if(!reagents.total_volume)
		var/mob/living/location = loc
		var/obj/item/trash_item = generate_trash(location)
		qdel(src)
		if(isliving(location))
			location.put_in_hands(trash_item)
			return
		SEND_SIGNAL(location, COMSIG_BELLY_HANDLE_TRASH, trash_item)
		return

/obj/item/reagent_containers/food/snacks/attack_self(mob/user)
	return

/obj/item/reagent_containers/food/snacks/take_a_bellybite(datum/source, obj/vore_belly/gut, mob/living/vorer)
	INVOKE_ASYNC(src,PROC_REF(attempt_forcefeed), vorer, vorer, TRUE, TRUE, TRUE)
	if(gut.can_taste)
		checkLiked(min(bitesize / reagents.total_volume, 1), vorer)
	return TRUE

/obj/item/reagent_containers/food/snacks/attack(mob/living/M, mob/living/user, attackchain_flags = NONE, damage_multiplier = 1)
	if(user.a_intent == INTENT_HARM || inedible)
		return ..()
	INVOKE_ASYNC(src,PROC_REF(attempt_forcefeed), M, user)

/obj/item/reagent_containers/food/snacks/proc/attempt_forcefeed(mob/living/M, mob/living/user, forced, silent, vorebite)
	if(!eatverb)
		eatverb = pick("bite","chew","nibble","gnaw","gobble","chomp")
	if(!reagents.total_volume) //Shouldn't be needed but it checks to see if it has anything left in it.
		if(!silent)
			to_chat(user, span_notice("None of [src] left, oh no!"))
		qdel(src)
		return 0
	if(iscarbon(M))
		if(!forced && !canconsume(M, user))
			return 0

		var/fullness = M.nutrition + 10
		for(var/datum/reagent/consumable/C in M.reagents.reagent_list) //we add the nutrition value of what we're currently digesting
			fullness += C.nutriment_factor * C.volume / C.metabolization_rate

		if(M == user || forced) //If you're eating it yourself.
			if(junkiness && M.satiety < -150 && M.nutrition > NUTRITION_LEVEL_STARVING + 50)
				if(HAS_TRAIT(M, TRAIT_VORACIOUS))
					to_chat(M, span_notice("I happily choke down yet more junk food!"))
					M.adjust_disgust(-1)
				else
					to_chat(M, span_danger("I feel sick as you choke down yet more junk food!"))
					M.adjust_disgust(1)
			if(!silent)
				switch(fullness)
					if(-INFINITY to 50)
						if(HAS_TRAIT(M, TRAIT_VORACIOUS))
							M.visible_message(
								span_notice("[M] ravenously [eatverb]s \the [src], gobbling it down!"), 
								span_notice("I ravenously [eatverb] \the [src], gobbling it down!"))
						else
							M.visible_message(
								span_notice("[M] hungrily [eatverb]s \the [src], gobbling it down!"), 
								span_notice("I hungrily [eatverb] \the [src], gobbling it down!"))
					if(50 to 200)
						if(HAS_TRAIT(M, TRAIT_VORACIOUS))
							M.visible_message(
								span_notice("[M] ravenously [eatverb]s \the [src]!"), 
								span_notice("I ravenously [eatverb] \the [src]!"))
						else
							M.visible_message(
								span_notice("[M] hungrily [eatverb]s \the [src]."), 
								span_notice("I hungrily [eatverb] \the [src]."))
					if(200 to 500)
						if(HAS_TRAIT(M, TRAIT_VORACIOUS))
							M.visible_message(
								span_notice("[M] vigorously [eatverb]s \the [src]!"), 
								span_notice("I vigorously [eatverb] \the [src]!"))
						else
							M.visible_message(
								span_notice("[M] [eatverb]s \the [src]."), 
								span_notice("I [eatverb] \the [src]."))
					if(500 to 650)
						if(HAS_TRAIT(M, TRAIT_VORACIOUS))
							M.visible_message(
								span_notice("[M] gluttonously [eatverb]s \the [src]!"), 
								span_notice("I gluttonously [eatverb] \the [src]!"))
						else
							M.visible_message(
								span_notice("[M] unwillingly [eatverb]s \the [src]."), 
								span_notice("I unwillingly [eatverb] \the [src]."))
					//if((600 * (1 + M.overeatduration / 1000)) to INFINITY) // Had to change this to a const, sorry if it don't work! Can convert it to an if else statemetnt but I'm lazy.
					if(650 to INFINITY)
						if(HAS_TRAIT(M, TRAIT_VORACIOUS) || forced)
							M.visible_message(
								span_notice("[M] gluttonously [eatverb]s \the [src], cramming it down [M.p_their()] throat!"), 
								span_notice("I gluttonously [eatverb] \the [src], cramming it down your throat!"))
						else
							M.visible_message(
								span_warning("[M] cannot force any more of \the [src] to go down [M.p_their()] throat!"), 
								span_warning("I cannot force any more of \the [src] to go down your throat!"))
							return
		else
			if(isbrain(M))
				to_chat(user, span_warning("[M] doesn't seem to have a mouth!"))
				return
			if(fullness <= (600 * (1 + M.overeatduration / 1000)) || HAS_TRAIT(M, TRAIT_VORACIOUS))
				M.visible_message(
					span_danger("[user] attempts to feed [M] [src]."),
					span_userdanger("[user] attempts to feed you [src]."))
			else
				M.visible_message(
					span_warning("[user] cannot force any more of [src] down [M]'s throat!"),
					span_warning("[user] cannot force any more of [src] down your throat!"))
				return
			if(!do_mob(user, M, ((HAS_TRAIT(M, TRAIT_VORACIOUS)) ? 1 SECONDS : 3 SECONDS))) //Wait 3 / 1 second(s) before you can feed
				return

			M.visible_message(
				span_danger("[user] forces [M] to eat [src]!</span>"),
				span_userdanger("[user] forces you to eat [src]!</span>"))

		if(reagents) //Handle ingestion of the reagent.
			if(vorebite)
				log_combat(user, M, "vored-fed themself", src.reagents.log_list())
			else
				log_combat(user, M, "fed", src.reagents.log_list())
			if(M.satiety > -200)
				M.satiety -= junkiness
			if(!silent)
				playsound(M.loc,eatingsound, rand(10,50), 1)
			if(reagents.total_volume)
				SEND_SIGNAL(src, COMSIG_FOOD_EATEN, M, user)
				var/fraction = min(bitesize / reagents.total_volume, 1)
				reagents.reaction(M, INGEST, fraction)
				reagents.trans_to(M, bitesize, log = TRUE)
				bitecount++
				On_Consume(M, vorebite)
				if(!vorebite)
					checkLiked(fraction, M)
				return 1

	return 0

/obj/item/reagent_containers/food/snacks/CheckAttackCooldown(mob/user, atom/target)
	var/fast = HAS_TRAIT(user, TRAIT_VORACIOUS) && (user == target)
	return user.CheckActionCooldown(fast? CLICK_CD_RANGE : CLICK_CD_MELEE)

/obj/item/reagent_containers/food/snacks/examine(mob/user)
	. = ..()
	if(food_quality >= 70)
		. += "It is of a high quality."
	else
		if(food_quality <= 30)
			. += "It is of a low quality."

	if(bitecount == 0)
		return
	else if(bitecount == 1)
		. += "[src] was bitten by someone!"
	else if(bitecount <= 3)
		. += "[src] was bitten [bitecount] times!"
	else
		. += "[src] was bitten multiple times!"


/obj/item/reagent_containers/food/snacks/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/storage))
		..() // -> item/attackby()
		return 0
	if(istype(W, /obj/item/reagent_containers/food/snacks))
		var/obj/item/reagent_containers/food/snacks/S = W
		if(custom_food_type && ispath(custom_food_type))
			if(S.w_class > WEIGHT_CLASS_SMALL)
				to_chat(user, span_warning("[S] is too big for [src]!"))
				return 0
			if(!S.customfoodfilling || istype(W, /obj/item/reagent_containers/food/snacks/customizable) || istype(W, /obj/item/reagent_containers/food/snacks/pizzaslice/custom) || istype(W, /obj/item/reagent_containers/food/snacks/cakeslice/custom))
				to_chat(user, span_warning("[src] can't be filled with [S]!"))
				return 0
			if(contents.len >= 20)
				to_chat(user, span_warning("I can't add more ingredients to [src]!"))
				return 0
			var/obj/item/reagent_containers/food/snacks/customizable/C = new custom_food_type(get_turf(src))
			C.initialize_custom_food(src, S, user)
			return 0
	var/sharp = W.get_sharpness()
	if(sharp)
		if(slice(sharp, W, user))
			return 1
	else
		..()

//Called when you finish tablecrafting a snack.
/obj/item/reagent_containers/food/snacks/CheckParts(list/parts_list, datum/crafting_recipe/food/R)
	..()
	reagents.clear_reagents()
	for(var/obj/item/reagent_containers/RC in contents)
		RC.reagents.trans_to(reagents, RC.reagents.maximum_volume)
	if(istype(R))
		contents_loop:
			for(var/A in contents)
				for(var/B in R.real_parts)
					if(istype(A, B))
						continue contents_loop
				qdel(A)
	SSblackbox.record_feedback("tally", "food_made", 1, type)

	if(bonus_reagents && bonus_reagents.len)
		for(var/r_id in bonus_reagents)
			var/amount = bonus_reagents[r_id]
			if(r_id == /datum/reagent/consumable/nutriment || r_id == /datum/reagent/consumable/nutriment/vitamin)
				reagents.add_reagent(r_id, amount, tastes)
			else
				reagents.add_reagent(r_id, amount)

/obj/item/reagent_containers/food/snacks/proc/slice(accuracy, obj/item/W, mob/user)
	if((slices_num <= 0 || !slices_num) || !slice_path) //is the food sliceable?
		return FALSE

	if ( \
			!isturf(src.loc) || \
			!(locate(/obj/structure/table) in src.loc) && \
			!(locate(/obj/structure/table/optable) in src.loc) && \
			!(locate(/obj/item/storage/bag/tray) in src.loc) \
		)
		to_chat(user, span_warning("I cannot slice [src] here! You need a table or at least a tray."))
		return FALSE

	user.visible_message("[user] slices [src].", span_notice("I slice [src]."))
	var/reagents_per_slice = reagents.total_volume/slices_num
	for(var/i=1 to slices_num)
		var/obj/item/reagent_containers/food/snacks/slice = new slice_path (loc)
		initialize_slice(slice, reagents_per_slice)
	qdel(src)
	return TRUE

/obj/item/reagent_containers/food/snacks/proc/initialize_slice(obj/item/reagent_containers/food/snacks/slice, reagents_per_slice)
	slice.create_reagents(slice.volume, reagent_flags, reagent_value)
	reagents.trans_to(slice,reagents_per_slice)
	if(name != initial(name))
		slice.name = "slice of [name]"
	if(desc != initial(desc))
		slice.desc = "[desc]"
	if(foodtype != initial(foodtype))
		slice.foodtype = foodtype //if something happens that overrode our food type, make sure the slice carries that over
	slice.adjust_food_quality(food_quality)

/obj/item/reagent_containers/food/snacks/proc/generate_trash(atom/location)
	if(trash)
		if(ispath(trash, /obj/item))
			. = new trash(location)
			trash = null
			return
		else if(isitem(trash))
			var/obj/item/trash_item = trash
			trash_item.forceMove(location)
			. = trash
			trash = null
			return

/obj/item/reagent_containers/food/snacks/proc/update_snack_overlays(obj/item/reagent_containers/food/snacks/S)
	cut_overlays()
	var/mutable_appearance/filling = mutable_appearance(icon, "[initial(icon_state)]_filling")
	if(S.filling_color == "#FFFFFF")
		filling.color = pick("#FF0000","#0000FF","#008000","#FFFF00")
	else
		filling.color = S.filling_color

	add_overlay(filling)

// initialize_cooked_food() is called when microwaving the food
/obj/item/reagent_containers/food/snacks/proc/initialize_cooked_food(obj/item/reagent_containers/food/snacks/S, cooking_efficiency = 1)
	S.create_reagents(S.volume, reagent_flags, reagent_value)
	if(reagents)
		reagents.trans_to(S, reagents.total_volume)
	if(cooking_efficiency && length(S.bonus_reagents))
		for(var/r_id in S.bonus_reagents)
			var/amount = round(S.bonus_reagents[r_id] * cooking_efficiency)
			if(r_id == /datum/reagent/consumable/nutriment || r_id == /datum/reagent/consumable/nutriment/vitamin)
				S.reagents.add_reagent(r_id, amount, tastes)
			else
				S.reagents.add_reagent(r_id, amount)

/obj/item/reagent_containers/food/snacks/microwave_act(obj/machinery/microwave/M)
	var/turf/T = get_turf(src)
	var/obj/item/result
	if(cooked_type)
		result = new cooked_type(T)
		if(istype(M))
			initialize_cooked_food(result, M.efficiency)
			//if the result is food, set its food quality to the original food item's quality
			if(isfood(result))
				var/obj/item/reagent_containers/food/food_output = result
				food_output.adjust_food_quality(food_quality + M.quality_increase)
		else
			initialize_cooked_food(result, 1)
		SSblackbox.record_feedback("tally", "food_made", 1, result.type)
	else
		result = new /obj/item/reagent_containers/food/snacks/badrecipe(T)
		if(istype(M) && M.dirty < 100)
			M.dirty++
	qdel(src)

	return result

/obj/item/reagent_containers/food/snacks/Destroy()
	if(contents)
		for(var/atom/movable/something in contents)
			something.forceMove(drop_location())
	return ..()

/obj/item/reagent_containers/food/snacks/attack_animal(mob/M)
	if(isanimal(M))
		if(iscorgi(M))
			var/mob/living/L = M
			if(bitecount == 0 || prob(50))
				M.emote("me", EMOTE_VISIBLE, "nibbles away at \the [src]")
			bitecount++
			L.taste(reagents) // why should carbons get all the fun?
			if(bitecount >= 5)
				var/sattisfaction_text = pick("burps from enjoyment", "yaps for more", "woofs twice", "looks at the area where \the [src] was")
				if(sattisfaction_text)
					M.emote("me", EMOTE_VISIBLE, "[sattisfaction_text]")
				qdel(src)

//////////////////////////////////////////Dunking///////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/afterattack(obj/item/reagent_containers/M, mob/user, proximity)
	. = ..()
	if(!dunkable || !proximity)
		return
	if(istype(M, /obj/item/reagent_containers/glass) || istype(M, /obj/item/reagent_containers/food/drinks))	//you can dunk dunkable snacks into beakers or drinks
		if(!M.is_drainable())
			to_chat(user, span_warning("[M] is unable to be dunked in!"))
			return
		if(M.reagents.trans_to(src, dunk_amount, log = TRUE))	//if reagents were transfered, show the message
			to_chat(user, span_notice("I dunk the [M]."))
			return
		if(!M.reagents.total_volume)
			to_chat(user, span_warning("[M] is empty!"))
		else
			to_chat(user, span_warning("[src] is full!"))

// //////////////////////////////////////////////Store////////////////////////////////////////
/// All the food items that can store an item inside itself, like bread or cake.
/obj/item/reagent_containers/food/snacks/store
	w_class = WEIGHT_CLASS_NORMAL
	var/stored_item = 0

/obj/item/reagent_containers/food/snacks/store/attackby(obj/item/W, mob/user, params)
	..()
	if(W.w_class <= WEIGHT_CLASS_SMALL & !istype(W, /obj/item/reagent_containers/food/snacks)) //can't slip snacks inside, they're used for custom foods.
		if(W.get_sharpness())
			return 0
		if(stored_item)
			return 0
		if(!iscarbon(user))
			return 0
		if(contents.len >= 20)
			to_chat(user, span_warning("[src] is full."))
			return 0
		to_chat(user, span_notice("I slip [W] inside [src]."))
		user.transferItemToLoc(W, src)
		add_fingerprint(user)
		contents += W
		stored_item = 1
		return 1 // no afterattack here

/obj/item/reagent_containers/food/snacks/MouseDrop(atom/over)
	var/turf/T = get_turf(src)
	var/obj/structure/table/TB = locate(/obj/structure/table) in T
	if(TB)
		TB.MouseDrop(over)
	else
		return ..()

// //////////////////////////////////////////////Frying////////////////////////////////////////
/atom/proc/fry(cook_time = 30) //you can truly fry anything
	//don't fry reagent containers that aren't food items, indestructable items, or items that are already fried
	if(isitem(src))
		var/obj/item/fried_item = src
		if(fried_item.resistance_flags & INDESTRUCTIBLE)
			return
	if(!GetComponent(/datum/component/fried) && (!reagents || isfood(src) || ismob(src)))
		AddComponent(/datum/component/fried, frying_power = cook_time)
