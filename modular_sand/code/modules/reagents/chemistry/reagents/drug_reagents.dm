/datum/reagent/drug/anaphrodisiac/on_mob_life(mob/living/M)
	if(M && M.client?.prefs.arousable)
		M.add_lust(max(2, M.get_lust() / 5) * -1)
		if(prob(0.5))
			to_chat(M, span_warning("I don't feel quite like it."))
	return ..()

/datum/reagent/drug/anaphrodisiacplus/on_mob_life(mob/living/M)
	if(M && M.client?.prefs.arousable)
		M.add_lust(max(10, M.get_lust() / 4) * -1)
		if(prob(0.2))
			to_chat(M, span_boldwarning("Nope, certainly don't feel like it."))
	return ..()