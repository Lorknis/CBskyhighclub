/datum/disease/cold
	name = "The Cold"
	max_stages = 3
	cure_text = "Rest & Spaceacillin"
	cures = list(/datum/reagent/medicine/spaceacillin)
	agent = "XY-rhinovirus"
	viable_mobtypes = list(/mob/living/carbon/human, /mob/living/carbon/monkey)
	permeability_mod = 0.5
	desc = "If left untreated the subject will contract the flu."
	severity = DISEASE_SEVERITY_NONTHREAT

/datum/disease/cold/stage_act()
	..()
	switch(stage)
		if(2)
			if(affected_mob.lying && prob(40))  //changed FROM prob(10) until sleeping is fixed
				to_chat(affected_mob, span_notice("I feel better."))
				cure()
				return
			if(prob(1) && prob(5))
				to_chat(affected_mob, span_notice("I feel better."))
				cure()
				return
			if(prob(1))
				affected_mob.emote("sneeze")
			if(prob(1))
				affected_mob.emote("cough")
			if(prob(1))
				to_chat(affected_mob, span_danger("My throat feels sore."))
			if(prob(1))
				to_chat(affected_mob, span_danger("Mucous runs down the back of your throat."))
		if(3)
			if(affected_mob.lying && prob(25))  //changed FROM prob(5) until sleeping is fixed
				to_chat(affected_mob, span_notice("I feel better."))
				cure()
				return
			if(prob(1) && prob(1))
				to_chat(affected_mob, span_notice("I feel better."))
				cure()
				return
			if(prob(1))
				affected_mob.emote("sneeze")
			if(prob(1))
				affected_mob.emote("cough")
			if(prob(1))
				to_chat(affected_mob, span_danger("My throat feels sore."))
			if(prob(1))
				to_chat(affected_mob, span_danger("Mucous runs down the back of your throat."))
			if(prob(1) && prob(50))
				if(!affected_mob.disease_resistances.Find(/datum/disease/flu))
					var/datum/disease/Flu = new /datum/disease/flu()
					affected_mob.ForceContractDisease(Flu, FALSE, TRUE)
					cure()
