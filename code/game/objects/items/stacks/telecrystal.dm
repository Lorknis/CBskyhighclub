/obj/item/stack/telecrystal
	name = "telecrystal"
	desc = "It seems to be pulsing with suspiciously enticing energies."
	singular_name = "telecrystal"
	icon = 'icons/obj/telescience.dmi'
	icon_state = "telecrystal"
	grind_results = list(/datum/reagent/telecrystal = 20)
	w_class = WEIGHT_CLASS_TINY
	max_amount = 100
	item_flags = NOBLUDGEON
	merge_type = /obj/item/stack/telecrystal

/obj/item/stack/telecrystal/attack(mob/target, mob/user)
	if(target == user && isliving(user)) //You can't go around smacking people with crystals to find out if they have an uplink or not.
		var/mob/living/L = user
		for(var/obj/item/implant/uplink/I in L.implants)
			if(I?.imp_in)
				var/datum/component/uplink/hidden_uplink = I.GetComponent(/datum/component/uplink)
				if(hidden_uplink)
					hidden_uplink.telecrystals += amount
					use(amount)
					to_chat(user, span_notice("I press [src] onto yourself and charge your hidden uplink."))
	else
		return ..()

/obj/item/stack/telecrystal/afterattack(obj/item/I, mob/user, proximity)
	. = ..()
	if(istype(I, /obj/item/cartridge/virus/frame))
		var/obj/item/cartridge/virus/frame/cart = I
		if(!cart.charges)
			to_chat(user, span_notice("[cart] is out of charges, it's refusing to accept [src]."))
			return
		cart.telecrystals += amount
		use(amount)
		to_chat(user, span_notice("I slot [src] into [cart].  The next time it's used, it will also give telecrystals."))

/obj/item/stack/telecrystal/five
	amount = 5

/obj/item/stack/telecrystal/twenty
	amount = 20
