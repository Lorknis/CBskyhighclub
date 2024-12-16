GLOBAL_LIST_INIT(chemwhiz_recipes, list(
	/datum/crafting_recipe/jet,
	/datum/crafting_recipe/turbo,
	/datum/crafting_recipe/psycho,
	/datum/crafting_recipe/medx,
	/datum/crafting_recipe/medx/chemistry,
	/datum/crafting_recipe/stimpak,
	/datum/crafting_recipe/stimpak/chemistry,
	/datum/crafting_recipe/stimpak5,
	/datum/crafting_recipe/stimpak5/chemistry,
	/datum/crafting_recipe/superstimpak,
	/datum/crafting_recipe/superstimpak5,
	/datum/crafting_recipe/buffout,
	/datum/crafting_recipe/steady))

GLOBAL_LIST_INIT(basic_explosive_recipes, list(
	/datum/crafting_recipe/frag_shrapnel,
	/datum/crafting_recipe/stinger,
	/datum/crafting_recipe/flashbang,
	/datum/crafting_recipe/smokebomb,
	/datum/crafting_recipe/rocket_base,
	/datum/crafting_recipe/weakrocket))

GLOBAL_LIST_INIT(adv_explosive_recipes, list(
	/datum/crafting_recipe/incendiary,
	/datum/crafting_recipe/concussion,
	/datum/crafting_recipe/radgrenade,
	/datum/crafting_recipe/empgrenade,
	/datum/crafting_recipe/incendiaryrocket,
	/datum/crafting_recipe/strongrocket))

GLOBAL_LIST_INIT(minelaying_recipe, list(
	/datum/crafting_recipe/explosive/shrapnelmine,
	/datum/crafting_recipe/explosive/explomine,
	/datum/crafting_recipe/explosive/stingmine,
	/datum/crafting_recipe/explosive/pulsemine,
	/datum/crafting_recipe/explosive/stunmine))

GLOBAL_LIST_INIT(tier_three_parts, list(
	/datum/crafting_recipe/pico_manip,
	/datum/crafting_recipe/super_matter_bin,
	/datum/crafting_recipe/phasic_scanning,
	/datum/crafting_recipe/super_capacitor,
	/datum/crafting_recipe/ultra_micro_laser))

GLOBAL_LIST_INIT(energyweapon_cell_crafting, list(
	/datum/crafting_recipe/enhancedenergycell,
	/datum/crafting_recipe/enhancedmfcell,
	/datum/crafting_recipe/enhancedecp))

	// armored_hazard_suit is going to get SEVA Mk. 2 and Explorer Mk. 2 in the future. Might tie it to Hardsuits as well.
GLOBAL_LIST_INIT(armored_hazard_suit, list(
	/datum/crafting_recipe/combathazardsuit,
	/datum/crafting_recipe/combathazardhood))

GLOBAL_LIST_INIT(weaponcrafting_gun_recipes, list(
	/datum/crafting_recipe/ninemil,
	/datum/crafting_recipe/huntingrifle,
	/datum/crafting_recipe/n99,
	/datum/crafting_recipe/huntingshotgun,
	/datum/crafting_recipe/m1911,
	/datum/crafting_recipe/varmintrifle,
	/datum/crafting_recipe/salvaged_eastern_rifle,
	/datum/crafting_recipe/autoaxe,
	/datum/crafting_recipe/steelsaw,
	/datum/crafting_recipe/tools/forged/entrenching_tool,
	/datum/crafting_recipe/chainsaw,
	/datum/crafting_recipe/steeltower,
	/datum/crafting_recipe/durathread_vest,
	/datum/crafting_recipe/ecpbad,
	/datum/crafting_recipe/mfcbad,
	/datum/crafting_recipe/ecbad,
	/datum/crafting_recipe/gun/flintlock,
	/datum/crafting_recipe/gun/flintlock_laser,
	/datum/crafting_recipe/sharpener))

GLOBAL_LIST_INIT(former_tribal_recipes, list(
	///datum/crafting_recipe/tribal/bonetalisman, //broken item, unneeded
	/datum/crafting_recipe/spearfisher,
	/datum/crafting_recipe/bitterdrink,
	/datum/crafting_recipe/bitterdrink5,
	/datum/crafting_recipe/healpoultice,
	/datum/crafting_recipe/healpoultice5,
	/datum/crafting_recipe/redambrosia,
	/datum/crafting_recipe/blueambrosia,
	/datum/crafting_recipe/greenambrosia,
	/datum/crafting_recipe/food/pemmican,
	/datum/crafting_recipe/tribal/bonebag,
	/datum/crafting_recipe/warpaint,
	/datum/crafting_recipe/horsecream_good))

GLOBAL_LIST_INIT(rustwalkers_traditions_recipes, list(
	/datum/crafting_recipe/tribalwar/rustwalkers/lightarmour,
	/datum/crafting_recipe/tribalwar/rustwalkers/armour,
	/datum/crafting_recipe/tribalwar/rustwalkers/heavyarmour,
	/datum/crafting_recipe/tribalwar/rustwalkers/garb,
	/datum/crafting_recipe/tribalwar/rustwalkers/femalegarb))

GLOBAL_LIST_INIT(bonedancer_traditions_recipes, list(
	/datum/crafting_recipe/tribalwar/bone/lightarmour,
	/datum/crafting_recipe/tribalwar/bone/armour,
	/datum/crafting_recipe/tribalwar/bone/heavyarmour,
	/datum/crafting_recipe/tribalwar/bone/garb,
	/datum/crafting_recipe/tribalwar/bone/helmet))

GLOBAL_LIST_INIT(eighties_traditions_recipes, list(
	/datum/crafting_recipe/tribalwar/eighties/lightarmour,
	/datum/crafting_recipe/tribalwar/eighties/armour,
	/datum/crafting_recipe/tribalwar/eighties/heavyarmour,
	/datum/crafting_recipe/tribalwar/eighties/garb,
	/datum/crafting_recipe/tribalwar/eighties/femalegarb))

GLOBAL_LIST_INIT(energyweapon_crafting, list(
	/datum/crafting_recipe/aer9_hotwired))

GLOBAL_LIST_INIT(pa_repair, list(
	/datum/crafting_recipe/repair_t45,
	/datum/crafting_recipe/repair_t45_helm,
	/datum/crafting_recipe/scrap_pa,
	/datum/crafting_recipe/scrap_pa_helm,
	/datum/crafting_recipe/repair_t45/hotrod,
	/datum/crafting_recipe/repair_t45_helm/hotrod))


GLOBAL_LIST_INIT(weapons_of_texarkana, list(
	/datum/crafting_recipe/policepistol,
	/datum/crafting_recipe/durathread_vest,
	/datum/crafting_recipe/policerifle,
	/datum/crafting_recipe/steelbib/heavy,
	/datum/crafting_recipe/armyhelmetheavy,
	/datum/crafting_recipe/huntingshotgun))

GLOBAL_LIST_INIT(security_expert, list(
	/datum/crafting_recipe/lockpick_basic,
	/datum/crafting_recipe/lockpick_improved))


//predominantly positive traits
//this file is named weirdly so that positive traits are listed above negative ones

/datum/quirk/alcohol_tolerance
	name = "Alcohol Tolerance"
	desc = "I become drunk more slowly and suffer fewer drawbacks from alcohol."
	value = 14
	category = "Food Quirks"
	mechanics = "Booze only delivers 70% of its alcohol power."
	conflicts = list()
	mob_trait = TRAIT_ALCOHOL_TOLERANCE
	gain_text = span_notice("I feel like I could drink a whole keg!")
	lose_text = span_danger("I don't feel as resistant to alcohol anymore. Somehow.")
	medical_record_text = "Patient demonstrates a high tolerance for alcohol."

/*
/datum/quirk/tribal
	name = "Former Tribal"
	desc = "I used to be part of one of the tribes scattered throughout the wasteland. I may have some additional skills as a result. Allowing I to make some tribal medical supplies. Advanced tech still confuses I though."
	value = 22
	category = "Lifepath Quirks"
	mechanics = "Grants access to a wide variety of recipes and allows I to use primitive chemmasters with which I can make complex potions/poisons."
	conflicts = list(
		/datum/quirk/technophreak,
		/datum/quirk/tribal_tech,
		)
	gain_text = span_notice("I remember the old ways of my tribe.")
	lose_text = span_notice("I've forgotten the ways of my ancestors...")
	human_only = FALSE

/datum/quirk/tribal/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, "Former Tribal")
	ADD_TRAIT(H, TRAIT_TRIBAL, "Former Tribal")
	ADD_TRAIT(H, TRAIT_FORMER_TRIBAL, "ex_tribal_traditions")
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.former_tribal_recipes

/datum/quirk/tribal/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_MACHINE_SPIRITS, "Former Tribal")
		REMOVE_TRAIT(H, TRAIT_TRIBAL, "Former Tribal")
		H.mind.learned_recipes -= GLOB.former_tribal_recipes
*/

/* Want to maybe use this with other things, but not as it is.
/datum/quirk/apathetic
	name = "Apathetic"
	desc = "I just don't care as much as other people. That's nice to have in a place like this, I guess."
	value = 0
	category = "Emotional Quirks"
	mechanics = "This trait forces my mood towards balance, it will make happiness and sadness last for shorter amounts of time as I return to neutral."
	conflicts = list(
		/datum/quirk/friendly,
		/datum/quirk/jolly,
		/datum/quirk/optimist,
		/datum/quirk/depression,
		/datum/quirk/pessimist,
		//datum/quirk/family_heirloom,
		/datum/quirk/unstable,
		/datum/quirk/empath,
		)
	mood_quirk = TRUE
	medical_record_text = "Patient was administered the Apathy Evaluation Scale but did not bother to complete it."

/datum/quirk/apathetic/add()
	var/datum/component/mood/mood = quirk_holder.GetComponent(/datum/component/mood)
	if(mood)
		mood.mood_modifier = 0.8

/datum/quirk/apathetic/remove()
	if(quirk_holder)
		var/datum/component/mood/mood = quirk_holder.GetComponent(/datum/component/mood)
		if(mood)
			mood.mood_modifier = 1 //Change this once/if species get their own mood modifiers.
*/

/datum/quirk/drunkhealing
	name = "Drunken Resilience"
	desc = "Nothing like a good drink to make me feel on top of the world. Whenever I're drunk, I slowly recover from damage. Not wounds or bloodloss though."
	value = 14
	category = "Food Quirks"
	mechanics = "When drunk I slowly heal damage from all groups except wounds & bloodloss."
	conflicts = list()
	mob_trait = TRAIT_DRUNK_HEALING
	gain_text = span_notice("I feel like a drink would do me good.")
	lose_text = span_danger("I no longer feel like drinking would ease my pain.")
	medical_record_text = "Patient has unusually efficient liver metabolism and can slowly regenerate wounds by drinking alcoholic beverages."

/datum/quirk/empath
	name = "Empath"
	desc = "Whether it's a sixth sense or careful study of body language, it only takes me a quick glance at someone to understand how they feel. This lets I see their mood, damage, and intent. As well as seeing if they're experience oxyloss/toxloss and if they're in a high or low mood."
	value = 0
	category = "Emotional Quirks"
	mechanics = "I can read other peoples moods and see what intent they are in."
	conflicts = list()
	mob_trait = TRAIT_EMPATH
	gain_text = span_notice("I feel in tune with those around I.")
	lose_text = span_danger("I feel isolated from others.")
	medical_record_text = "Patient is highly perceptive of and sensitive to social cues, or may possibly have ESP. Further testing needed."

/*
/datum/quirk/freerunning
	name = "Freerunning"
	desc = "I'm great at quick moves! I climb tables more quickly and land gracefully when falling from one floor up. I can also climb some walls!"
	value = 32
	category = "Movement Quirks"
	mechanics = "Allows I to alt click on certain walls to climb up them quickly. There must not be a roof in the way, of course. I can also climb over tables faster."
	conflicts = list(
		/datum/quirk/slower,
		/datum/quirk/slow,
		/datum/quirk/clumsy,
		/datum/quirk/cantrun,
		/datum/quirk/overweight,
		) //obese
	mob_trait = TRAIT_FREERUNNING
	gain_text = span_notice("I feel lithe on my feet! (Alt click walls to climb them!)")
	lose_text = span_danger("I don't seem to be able to jump as high as I used to.")
	medical_record_text = "Patient scored highly on cardio tests."



/datum/quirk/tackler
	name = "Leaper"
	desc = "I am able to leap short distances, and on occasion tackle others, albeit somewhat clumsly."
	value = 14
	category = "Movement Quirks"
	mechanics = "I am able to jump short distances with throw enabled and an empty hand, hitting people will tackle them, leaning towards poor results for I."
	conflicts = list(
		/datum/quirk/overweight,
	)
	mob_trait = TRAIT_TACKLER
	gain_text = span_notice("My legs feel stronger.")
	lose_text = span_danger("My legs feel weaker.")
	medical_record_text = "Patient's dexterity belies a good capacity for long distance jumping."

/datum/quirk/tackler/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.AddComponent(/datum/component/tackler/simple, \
		stamina_cost = 30, \
		base_knockdown = 0 SECONDS, \
		range = 4, \
		speed = 1, \
		skill_mod = -1, \
		min_distance = 0 \
)



/datum/quirk/tackleradv
	name = "Advanced Leaper"
	desc = "I am able to leap long distances with ease."
	value = 22
	category = "Movement Quirks"
	mechanics = "I am able to jump long distances with throw enabled and an empty hand, though I can no longer tackle effectively."
	conflicts = list(
		/datum/quirk/clumsy,
		/datum/quirk/overweight,
		/datum/quirk/tacklerapex,
		/datum/quirk/tackler
	)
	mob_trait = TRAIT_TACKLERADV
	gain_text = span_notice("My legs feel much stronger.")
	lose_text = span_danger("My legs feel much weaker.")
	medical_record_text = "Patient's dexterity belies a strong capacity for incredibly long distance jumping."

/datum/quirk/tackleradv/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.AddComponent(/datum/component/tackler/simple, \
		stamina_cost = 20, \
		base_knockdown = 0 SECONDS, \
		range = 7, \
		speed = 2, \
		skill_mod = -2, \
		min_distance = 0 \
)


/datum/quirk/tacklerapex
	name = "Apex Leap"
	desc = "I am able to leap medium distances with ease, as well as being able to tackle people down, most of the time"
	value = 32
	category = "Movement Quirks"
	mechanics = "I am able to jump medium distances with throw enabled and an empty hand, and effectively tackle others"
	conflicts = list(
		/datum/quirk/clumsy,
		/datum/quirk/overweight,
		/datum/quirk/tackler,
		/datum/quirk/tackleradv
	)
	mob_trait = TRAIT_TACKLERAPEX
	gain_text = span_notice("My legs feel incredibly stronger.")
	lose_text = span_danger("My legs feel incredibly weaker.")
	medical_record_text = "Patient's dexterity belies a strong capacity for street wide jumping."

/datum/quirk/tacklerapex/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.AddComponent(/datum/component/tackler/simple_dunkstrong, \
		stamina_cost = 20, \
		base_knockdown = 0 SECONDS, \
		range = 5, \
		speed = 1, \
		skill_mod = 3, \
		min_distance = 0 \
)
*/

/datum/quirk/friendly
	name = "Friendly"
	desc = "I give the best hugs. When I're in the right mood, my squeezes can cheer up those around I. Unless they don't, but that's okay. :)"
	value = 14
	category = "Emotional Quirks"
	mechanics = "My hugs give a bonus mood boost on top of the normal boost from hugging."
	conflicts = list(
		/datum/quirk/depression,
		/datum/quirk/pessimist,
	) //apathetic, and the negative emotional quirks
	mob_trait = TRAIT_FRIENDLY
	gain_text = span_notice("I feel confident in my ability to comfort others.")
	lose_text = span_danger("I no longer feel confident in my ability to comfort others.")
	mood_quirk = TRUE
	medical_record_text = "Patient demonstrates low-inhibitions for physical contact and well-developed arms. Requesting another doctor take over this case."

/*
/datum/quirk/jolly
	name = "Mood - Sanguine"
	desc = "I sometimes just feel happy, for no reason at all. Gives mood buffs, occasionally."
	value = 40
	category = "Emotional Quirks"
	mechanics = "I have a small chance every game tick to gain a massive mood boost. This can effect speed, and even how hard it is to put I down in crit."
	conflicts = list(
		/datum/quirk/apathetic,
		/datum/quirk/depression,
		/datum/quirk/pessimist,
		/datum/quirk/optimist,
	) //negative mood quirks
	mob_trait = TRAIT_JOLLY
	mood_quirk = TRUE
	medical_record_text = "Patient demonstrates constant euthymia irregular for environment. It's a bit much, to be honest."

/datum/quirk/jolly/on_process()
	if(prob(0.05))
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, "jolly", /datum/mood_event/jolly)
*/

/datum/quirk/optimist
	name = "Mood - Optimist"
	desc = "I sometimes just feel kind of happy, for no reason at all. Gives small mood buffs, occasionally."
	value = 20
	category = "Emotional Quirks"
	mechanics = "I have a small chance every game tick to gain a decent mood boost. This can effect speed, and even how hard it is to put me down in crit."
	conflicts = list(
		/datum/quirk/depression,
		/datum/quirk/pessimist,
	)
	mob_trait = TRAIT_OPTIMIST
	mood_quirk = TRUE
	medical_record_text = "Patient demonstrates occasional euthymia irregular for environment. Lucky them."

/datum/quirk/optimist/on_process()
	if(prob(0.05))
		SEND_SIGNAL(quirk_holder, COMSIG_ADD_MOOD_EVENT, "optimist", /datum/mood_event/optimism)

/*
/datum/quirk/light_step
	name = "Light Step"
	desc = "I walk with a gentle step; stepping on sharp objects is quieter, less painful and I won't leave footprints behind I."
	value = 14
	category = "Movement Quirks"
	mechanics = "I make less noise when stepping on glass. I still take damage without shoes though."
	conflicts = list(
		/datum/quirk/clumsy,
		/datum/quirk/overweight,
	)
	mob_trait = TRAIT_LIGHT_STEP
	gain_text = span_notice("I walk with a little more litheness.")
	lose_text = span_danger("I start tromping around like a barbarian.")
	medical_record_text = "Patient's dexterity belies a strong capacity for stealth."
*/

/*
/datum/quirk/treasurehunter 
	name = "Treasure Hunter" //Used for digging up loot spawners, I can already do this with beastmaster rat, this just streamlines it
	desc = "I am skilled at digging up resources from underground, requiring nothing but my bare hands, mouth, or a trusty shovel!" 
	value = 22
	category = "Lifepath Quirks"
	mechanics = "Allows I to craft loot spawners for free in the misc catagory, at the cost of time."
	conflicts = list(

	)
	mob_trait = TRAIT_TREASURE_HUNTER
	gain_text = span_notice("I really feel like digging.")
	lose_text = span_notice("I really don't feel like digging.")
	medical_record_text = "Patient really likes to eat dirt" // Nobody reads these anyway
	human_only = FALSE*/// The crafting menu __NEEDS__ to be fixed so I cant queue up recipes multiple times first


/datum/quirk/musician
	name = "Musician"
	desc = "I can tune instruments to play melodies that clear certain negative effects and can soothe the soul, I even get one of my instruments for free!"
	value = 14
	category = "Lifepath Quirks"
	mechanics = "I spawn with an instrument & tuner. If I use a tuned instrument then I apply a healing chem to those that hear it. Over time this healing chem can build up in thei system to create an even bigger healing effect. It even stacks with other musicians!"
	conflicts = list(

	)
	mob_trait = TRAIT_MUSICIAN
	gain_text = span_notice("I know everything about musical instruments.")
	lose_text = span_danger("I forget how musical instruments work.")
	medical_record_text = "Patient brain scans show a highly-developed auditory pathway."
	human_only = FALSE

/datum/quirk/musician/on_spawn()
	var/mob/living/H = quirk_holder
	var/obj/item/choice_beacon/music/B = new(get_turf(H))
	H.put_in_hands(B)
	H.equip_to_slot_if_possible(B, SLOT_IN_BACKPACK)
	var/obj/item/musicaltuner/musicaltuner = new(get_turf(H))
	H.put_in_hands(musicaltuner)
	H.equip_to_slot_if_possible(musicaltuner, SLOT_IN_BACKPACK)
	if(ishuman(quirk_holder))
		H.regenerate_icons()
	else
		H.update_icons()

/*
/datum/quirk/magehand
	name = "Mage hand"
	desc = "I gain the ability to use the magehand, a spell to manipulate things around I, and create sparkles!"
	value = 32
	category = "Magic Quirks"
	mechanics = "I spawn with a DNA injector that grants me the magehand ability, be sure to inject it. Remember I cant grab anything bigger than small items!"
	conflicts = list(

	)
	human_only = FALSE

/datum/quirk/magehand/on_spawn()
	var/mob/living/H = quirk_holder
	var/obj/item/dnainjector/telemut/B = new(get_turf(H))
	H.put_in_hands(B)
	H.equip_to_slot_if_possible(B, SLOT_IN_BACKPACK)
	if(ishuman(quirk_holder))
		H.regenerate_icons()
	else
		H.update_icons()
*/

/* //placeholder test concluded
/datum/quirk/wizard
	name = "Wasteland Wizard"
	desc = "I're a wizard, Harry. Spell trained for who knows how long, or naturally inclined. I can't use guns, but I sure can do some other shit. This isn't a lisence to be a greifer or break rules. "
	value = 4
	category = ""
	mechanics = ""
	conflicts = list(

	)
	mob_trait = TRAIT_SWAMPWIZARD
	gain_text = span_notice("I know everything about magic.")
	lose_text = span_danger("I forgor how the magic.")

/datum/quirk/wizard/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/spellbook/B = new(get_turf(H))
	H.put_in_hands(B)
	H.regenerate_icons()
*/

/*
/datum/quirk/selfaware
	name = "Self-Aware"
	desc = "I know my body well, and can accurately assess the extent of my wounds. Sort of like being a medical scanner for myself."
	value = 14
	category = "Emotional Quirks"
	mechanics = "I know, to the number, how much damage I've taken."
	conflicts = list(

	)
	mob_trait = TRAIT_SELF_AWARE
	gain_text = span_notice("I feel deeply aware of my body.")
	lose_text = span_danger("I lose touch with myself.")
	medical_record_text = "Patient demonstrates an uncanny knack for self-diagnosis."
*/

/*
/datum/quirk/skittish
	name = "Skittish"
	desc = "I am just the skittish sort. Tending to disappear when the lights turn on, or jumping when I hear a leaf crunch."
	value = 14
	category = "Movement Quirks"
	mechanics = "With ctrl + shift + click I can hop into lockers, dumpsters, and trash cans. Good for if I hear footsteps and want to not be seen."
	conflicts = list(

	)
	mob_trait = TRAIT_SKITTISH
	gain_text = span_notice("I feel like hiding all of a sudden.")
	lose_text = span_danger("I feel comfortable with the world, so much for hiding.")
	medical_record_text = "Patient demonstrates a high aversion to danger and has described hiding in containers out of fear."
*/

/datum/quirk/spiritual
	name = "Spiritual"
	desc = "I're in tune with the gods, and my prayers may be more likely to be heard. Or not."
	value = 8
	category = "Functional Quirks"
	mechanics = "My prayers trigger the same noise for admins that a preachers prayers would, meaning they're more likely to pay attention to them. That doesn't mean it will be positive attention though."
	conflicts = list(

	)
	mob_trait = TRAIT_SPIRITUAL
	gain_text = span_notice("I feel a little more faithful to the gods today.")
	lose_text = span_danger("I feel less faithful in the gods.")
	medical_record_text = "Patient reports a belief in a higher power."
	human_only = FALSE

/*
/datum/quirk/tagger
	name = "Tagger"
	desc = "I're an experienced artist. Or, at least I know how to make every drop of paint count."
	value = 0
	category = "Lifepath Quirks"
	mechanics = "I get twice as many uses out of drawing supplies, like spray paint cans! Remember, we have a persistent painting system."
	conflicts = list(

	)
	mob_trait = TRAIT_TAGGER
	gain_text = span_notice("I know how to tag walls efficiently.")
	lose_text = span_danger("I forget how to tag walls properly.")
	medical_record_text = "Patient was recently seen for possible paint huffing incident."

/datum/quirk/tagger/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/toy/crayon/spraycan/spraycan = new(get_turf(H))
	H.put_in_hands(spraycan)
	H.equip_to_slot(spraycan, SLOT_IN_BACKPACK)
	H.regenerate_icons()

/datum/quirk/technophreak
	name = "Technophreak"
	desc = "I're skilled at breaking down old-war rubble more precisely and therefor I gain more salvage from cars and piles than before. my time with understanding complex technology also \
	allows I to craft more complex machine parts."
	value = 32
	category = "Tech Quirks"
	mechanics = "I gain 1 to 3 extra scrap from cars and other scrapping resources, with a +1 on top of all scrap as well. As well as gaining access to a decent list of fancy recipes for crafting, like energy weapon cells."
	conflicts = list(
		/datum/quirk/tribal,
		/datum/quirk/dumb,
		/datum/quirk/luddite,
		/datum/quirk/primitive,

		)
	mob_trait = TRAIT_TECHNOPHREAK
	gain_text = span_notice("Old-War rubble seems considerably more generous to I.")
	lose_text = span_danger("Old-War rubble suddenly seems less generous to I.")
	medical_record_text = "Patient appears to really enjoy dismantling old junk."
	human_only = FALSE

/datum/quirk/technophreak/add()
	var/mob/living/carbon/human/H = quirk_holder
	// I made the quirks add the same recipes as the trait books. Feel free to nerf this
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.tier_three_parts
	H.mind.learned_recipes |= GLOB.energyweapon_cell_crafting
	H.mind.learned_recipes |= GLOB.energyweapon_crafting
	H.mind.learned_recipes |= GLOB.pa_repair
	H.mind.learned_recipes |= GLOB.armored_hazard_suit

/datum/quirk/technophreak/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.mind.learned_recipes -= GLOB.tier_three_parts
		H.mind.learned_recipes -= GLOB.energyweapon_cell_crafting
		H.mind.learned_recipes -= GLOB.energyweapon_crafting
		H.mind.learned_recipes -= GLOB.pa_repair
		H.mind.learned_recipes -= GLOB.armored_hazard_suit

/datum/quirk/crafty
	name = "Crafty"
	desc = "I am able to craft without the necessities provided by a traditional workbench."
	value = 25
	category = "Lifepath Quirks"
	mechanics = "I do not need a workbench or alchemy table when crafting."
	human_only = FALSE
/datum/quirk/crafty/on_spawn()
	var/mob/living/H = quirk_holder
	new /obj/machinery/workbench(H)
	new /obj/machinery/chem_master/primitive(H)
*/

/*
/datum/quirk/gunsmith
	name = "Weaponsmith - Basic"
	desc = "I know how to make various weapons, protective vests, gun mods, and can now forge weapons at an anvil. The list is too large to try and put here."
	value = 14
	category = "Crafting Quirks"
	mechanics = "I gain access to our weapon smithing system. A decent amount of recipes for things I can use, or sell!"
	conflicts = list(

	)

	mob_trait = TRAIT_WEAPONSMITH
	gain_text = span_notice("I am adept at crafting makeshift weapons.")
	lose_text = span_danger("I seem to have forgotten how to craft makeshift weapons...")
	medical_record_text = "Patient appears to enjoy tinkering with custom guns."

/datum/quirk/gunsmith/add()
	var/mob/living/carbon/human/H = quirk_holder
	// I made the quirks add the same recipes as the trait books. Feel free to nerf this
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.weaponcrafting_gun_recipes
	H.mind.learned_recipes |= GLOB.weapons_of_texarkana

/datum/quirk/gunsmith/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.mind.learned_recipes -= GLOB.weaponcrafting_gun_recipes

/datum/quirk/masterworksmith
	name = "Weaponsmith - Masterwork"
	desc = "My smithed weapons now do extra damage. Requires Weaponsmith - Basic in order to benefit from!"
	value = 28
	category = "Crafting Quirks"
	mechanics = "I am a MASTER weapon smith, gaining access to the ability to craft masterwork weapons with our crafting system."
	conflicts = list(

	)
	mob_trait = TRAIT_MASTERWORKSMITH
	gain_text = span_notice("My smithed weapons will now be of masterwork quality.")
	lose_text = span_danger("I seem less adept at crafting masterworks.")
	medical_record_text = "Patient appears to be a well renowned gunsmith."
*/


/datum/quirk/voracious
	name = "Bottomless Stomach"
	desc = "Nothing gets between I and my food. I eat twice as fast as everyone else!"
	value = 0
	category = "Food Quirks"
	mechanics = "I never feel full! I can keep on eating, and eating, and eating... For better or worse."
	conflicts = list()
	mob_trait = TRAIT_VORACIOUS
	gain_text = span_notice("I feel HONGRY.")
	lose_text = span_danger("I no longer feel HONGRY.")
	medical_record_text = "Patient demonstrates a disturbing capacity for eating. Please, make sure they don't eat my lunch again."
//butts

/*
/datum/quirk/bloodpressure
	name = "Extra Blood"
	desc = "I've a treated form of Polycythemia vera that increases the total blood volume inside of I as well as the rate of replenishment!"
	value = 20 //I honeslty dunno if this is a good trait? I just means I use more of medbays blood and make janitors madder, but I also regen blood a lil faster.
	category = "Health Quirks"
	mechanics = "I blood ratio, and volume, are both higher than average. Meaning that I will survive blood loss wounds for longer, and more comfortably."
	conflicts = list(
		/datum/quirk/blooddeficiency,
	)
	mob_trait = TRAIT_HIGH_BLOOD
	gain_text = span_notice("I feel full of blood!")
	lose_text = span_notice("I feel like my blood pressure went down.")
	medical_record_text = "Patient's blood tests report an abnormal concentration of red blood cells in their bloodstream."

/datum/quirk/bloodpressure/add()
	quirk_holder.blood_ratio = 1.2
	quirk_holder.blood_volume += 150

/datum/quirk/bloodpressure/remove()
	if(quirk_holder)
		quirk_holder.blood_ratio = 1


//Can be turned into an alchemist quirk?
/datum/quirk/tribal_tech
	name = "Primitive Tech"
	desc = "I're able to use primitive technology."
	value = 14
	category = "Tech Quirks"
	mechanics = "I gain access to tribal chemmasters to make potions and poisons."
	conflicts = list(

	)
	mob_trait = TRAIT_MACHINE_SPIRITS
	gain_text = span_notice("I am now able to use primitive technology.")
	lose_text = span_danger("I am no longer able to use primitive technology.")
	medical_record_text = "Patient appears to have a knack for bushcraft."
	locked = TRUE
	human_only = FALSE


/datum/quirk/dna_whiz
	name = "Dna Whiz"
	desc = "I can sequence plant genomes with a snap of my fingers!"
	value = 32
	category = "Tech Quirks"
	mechanics = "I can use plant dna machines, for one reason or another."
	conflicts = list(
		/datum/quirk/tribal,
		/datum/quirk/dumb,
		/datum/quirk/luddite,
		/datum/quirk/primitive,
	)
	mob_trait = TRAIT_DNAWHIZ
	gain_text = span_notice("I know how plants work!")
	lose_text = span_danger("I forgot how plants work... somehow.")
*/

/*
/datum/quirk/night_vision
	name = "Dark Vision - Minor"
	desc = "I can see a small distance around I in full darkness compared to most people by two whole tiles."
	value = 22
	category = "Vision Quirks"
	mechanics = "I can see two more tiles in the dark compared to others without a light source."
	conflicts = list(
		/datum/quirk/blindness,
		/datum/quirk/night_vision_greater,
	)
	mob_trait = TRAIT_NIGHT_VISION
	gain_text = span_notice("The shadows seem a little less dark.")
	lose_text = span_danger("Everything seems a little darker.")
	medical_record_text = "Patient claims they can see in the dark."
	human_only = FALSE

/datum/quirk/night_vision/on_spawn()
	quirk_holder.update_sight()

/datum/quirk/night_vision/remove()
	quirk_holder.update_sight()

/datum/quirk/night_vision_greater
	name = "Dark Vision - Greater"
	desc = "I can see a much further distance in full darkness compared to most people by four more whole tiles."
	value = 44
	category = "Vision Quirks"
	mechanics = "I can see four more tiles in the dark compared to others without a light source."
	conflicts = list(
		/datum/quirk/blindness,
		/datum/quirk/night_vision,
	)
	mob_trait = TRAIT_NIGHT_VISION_GREATER
	gain_text = span_notice("The shadows seem a a lot less dark.")
	lose_text = span_danger("Everything seems a lot darker.")
	medical_record_text = "Patient claims that they have night vision."
	human_only = FALSE

/datum/quirk/night_vision_greater/on_spawn()
	quirk_holder.update_sight()

/datum/quirk/night_vision_greater/remove()
	quirk_holder.update_sight()
*/

/*
/datum/quirk/nukalover
	name = "Cola Fiend"
	desc = "I just can't get enough of that hyper-sweetened, tooth-rotting, waistline-widening, pancreas-pummeling sodapop! \
		So much so that my body has adapted to the sugars and artificial flavorings, processing those calories into healing energy. \
		Won't do much for that waistline, though."
	value = 22
	category = "Food Quirks"
	mechanics = "Various sodapop-derived drinks will provide (usually minor) healing, typically based on their complexity."
	conflicts = list(
		/datum/quirk/vegetarian,
		/datum/quirk/no_taste,
	)
	mob_trait = TRAIT_NUKA_LOVER
	gain_text = span_notice("I want to buy the whole world a cosmic-cola!")
	lose_text = span_danger("What's the big deal about cosmic-cola?")
	medical_record_text = "Patient has an addiction to the soft drink Cosmic-Cola. Somehow, their metabolism has adapted to the sugars and artifical flavorings."

/datum/quirk/nukalover/add()
	if(!ishuman(quirk_holder))
		to_chat(quirk_holder, span_warning("I suddenly remember an article in Cat Fancy about how sodie pop can cause liver damage and cancer of the rectum. Might be best to lay off the stuff (especially since I kinda cant actually drink it, not being a human and all)."))
		return
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.liked_food |= NUKA
	species.disliked_food |= VEGETABLES
	var/obj/item/organ/sodie_organ/gibb = new(H)
	gibb.Insert(H)

/datum/quirk/nukalover/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		var/datum/species/species = H.dna.species
		species.liked_food = initial(species.liked_food)
		species.disliked_food = initial(species.disliked_food)
		var/obj/item/organ/sodie_organ/gibb = H.getorganslot(ORGAN_SLOT_SODIE_ORGAN)
		if(gibb)
			qdel(gibb)
*/

/datum/quirk/prisonpocket
	name = "Sleight of Hand"
	desc = "I'm really good with my hands. I can even conceal some objects on my person without them being found, kind of good."
	value = 8
	category = "Functional Quirks"
	mechanics = "I have an innate, untraceable storage that can contain up to two normal sized items."
	gain_text = span_notice("I feel like I could make a couple things... disappear!")
	lose_text = span_warning("My hands feel a little slower.")
	conflicts = list(
	)
	mob_trait = TRAIT_SOH

/datum/quirk/prisonpocket/on_spawn()
	if(!ishuman(quirk_holder))
		to_chat(quirk_holder, span_warning("My lack of hands makes it impossible to stealthily hide items."))
		return
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/implant/storage/soh = new(get_turf(H))
	soh.implant(H, null, TRUE)

/datum/quirk/prisonpocket/remove()
	var/obj/item/implant/storage/soh = quirk_holder.getImplant(/obj/item/implant/storage)
	if(soh)
		qdel(soh)

/*
//Butcher quirk
/datum/quirk/trapper
	name = "Trapper"
	desc = "As an experienced hunter and trapper I know my way around butchering animals for their products."
	value = 14
	category = "Lifepath Quirks"
	mechanics = "I get double the amount of usable materials when I butcher with a sharp object via harm intent."
	conflicts = list(
	)
	mob_trait = TRAIT_TRAPPER
	gain_text = span_notice("I learn the secrets of butchering!")
	lose_text = span_danger("I forget how to slaughter animals.")
	medical_record_text = "Patient often describes how they clean and skin animals."
	locked = FALSE
	human_only = FALSE


/datum/quirk/bigleagues
	name = "Melee - Big Leagues"
	desc = "Swing for the fences! I deal even more additional damage with melee weapons."
	value = 65
	category = "Melee Quirks"
	mechanics = "I do an extra 10 damage with all melee attacks."
	conflicts = list( //little leagues, and the negative quriks
		/datum/quirk/littleleagues,
	)
	mob_trait = TRAIT_BIG_LEAGUES
	gain_text = span_notice("I feel like swinging for the fences!")
	lose_text = span_danger("I feel like bunting.")
	medical_record_text = "Patient appears to have incredible upper body strength."
	locked = FALSE
	human_only = FALSE

/datum/quirk/littleleagues
	name = "Melee - Little Leagues"
	desc = "Swing for the outfield! I deal additional damage with melee weapons."
	value = 32
	category = "Melee Quirks"
	mechanics = "I do an extra 5 damage with all melee attacks."
	conflicts = list(
		/datum/quirk/bigleagues,
	)
	mob_trait = TRAIT_LITTLE_LEAGUES
	gain_text = span_notice("I feel like swinging for the outfield!")
	lose_text = span_danger("I feel like skipping practice.")
	medical_record_text = "Patient appears to have above average upper body strength."
	locked = FALSE
	human_only = FALSE


/datum/quirk/chemwhiz
	name = "Chem Whiz"
	desc = "I've been playing around with chemicals all my life. I know how to use chemistry machinery."
	value = 32
	category = "Crafting Quirks"
	mechanics = "I gain access to normal chemistry machines."
	conflicts = list(
		/datum/quirk/tribal,
		/datum/quirk/dumb,
		/datum/quirk/luddite,
		/datum/quirk/primitive,
	)
	mob_trait = TRAIT_CHEMWHIZ
	gain_text = span_notice("The mysteries of chemistry are revealed to I!")
	lose_text = span_danger("I forget how water boils.")
	medical_record_text = "Patient appears to use pharmaceutical labels for OTC drugs."
	locked =  FALSE
	human_only = FALSE

/datum/quirk/chemwhiz/add()
	var/mob/living/carbon/human/H = quirk_holder
	// I made the quirks add the same recipes as the trait books. Feel free to nerf this
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.chemwhiz_recipes

/datum/quirk/chemwhiz/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.mind.learned_recipes -= GLOB.chemwhiz_recipes


/datum/quirk/pa_wear
	name = "Power Armor Crafting"
	desc = "I've been around the wastes and have learned the wonders of crafting high tech armor from somewhere or something."
	value = 32
	category = "Lifepath Quirks"
	mechanics = "I can craft powerarmor, anyone can wear it though."
	conflicts = list(
	)
	mob_trait = TRAIT_PA_WEAR
	gain_text = span_notice("I realize how to use Power Armor.")
	lose_text = span_danger("I forget how Power Armor works...")
	medical_record_text = "Patient claims to wear a powerful suit of metal."
	locked = FALSE


/datum/quirk/hard_yards
	name = "Mobility - Wasteland Trekker"
	desc = "I've spent a lot of time wandering the wastes, and for my hard work I out pace most folks when travelling across them."
	value = 55
	category = "Movement Quirks"
	mechanics = "I am not slowed at all by going off roads or paths."
	conflicts = list(
		/datum/quirk/soft_yards,
		/datum/quirk/slower,
		/datum/quirk/slow,
		/datum/quirk/paraplegic,
	)
	mob_trait = TRAIT_HARD_YARDS
	gain_text = span_notice("Rain or shine, nothing slows I down!")
	lose_text = span_danger("The world beneath my heels suddenly feels like its pinning I down...")
	medical_record_text = "Patient describes going on hikes very often."
	locked = FALSE

/datum/quirk/soft_yards
	name = "Mobility - Wasteland Wanderer"
	desc = "I've spent some time in the wastes, and can move a bit better around them for it."

	value = 22
	category = "Movement Quirks"
	mechanics = "I am only slowed somewhat by going off roads or paths."
	conflicts = list(
		/datum/quirk/hard_yards,
		/datum/quirk/slower,
		/datum/quirk/slow,
		/datum/quirk/paraplegic,
	)
	mob_trait = TRAIT_SOFT_YARDS
	gain_text = span_notice("Rain or shine only slow I down a little.")
	lose_text = span_danger("The world beneath my heels suddenly feels like tugging I down...")
	medical_record_text = "Patient describes going on walks."
	locked = FALSE


/datum/quirk/lifegiver
	name = "Health - Tough"
	desc = "I embody wellness! "
	value = 32
	category = "Health Quirks"
	mechanics = "I have +10 health. What this actually means is that I need to take ten more points of damage before I go into crit."
	conflicts = list(
		/datum/quirk/lifegiverplus,
	)
	mob_trait = TRAIT_LIFEGIVER
	gain_text = span_notice("I feel more durable.")
	lose_text = span_danger("I feel flimsy once more.")
	medical_record_text = "Patient has higher capacity for injury."
	locked = FALSE
	human_only = FALSE

/datum/quirk/lifegiver/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.maxHealth += 10
	H.health += 10

/datum/quirk/lifegiverplus
	name = "Health - Tougher"
	desc = "I embody wellness to the MAX! Instantly gain +20 maximum Health."
	value = 65
	category = "Health Quirks"
	mechanics = "I have +20 health. What this actually means is I need to take 20 more points of damage before I go into crit."
	conflicts = list(
		/datum/quirk/lifegiver,
	)
	mob_trait = TRAIT_LIFEGIVERPLUS
	gain_text = span_notice("I feel incredibly durable.")
	lose_text = span_danger("I feel noodly once more.")
	medical_record_text = "Patient has shown a significantly higher capacity for injury."
	locked = FALSE
	human_only = FALSE

/datum/quirk/lifegiverplus/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.maxHealth += 20
	H.health += 20


/datum/quirk/iron_fist
	name = "Fists of Iron"
	desc = "I have fists of kung-fury! Increases unarmed damage."
	value = 18
	category = "Hand to Hand Quirks"
	mechanics = "My punches do 6 to 12 damage."
	conflicts = list(
		/datum/quirk/nonviolent,
		/datum/quirk/steel_fist,
		/datum/quirk/noodle_fist,
	)
	mob_trait = TRAIT_IRONFIST
	gain_text = span_notice("My fists feel furious!")
	lose_text = span_danger("My fists feel calm again.")
	medical_record_text = "Patient has claimed to have accidentally break pencils when holding them."
	locked = FALSE

/datum/quirk/iron_fist/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.dna.species.punchdamagelow = IRON_FIST_PUNCH_DAMAGE_LOW
	H.dna.species.punchdamagehigh = IRON_FIST_PUNCH_DAMAGE_MAX

/datum/quirk/steel_fist
	name = "Fists of Steel"
	desc = "I have MASSIVE fists of kung-fury! Even MORE increases unarmed damage."
	value = 36
	category = "Hand to Hand Quirks"
	mechanics = "My punches do 10 to 16 damage, yeowch!"
	conflicts = list(
		/datum/quirk/nonviolent,
		/datum/quirk/iron_fist,
		/datum/quirk/noodle_fist,
	)
	mob_trait = TRAIT_STEELFIST
	gain_text = span_notice("My fists feel MASSIVELY furious!")
	lose_text = span_danger("My fists feel calm again, what a relief.")
	medical_record_text = "Patient has accidentally destroyed the door handle to my office. A replacement is needed."
	locked = FALSE

/datum/quirk/steel_fist/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.dna.species.punchdamagelow = STEEL_FIST_PUNCH_DAMAGE_LOW
	H.dna.species.punchdamagehigh = STEEL_FIST_PUNCH_DAMAGE_MAX


/datum/quirk/surgerylow
	name = "Minor Surgery"
	desc = "I am a somewhat adequate medical practicioner, capable of performing minor surgery in a pinch."
	value = 11
	category = "Medical Quirks"
	mechanics = "I gain access to most surgeries, only being limited on brain surgery essentially."
	conflicts = list(
		/datum/quirk/surgerymid,
		/datum/quirk/surgeryhigh
	)
	mob_trait = TRAIT_SURGERY_LOW
	gain_text = span_notice("I feel myself discovering the basics of the body.")
	lose_text = span_danger("I forget how to perform even the simplest of surgery.")
	medical_record_text = "Patient exudes some knowlegde on operation sanitation procedures."
	locked = FALSE
	human_only = FALSE

/datum/quirk/surgerymid
	name = "Advanced Surgery"
	desc = "I am a competent medical practicioner, capable of performing a larger array of surgeries."
	value = 33
	category = "Medical Quirks"
	mechanics = "I gain access to most surgeries, and advanced wound tending surgeries."
	conflicts = list(
		/datum/quirk/surgeryhigh,
		/datum/quirk/surgerylow
	)
	mob_trait = TRAIT_SURGERY_MID
	gain_text = span_notice("I feel myself discovering the inner workings of the body.")
	lose_text = span_danger("I forget how to perform even the simplest of surgery.")
	medical_record_text = "Patient is claimed to be an competent surgeon."
	locked = FALSE
	human_only = FALSE

/datum/quirk/surgeryhigh
	name = "Expert Surgery"
	desc = "I am a well established surgeon. I can perform most, if not all, surgeries."
	value = 66
	category = "Medical Quirks"
	mechanics = "I gain access to most surgeries, particularly expert wound tending surgeries."
	conflicts = list(
		/datum/quirk/surgerylow,
		/datum/quirk/surgerymid
	)
	mob_trait = TRAIT_SURGERY_HIGH
	gain_text = span_notice("I feel myself discovering everything about the body!")
	lose_text = span_danger("I forget how to perform even the simplest of surgery.")
	medical_record_text = "Patient is a renown surgeon."
	locked = FALSE
	human_only = FALSE


/datum/quirk/explosive_crafting
	name = "Explosives Crafting"
	desc = "I have strong feelings about the future of industrial society."
	value = 14
	category = "Crafting Quirks"
	mechanics = "I gain access to the recipes to make all sorts of explosives, including mines!"
	conflicts = list( //dumb

	)
	mob_trait = TRAIT_EXPLOSIVE_CRAFTING
	gain_text = span_notice("I feel like I can make a bomb out of anything.")
	lose_text = span_danger("I feel okay with the advancement of technology.")
	medical_record_text = "Patient claims to enjoy making pipe bombs."
	locked = FALSE
	human_only = FALSE

/datum/quirk/explosive_crafting/add()
	var/mob/living/carbon/human/H = quirk_holder
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	// I made the quirks add the same recipes as the trait books. Feel free to nerf this
	H.mind.learned_recipes |= GLOB.basic_explosive_recipes
	H.mind.learned_recipes |= GLOB.adv_explosive_recipes
	H.mind.learned_recipes |= GLOB.minelaying_recipe

/datum/quirk/explosive_crafting/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.mind.learned_recipes -= GLOB.basic_explosive_recipes
		H.mind.learned_recipes -= GLOB.adv_explosive_recipes
*/

/*
/datum/quirk/improved_heal
	name = "Improved Innate Healing"
	desc = "I have a deeper reservoir for innate healing, whether it's through magic, medical tending, or licking. Check the neutral traits for these abilities."
	value = 32
	category = "Healer Quirks"
	mechanics = "My innate healing functions now have 25 uses instead of only 5. They will still regenerate at the same speed though."
	conflicts = list(

	)
	mob_trait = TRAIT_IMPROVED_HEALING
	gain_text = span_notice("I feel well hydrated.")
	lose_text = span_danger("I feel rather dry.")
	medical_record_text = "Patient exudes a rather invigorating aura. Further study is required."
	locked = FALSE
	human_only = FALSE
*/

/*
/datum/quirk/lick_bandage
	name = "Sanguine Saliva"
	desc = "My saliva has a mild coagulating effect on open bleeding wounds. Use *lick to lick my lacerations."
	value = 2
	category = ""
	mechanics = ""
	conflicts = list(

	)
	mob_trait = TRAIT_BANDAGE_TONGUE
	gain_text = span_notice("My mouth feels a bit gummy.")
	lose_text = span_danger("The gumminess in my mouth fades.")
	locked = FALSE

/datum/quirk/lick_bandage/on_spawn()
	var/mob/living/carbon/human/human_holder = quirk_holder
	var/obj/item/organ/tongue/our_tongue = human_holder.getorganslot(ORGAN_SLOT_TONGUE)
	if(!our_tongue)
		return //welp
	our_tongue.initialize_bandage(/obj/item/stack/medical/gauze/lick)

/datum/quirk/lick_bandage/remove()
	var/mob/living/carbon/human/human_holder = quirk_holder
	var/obj/item/organ/tongue/our_tongue = human_holder.getorganslot(ORGAN_SLOT_TONGUE)
	if(!our_tongue)
		return //welp
	QDEL_NULL(our_tongue.lick_bandage)
*/
// This does the same thing as basic explosive crafting by giving basic_recipe and adv_recipe. -Possum
/*
/datum/quirk/advanced_explosive_crafting
	name = "Advanced Explosive Crafting"
	desc = "Decades of engineering knowledge have taught I to make all kinds of horrible explosives."
	value = 1
	category = ""
	mechanics = ""
	conflicts = list(

	)
	mob_trait = TRAIT_ADVANCED_EXPLOSIVE_CRAFTING
	gain_text = span_notice("I're on the no-fly list.'")
	lose_text = span_danger("I feel like I're allowed to fly on planes again.")
	locked = TRUE

/datum/quirk/advanced_explosive_crafting/add()
	var/mob/living/carbon/human/H = quirk_holder
	// I made the quirks add the same recipes as the trait books. Feel free to nerf this
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.basic_explosive_recipes
	H.mind.learned_recipes |= GLOB.adv_explosive_recipes

/datum/quirk/advanced_explosive_crafting/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.mind.learned_recipes -= GLOB.basic_explosive_recipes
		H.mind.learned_recipes -= GLOB.adv_explosive_recipes
*/

/*
/datum/quirk/whitelegstraditions
	name = "Post Apocalyptic Tribal Traditions"
	desc = "I remember how to make my peoples ancient garments after all this time."
	value = 0
	category = "Crafting Quirks"
	mechanics = "I gain access to a massive amount of recipes involving numerous different Fallout tribes."
	conflicts = list()
	mob_trait = TRAIT_TRIBAL_TRAD
	gain_text = span_notice("The mysteries of my ancestors are revealed to I.")
	lose_text = span_danger("I forget how my ancestors have created their garments.")
	medical_record_text = "Patient appears to mention their ancestors decorataive looks."
	locked =  FALSE

/datum/quirk/whitelegstraditions/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/book/granter/trait/tribaltraditions/B = new(get_turf(H))
	H.put_in_hands(B)

/*
/datum/quirk/deadhorsestraditions
	name = "Dead Horses traditions"
	desc = "I remember how to make my peoples ancient garments after all this time."
	value = 0
	category = ""
	mechanics = ""
	conflicts = list(
		/datum/quirk/whitelegstraditions,
		/datum/quirk/rustwalkerstraditions,
		/datum/quirk/eightiestraditions,
		/datum/quirk/sorrowstraditions,
		/datum/quirk/wayfarertraditions,
		/datum/quirk/bonedancertraditions,
	)
	mob_trait = TRAIT_DEADHORSES_TRAD
	gain_text = span_notice("The mysteries of my ancestors are revealed to I.")
	lose_text = span_danger("I forget how my ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/rustwalkerstraditions
	name = "Rust Walkers traditions"
	desc = "I remember how to make my peoples ancient garments after all this time."
	value = 0
	category = ""
	mechanics = ""
	conflicts = list(
		/datum/quirk/whitelegstraditions,
		/datum/quirk/deadhorsestraditions,
		/datum/quirk/eightiestraditions,
		/datum/quirk/sorrowstraditions,
		/datum/quirk/wayfarertraditions,
		/datum/quirk/bonedancertraditions,
	)
	mob_trait = TRAIT_RUSTWALKERS_TRAD
	gain_text = span_notice("The mysteries of my ancestors are revealed to I.")
	lose_text = span_danger("I forget how my ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/rustwalkerstraditions/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_RUSTWALKERS_TRAD, "Rustwalker Traditions")
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.rustwalkers_traditions_recipes

/datum/quirk/rustwalkerstraditions/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_RUSTWALKERS_TRAD, "Rustwalker Traditions")
	H.mind.learned_recipes -= GLOB.rustwalkers_traditions_recipes

/datum/quirk/eightiestraditions
	name = "Eighties traditions"
	desc = "I remember how to make my peoples ancient garments after all this time."
	value = 0
	category = ""
	mechanics = ""
	conflicts = list(
		/datum/quirk/whitelegstraditions,
		/datum/quirk/deadhorsestraditions,
		/datum/quirk/rustwalkerstraditions,
		/datum/quirk/sorrowstraditions,
		/datum/quirk/wayfarertraditions,
		/datum/quirk/bonedancertraditions,
	)
	mob_trait = TRAIT_EIGHTIES_TRAD
	gain_text = span_notice("The mysteries of my ancestors are revealed to I.")
	lose_text = span_danger("I forget how my ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/eightiestraditions/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_EIGHTIES_TRAD, "Eighties Traditions")
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.eighties_traditions_recipes

/datum/quirk/rustwalkerstraditions/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_EIGHTIES_TRAD, "Eighties Traditions")
	H.mind.learned_recipes -= GLOB.eighties_traditions_recipes

/datum/quirk/sorrowstraditions
	name = "Sorrows traditions"
	desc = "I remember how to make my peoples ancient garments after all this time."
	value = 0
	category = ""
	mechanics = ""
	conflicts = list(
		/datum/quirk/whitelegstraditions,
		/datum/quirk/deadhorsestraditions,
		/datum/quirk/rustwalkerstraditions,
		/datum/quirk/eightiestraditions,
		/datum/quirk/wayfarertraditions,
		/datum/quirk/bonedancertraditions,
	)_trait = TRAIT_SORROWS_TRAD
	gain_text = span_notice("The mysteries of my ancestors are revealed to I.")
	lose_text = span_danger("I forget how my ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/wayfarertraditions
	name = "Wayfarer traditions"
	desc = "I remember how to make my peoples ancient garments after all this time."
	value = 0
	category = ""
	mechanics = ""
	conflicts = list(
		/datum/quirk/whitelegstraditions,
		/datum/quirk/deadhorsestraditions,
		/datum/quirk/rustwalkerstraditions,
		/datum/quirk/eightiestraditions,
		/datum/quirk/sorrowstraditions,
		/datum/quirk/bonedancertraditions,
	)
	mob_trait = TRAIT_WAYFARER_TRAD
	gain_text = span_notice("The mysteries of my ancestors are revealed to I.")
	lose_text = span_danger("I forget how my ancestors have created their garments.")
	locked =  FALSE

/datum/quirk/bonedancertraditions
	name = "Bone Dancer traditions"
	desc = "I remember how to make my peoples ancient garments after all this time."
	value = 0
	category = ""
	mechanics = ""
	conflicts = list(
		/datum/quirk/whitelegstraditions,
		/datum/quirk/deadhorsestraditions,
		/datum/quirk/rustwalkerstraditions,
		/datum/quirk/eightiestraditions,
		/datum/quirk/sorrowstraditions,
		/datum/quirk/wayfarertraditions,
	)
	mob_trait = TRAIT_BONEDANCER_TRAD
	gain_text = span_notice("The mysteries of my ancestors are revealed to I.")
	lose_text = span_danger("I forget how my ancestors have created their garments.")
	locked =  FALSE */

/datum/quirk/bonedancertraditions/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_BONEDANCER_TRAD, "Bone Dancer Traditions")
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.bonedancer_traditions_recipes

/datum/quirk/bonedancertraditions/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_BONEDANCER_TRAD, "Bone Dancer Traditions")
	H.mind.learned_recipes -= GLOB.bonedancer_traditions_recipes
*/

/datum/quirk/brickwall
	name = "Brick wall"
	desc = "I just don't move when people try to push me out of the way, for whatever reason."
	value = 14
	category = "Movement Quirks"
	mechanics = "I am treated as being in harm intent at all times when it comes to people moving through my space."
	conflicts = list( //health flimsy maybe? Maybe not though?  idk

	)
	mob_trait = TRAIT_PUSHIMMUNE
	gain_text = span_notice("I feel stronger than a brick wall.")
	lose_text = span_danger("I feel like I could get thrown down again.")
	medical_record_text = "Patient appears to exude a personal space bubble."
	locked =  FALSE
	human_only = FALSE

/* Removed due to lack of atmos lol ~TK
/datum/quirk/heatresist
	name = "Heat Resistant"
	desc = "Heat doesn't bother I too much."
	value = 1
	category = ""
	mechanics = ""
	conflicts = list(

	)
	mob_trait = TRAIT_RESISTHEAT
	gain_text = span_notice("It could be a little warmer in here.")
	lose_text = span_danger("I know? Being hot kind of sucks actually.")
	locked =  FALSE

/datum/quirk/coldresist
	name = "Cold Resistant"
	desc = "Cold doesn't bother I too much."
	value = 1
	category = ""
	mechanics = ""
	conflicts = list(

	)
	mob_trait = TRAIT_RESISTCOLD
	gain_text = span_notice("It could be a little colder in here.")
	lose_text = span_danger("I know? Being cold kind of sucks actually.")
	locked =  FALSE
*/

/* /datum/quirk/radimmune
	name = "Radiation - Immune"
	desc = "Gieger Counters are for suckers."
	value = 5
	category = ""
	mechanics = ""
	conflicts = list(

	)
	mob_trait = TRAIT_RADIMMUNE
	gain_text = span_notice("I've decided radiation just doesn't matter.")
	lose_text = span_danger("I no longer feel like I could probably live in a microwave while its on.")
	locked =  FALSE */

/*
/datum/quirk/radimmuneish
	name = "Radiation - Mostly Immune"
	desc = "Gieger Counters are for suckers, mostly."
	value = 40
	category = "Radiation Quirks"
	mechanics = "Who needs a geiger counter? Gives 75% innate rad resist."
	conflicts = list(
		/datum/quirk/radimmunesorta,
		/datum/quirk/radweakmajor,
		/datum/quirk/radweak
	)
	mob_trait = TRAIT_75_RAD_RESIST
	gain_text = span_notice("I've decided that radiation is an afterthought.")
	lose_text = span_danger("I feel like radiation is very important to I again.")
	medical_record_text = "Patient appears to be incredibly resilient to a large amount of radiation. X-Ray scans near impossible."
	locked =  FALSE

/datum/quirk/radimmunesorta
	name = "Radiation - Sorta Immune"
	desc = "Gieger Counters are for suckers, sorta. Gives 50% innate rad resist."
	value = 20
	category = "Radiation Quirks"
	mechanics = "I only absorb half of all radiation."
	conflicts = list(
		/datum/quirk/radimmuneish,
		/datum/quirk/radweakmajor,
		/datum/quirk/radweak
	)
	mob_trait = TRAIT_50_RAD_RESIST
	gain_text = span_notice("I've decided radiation has a weaker effect on I.")
	lose_text = span_danger("I no longer think I should hang out next to rad puddles.")
	medical_record_text = "Patient appears to be resilient to some radiation. X-Ray scans are fuzzy. "
	locked =  FALSE

/datum/quirk/nohunger
	name = "Does not Eat"
	desc = "I don't need to eat to live, lucky I."
	value = 14
	category = "Food Quirks"
	mechanics = "My hunger never goes down, simple as that."
	conflicts = list( //any of the eating quirks
		/datum/quirk/voracious,
		/datum/quirk/horrifying_tastes,
	)
	mob_trait = TRAIT_NOHUNGER
	gain_text = span_notice("My need for food has left I.")
	lose_text = span_danger("GOD I WANT A BURGER SO BAD.")
	medical_record_text = "Patient NEVER eats their food."
	locked =  FALSE
*/

/*
/datum/quirk/thickskin
	name = "Thick Skin"
	desc = "I just don't get splinters, or shrapnel for that matter.  BROKEN AS OF 2/9/23, TAKE LICK HEALING TO CLOSE WOUNDS."
	value = 3
	category = ""
	mechanics = ""
	conflicts = list(

	)
	mob_trait = TRAIT_PIERCEIMMUNE
	gain_text = span_notice("My skin feels way stronger.")
	lose_text = span_danger("I feel like my skin is about as tough as tissue paper.")
	locked =  TRUE
*/

/*
/datum/quirk/quickercarry
	name = "Quicker Carry"
	desc = "I're better than most people when it comes to carrying people!"
	value = 18
	category = "Medical Quirks"
	mechanics = "When using the fireman carry I lift people up at a faster rate."
	conflicts = list(
		/datum/quirk/quickcarry,
	)
	mob_trait = TRAIT_QUICKER_CARRY
	gain_text = span_notice("I feel like a ACCEPTABLE fireman!")
	lose_text = span_danger("I're ability to carry folk seems a bit diminished.")
	medical_record_text = "Patient appears to drag people around on occasion."
	locked =  FALSE

/datum/quirk/quickcarry
	name = "Quick Carry"
	desc = "I're exceptionally good when it comes to carrying people!"
	value = 14
	category = "Medical Quirks"
	mechanics = "When using the fireman carry I lift people up onto my shoulders a bit faster!"
	conflicts = list(
		/datum/quirk/quickercarry,
	)
	mob_trait = TRAIT_QUICK_CARRY
	gain_text = span_notice("I feel like an MASTER fireman!")
	lose_text = span_danger("I're ability to carry folk seems massively diminished.")
	medical_record_text = "Patient appears to haul bodies around."
	locked =  FALSE
*/

/*
/datum/quirk/builder
	name = "Experienced Builder"
	desc = "I're good at putting stuff together!"
	value = 14
	category = "Lifepath Quirks"
	mechanics = "I build structures at a much faster speed and also can use the *brick verb to magic up bricks from brickspace with no cooldown."
	conflicts = list()
	mob_trait = TRAIT_QUICK_BUILD
	gain_text = span_notice("I could throw up a house if I wanted to!")
	lose_text = span_danger("What's a two by four again?")
	medical_record_text = "Patient made comments on the building's floorplan."
	locked =  FALSE
	human_only = FALSE

/datum/quirk/grappler
	name = "Trained Grappler"
	desc = "I've got real skills when it comes to grabbing people by the bits!"
	value = 32
	category = "Hand to Hand Quirks"
	mechanics = "Any grab that I do, even just shift clicking on people, is automatically an aggressive grab. Annoying for making trains of people to move in, but great for forcing a weapon out of someones hand."
	conflicts = list()
	mob_trait = TRAIT_STRONG_GRABBER
	gain_text = span_notice("I feel like I could wrestle a aethergiest!!!")
	lose_text = span_danger("I no longer feel like I should wrestle aethergiests...")
	medical_record_text = "Patient is apparently very good at gripping things."
	locked =  FALSE
	human_only = FALSE

/datum/quirk/mastermartialartist
	name = "Master Martial Artist"
	desc = "I occasionally hit so hard that they don't even seem like themselves anymore!"
	value = 32
	category = "Hand to Hand Quirks"
	mechanics = "My punches, when I roll max damage, inflict clone damage instead of normal brute damage on people. Which is harder to heal and generally somewhat devastating."
	conflicts = list(
		/datum/quirk/nonviolent,
		/datum/quirk/noodle_fist,
	)
	mob_trait = TRAIT_KI_VAMPIRE
	gain_text = span_notice("They are already dead.")
	lose_text = span_danger("My fists no longer feel so powerful.")
	medical_record_text = "Patient appears to have dense muscles in their fists."
	locked =  FALSE

/datum/quirk/surestrike
	name = "Sure Strike"
	desc = "I've either trained for years, got a lucky mutation, or are naturally strong! my punches always do MAX damage!"
	value = 32
	category = "Hand to Hand Quirks"
	mechanics = "I ALWAYS punch for MAX damage."
	conflicts = list(
		/datum/quirk/nonviolent,
		/datum/quirk/mastermartialartist,
	)
	mob_trait = TRAIT_PERFECT_ATTACKER
	gain_text = span_notice("I feel like I can punch anything!")
	lose_text = span_danger("My fists seem to lose their punching finesse.")
	medical_record_text = "Patient appears to have incredibly dense muscles in their fist."
*/


/datum/quirk/silentstep
	name = "Silent Step"
	desc = "My steps just make no noise, or maybe everyone elses buttcheeks are just that loud?"
	mob_trait = TRAIT_SILENT_STEP
	value = 32
	category = "Movement Quirks"
	mechanics = "My footsteps never make noise."
	conflicts = list(
		/datum/quirk/overweight,
	)
	gain_text = span_notice("My footsteps fade away.")
	lose_text = span_danger("I'm pretty sure that's the sound of my asscheeks clapping, but it might be footsteps.")
	medical_record_text = "Patient appears to always walk on their toes."
	locked =  FALSE

/*
/datum/quirk/deadeye
	name = "Dead Eye"
	desc = "When I hit my target, I frequently hit my target's vital points more often than not."
	value = 65
	category = "Ranged Quirks"
	mechanics = "I have advantage on all random ranged damage rolls. (roll twice and take the highest). \
				On top of that my shots have better chances of hitting simple mobs on their vital spots, aiming my shots on the head, arms and legs trigger gimmicks \
				more often. Gimmicks that vary between stunning a mob temporarely to dealing more damage."
	conflicts = list(
		/datum/quirk/clumsy,
		/datum/quirk/straightshooter,
		/datum/quirk/poor_aim,
	)
	mob_trait = TRAIT_CRIT_SHOT
	gain_text = span_notice("My aim is legendary, and I know it.")
	lose_text = span_danger("My aim could use a lot more work...")
	medical_record_text = "Patient flicked a fly out of the air using a toothpick."
	locked =  FALSE
	human_only = FALSE

/datum/quirk/straightshooter
	name = "Straight Shooter"
	desc = "I're a better than average shot."
	value = 44
	category = "Ranged Quirks"
	mechanics = "Adjusts various accuracy equations to be more in my favor. In general, I're about twice as accurate with guns, and suffer less penalties from one-handing two-hand guns."
	conflicts = list(
		/datum/quirk/clumsy,
		/datum/quirk/deadeye,
		/datum/quirk/poor_aim,
	)
	mob_trait = TRAIT_NICE_SHOT
	gain_text = span_notice("My aim is amazing, and I know it.")
	lose_text = span_danger("My aim could use a little more work...")
	medical_record_text = "Patient repeatedly scores baskets in the trashcan."
	locked =  FALSE
	human_only = FALSE


//Should go to all the 'combat' classes
/datum/quirk/bowtrained
	name = "Bow Trained"
	desc = "I've trained quite a bit with bows of many types."
	value = 14
	category = "Ranged Quirks"
	mechanics = "I don't need to press z to pull the string back on a bow, instead I can just spam click to fire rapidly."
	conflicts = list(
	)
	mob_trait = TRAIT_AUTO_DRAW
	gain_text = span_notice("I feel like all that training with bows has paid off.")
	lose_text = span_danger("Guns were always better...")
	medical_record_text = "Patient shows aptitude for utilizing strings on sticks."
	locked =  FALSE
	human_only = FALSE


/datum/quirk/masterrifleman
	name = "Bolt Worker"
	desc = "I've spent a lot of time working the bolt of a rifle, or the pump action of a shotgun. my skill allows I to click to work the action instead of doing it manually."
	value = 14
	category = "Ranged Quirks"
	mechanics = "I don't need to press z to rack the bolt of my rifle, instead I can just spam click to fire rapidly."
	conflicts = list(
		/datum/quirk/clumsy,
		/datum/quirk/bowtrained,
	)
	mob_trait = TRAIT_FAST_PUMP
	gain_text = span_notice("In a sudden haze I realize that the Mosin Nagant was Gods gift to mankind.")
	lose_text = span_danger("After picking some 250 year old cosmoline out from under one of my nails I realize that... Uh, no, the Mosin Nagant is a piece of shit.")
	medical_record_text = "Patient appears to really enjoy cranking bolts."
	locked =  FALSE
	human_only = FALSE

/datum/quirk/wandproficient
	name = "Magically Attuned"
	desc = "I was either born with a natural inclination for magic or were taught its secrets."
	value = 0
	category = "Ranged Quirks"
	mechanics = "I can use magical wands, staves, and other advanced magical items. However, magic has a cost -- my potential elsewhere is limited, and learning a martial art will sever my connection to magic."
	conflicts = list(
	/datum/quirk/deadeye,
	/datum/quirk/mastermartialartist,
	)

	mob_trait = TRAIT_WAND_PROFICIENT
	gain_text = span_notice("I feel magic flowing through my veins!")
	lose_text = span_danger("The magic within I fades away.")
	medical_record_text = "Patient exudes an unknown pattern on the monitor. Further analysis required."
	locked = FALSE
	human_only = FALSE

/datum/quirk/playdead
	name = "Play Dead"
	desc = "I're good at acting!"
	value = 14
	category = "Functional Quirks"
	mechanics = "My *deathgasp will be extra convincing to rudimentary tests, such as healthhuds and examine, doing so may deal a small quantity of toxin damage."
	conflicts = list()
	mob_trait = TRAIT_PLAY_DEAD
	gain_text = span_notice("I feel confident at playing dead.")
	lose_text = span_danger("I feel that laying down in a field of gunfire may not be such a good idea after all.")
	medical_record_text = "Patient has failed heart monitoring tests multiple times."
	locked =  FALSE


/datum/quirk/packrat
	name = "Packrat"
	desc = "I am well practiced at hoarding random junk, and can carry nearly double what most others can."
	value = 34
	category = "Functional Quirks"
	mechanics = "I can carry a second backpack or duffel bag in my suit slot, for additional stuff!"
	conflicts = list()
	mob_trait = TRAIT_PACKRAT


/datum/quirk/ratfriend
	name = "Beast Friend - Rats"
	desc = "Rats and wild mice of all kind outright ignore I now."
	value = 14
	category = "Critter Quirks"
	mechanics = "Rats and mice share their faction with I, meaning they won't do anything about I or care at all that I exist."
	conflicts = list(
		/datum/quirk/ratmaster,
		/datum/quirk/ratphobia,
	)
	mob_trait = TRAIT_BEASTFRIEND_RAT
	gain_text = span_notice("Rats are friends!")
	lose_text = span_danger("God of rats curses my name...") // Perhaps make killing related mobs lose the quirk?
	medical_record_text = "Patient talks about rats a lot."
	locked = FALSE
	human_only = FALSE

/datum/quirk/ratfriend/add()
	var/mob/living/H = quirk_holder
	H.faction |= list("rat-friend")

/datum/quirk/ratfriend/remove()
	var/mob/living/H = quirk_holder
	if(H)
		H.faction -= list("rat-friend")

/datum/quirk/ratmaster
	name = "Beast Master - Rats"
	desc = "Whenever by psychic means or not, I gained ability to summon and control the rats of Wasteland (except giant ones).\
	<br>I also able to tame wild ones. This will make them passive toward other players and tamed fauna (but also makes them a target for wild rats)."
	value = 22
	category = "Critter Quirks"
	mechanics = "I can summon up rat nests on the fly and order them around! my rats aren't in the same faction as wild rats though, so they'll fight each other. I can tame the wild ones though, if I're lucky.\
	<br><font color='#ff2929ff'>If I want to control giant rats, I will need Beast Master - Small Critters.</font>" // Why this sounds like DLC talk
	conflicts = list(
		/datum/quirk/ratfriend,
		/datum/quirk/ratphobia,
	)
	mob_trait = TRAIT_BEASTMASTER_RAT
	gain_text = span_notice("I feel like being a giant rat, that makes all of the rules!")
	lose_text = span_danger("I've lost my rat crown...")
	medical_record_text = "Patient REALLY loves to talk about rats."
	locked = FALSE
	var/obj/effect/proc_holder/mob_common/taming_mobs/rat/tame
	var/obj/effect/proc_holder/mob_common/summon_backup/beastmaster/rat/gather
	var/obj/effect/proc_holder/mob_common/direct_mobs/beastmaster/rat/moveto
	var/obj/effect/proc_holder/mob_common/make_nest/rat/tame/make
	var/obj/effect/proc_holder/mob_common/unmake_nest/clear
// Damn this action button code structure

/datum/quirk/ratmaster/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.faction |= list("rat-friend")
	tame = new
	H.AddAbility(tame)
	gather = new
	H.AddAbility(gather)
	moveto = new
	H.AddAbility(moveto)
	make = new
	H.AddAbility(make)
	clear = new
	H.AddAbility(clear)

/datum/quirk/ratmaster/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.faction -= list("rat-friend")
		H.RemoveAbility(tame)
		QDEL_NULL(tame)
		H.RemoveAbility(gather)
		QDEL_NULL(gather)
		H.RemoveAbility(moveto)
		QDEL_NULL(moveto)
		H.RemoveAbility(make)
		QDEL_NULL(make)
		H.RemoveAbility(clear)
		QDEL_NULL(clear)

/datum/quirk/critterfriend
	name = "Beast Friend - Small Critters"
	desc = "I're basically a disney princess when it comes to some of the lesser critters of the swamplands."
	value = 14
	category = "Critter Quirks"
	mechanics = "Specifically pillbugs, geckos and Ing nightstalkers treat I as being a faction friend. Ignoring I outright."
	conflicts = list(
		/datum/quirk/crittermaster,
	)
	mob_trait = TRAIT_BEASTFRIEND_SMALLCRITTER
	gain_text = span_notice("Some of the wasteland critters don't seem to mind I now!")
	lose_text = span_danger("I feel as if some of the critters in the wasteland grow hostile towards I...")
	medical_record_text = "Patient seems to possess a calm aura."
	locked = FALSE
	human_only = FALSE

/datum/quirk/critterfriend/add()
	var/mob/living/H = quirk_holder
	H.faction |= list("critter-friend")

/datum/quirk/critterfriend/remove()
	var/mob/living/H = quirk_holder
	if(H)
		H.faction -= list("critter-friend")

/datum/quirk/crittermaster
	name = "Beast Master - Small Critters"
	desc = "Whenever by psychic means or not, I gained ability to control pillbugs, most geckos and giant rats (last ones will be initially hostile and needs to be tamed).\
	<br>Taming will make them passive toward other players and tamed fauna. Ing and adult nightstalkers can also be tamed, but not controlled."
	value = 34
	category = "Critter Quirks"
	mechanics = "I can tame and order around pillbugs, geckos (not all of the full variety pack though) and giant rats. While unable to attack players with them, they're a great distraction for fighting other mobs with."
	conflicts = list(
		/datum/quirk/critterfriend,
	)
	mob_trait = TRAIT_BEASTMASTER_SMALLCRITTER
	gain_text = span_notice("I tapped into the potential of the critter horde!")
	lose_text = span_danger("Small critters refuse to obey my commands now.")
	medical_record_text = "Patient claims to have a telepathic connection to animals. Sounds like crazy talk."
	locked = FALSE
	var/obj/effect/proc_holder/mob_common/taming_mobs/small_critter/tame
	var/obj/effect/proc_holder/mob_common/summon_backup/beastmaster/small_critter/gather
	var/obj/effect/proc_holder/mob_common/direct_mobs/beastmaster/small_critter/moveto

/datum/quirk/crittermaster/add()
	var/mob/living/carbon/human/H = quirk_holder
	H.faction |= list("critter-friend")
	tame = new
	H.AddAbility(tame)
	gather = new
	H.AddAbility(gather)
	moveto = new
	H.AddAbility(moveto)

/datum/quirk/crittermaster/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.faction -= list("critter-friend")
		H.RemoveAbility(tame)
		QDEL_NULL(tame)
		H.RemoveAbility(gather)
		QDEL_NULL(gather)
		H.RemoveAbility(moveto)
		QDEL_NULL(moveto)

/datum/quirk/beesfriend
	name = "Beast Friend - Radbees"
	desc = "Rad-bees are not going to attack upon seeing I. Good for wasteland apiarists!"
	value = 14
	category = "Critter Quirks"
	mechanics = "Radbees share their faction with I, meaning they won't do anything about I or care at all that I exist."
	mob_trait = TRAIT_BEASTFRIEND_BEE
	gain_text = span_notice("(Rad)Bee not afraid!")
	lose_text = span_danger("(Rad)BEE AFRAID!!")
	medical_record_text = "Patient talks about bees a lot. Radiated ones, specifically."
	locked = FALSE
	human_only = FALSE

/datum/quirk/beesfriend/add()
	var/mob/living/H = quirk_holder
	H.faction |= list("bees-friend")

/datum/quirk/beesfriend/remove()
	var/mob/living/H = quirk_holder
	if(H)
		H.faction -= list("bees-friend")
*/
/datum/quirk/wildshape
	name = "Wild Shape"
	desc = "I've developed through some means the ability to adopt a lesser form. What I become was decided by myself or mere circumstance, but I can transform back and forth at will."
	value = 15
	category = "Mutant Quirks"
	mechanics = "I gain the shapeshift spell and can cast it nearly at will! This allows I to transform into an animal and back again. Once I select a shape, it cannot be changed."
	conflicts = list(

	)
	mob_trait = TRAIT_WILDSHAPE
	gain_text = span_notice("I feel as if my spirit animal is ready to come out and play!")
	lose_text = span_danger("I no longer have any desires of changing at will.")
	medical_record_text = "Patient appears to be wild, in some form or another."
	locked = FALSE
	var/obj/effect/proc_holder/spell/targeted/shapeshift/wildshape


/datum/quirk/wildshape/add()
	var/mob/living/carbon/human/H = quirk_holder
	wildshape = new
	H.AddSpell(wildshape)

/datum/quirk/wildshape/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.RemoveSpell(wildshape)
		QDEL_NULL(wildshape)
/*
/datum/quirk/zoomies
	name = "Zoomies"
	desc = "Physical prowess, mutation, or cybernetic enhancement, I can sprint a good deal longer than most folk. Justt don't run into things."
	value = 14
	category = "Movement Quirks"
	mechanics = "I use 25% less stamina while sprinting! Just don't run into anything or it will hurt more than normal."
	conflicts = list(
		/datum/quirk/cantrun,
		/datum/quirk/super_zoomies,
	)
	mob_trait = TRAIT_ZOOMIES
	gain_text = span_notice("I feel all pumped up!")
	lose_text = span_danger("I no longer have the zoomies...")
	medical_record_text = "Patient is incredibly giddy, full of zoomies."

/datum/quirk/super_zoomies
	name = "Zoomies - Super"
	desc = "Frenetic energy, densified leg-muscles, or cyber-organs, I can sprint way longer than most folk. Just... REALLY don't run into things. Seriously."
	value = 28
	category = "Movement Quirks"
	mechanics = "I use 50% less stamina while sprinting! Seriously, though, be careful running into things, it could break my back."
	conflicts = list(
		/datum/quirk/cantrun,
		/datum/quirk/zoomies,
	)
	mob_trait = TRAIT_SUPER_ZOOMIES
	gain_text = span_notice("I feel SUPER pumped up!")
	lose_text = span_danger("I no longer have the giga zoomies...")
	medical_record_text = "Patient is full of way too much energy, and has not stopped running around my office as of writing."
*/

/*/datum/quirk/artifact_identify
	name = "Artifact Hunter"
	desc = "I have a keen eye for identifying magical, otherworldly trash! I can identify artifacts at a glance."
	value = 32
	category = "Lifepath Quirks"
	mechanics = "I have no wait time when it comes to identifying artifacts."
	conflicts = list()
	mob_trait = TRAIT_ARTIFACT_IDENTIFY
	gain_text = span_notice("I feel perceptive towards ancient artifacts.")
	lose_text = span_danger("I feel as if I lost the knack for identifying ancient objects.")
	medical_record_text = "Patient claims to know about alien, or some form of ancient technology."
	locked =  FALSE
	human_only = FALSE*/ // Artifacts are identified in 5 seconds, potential change in the future to let I spawn with an artifact

/*
/datum/quirk/armblader
	name = "Arm Blader"
	desc = "Through some genetic quirk I have access to horrifying arm blades made out of bone with the *armblade verb."

	value = 32
	category = "Mutant Quirks"
	mechanics = "My arm can turn into a horrible flesh blade."
	conflicts = list()
	mob_trait = TRAIT_ARMBLADE
	gain_text = span_notice("I feel as my arm is heavier...")
	lose_text = span_danger("My arm feels lighter...")
	medical_record_text = "Patient appears to possess a knife, somehow."
	human_only = FALSE

/datum/quirk/mantisblade
	name = "Cybernetic Arm Blader"
	desc = "Through some cybernetic modifications, I have access to horrifying arm cyberblade with the *cyber verb."

	value = 32
	category = "Mutant Quirks"
	mechanics = "My arm can turn into a horrifying cyberblade"
	conflicts = list()
	mob_trait = TRAIT_CYBERKNIFE
	gain_text = span_notice("I feel as my arm is heavier...")
	lose_text = span_danger("My arm feels lighter...")
	medical_record_text = "Patient appears to possess a cybernetic armblade."
	human_only = FALSE

/datum/quirk/tentaclearm
	name = "Arm Tentacle"
	desc = "Through some genetic quirk I have access to horrifying arm tentacle to grab people and mobs with. Use *tentarm verb to summon it."
	value = 28 // I grab an item from a distance, auto-activates grenades in my hand, its not great, but not terrible.
	category = "Mutant Quirks"
	mechanics = "My arm can turn into a horrible meat bludgeon."
	conflicts = list()
	mob_trait = TRAIT_ARMTENT
	gain_text = span_notice("I feel as my arm is wriggling...")
	lose_text = span_danger("My arm feels lighter...")
	medical_record_text = "Patient appears to possess a club, somehow."

/datum/quirk/magegrab
	name = "Mage Grab" // Better name pending
	desc = "Through some powerful spell, I can now grab items from a distance. Effectively identical to tentacle arms, but not tentacles."
	value = 28
	category = "Magic Quirks"
	mechanics = "I can fire a beam that teleports items into my hand, or drags mobs to I."
	conflicts = list()
	mob_trait = TRAIT_MAGEGRAB

/datum/quirk/bigbiter
	name = "Biter - Big"
	desc = "My jaws are just absolutley massive.  I *bite harder, but a bit slower."
	value = 22
	category = "Biter Quirks"
	mechanics = "When using *bite my jaws do increased damage compared to normal but with a slower attack speed."
	conflicts = list(
		/datum/quirk/fastbiter,
		/datum/quirk/playbiter,
		/datum/quirk/spicybiter,
		/datum/quirk/sabrebiter,
	)
	mob_trait = TRAIT_BIGBITE
	gain_text = span_notice("My bite strength feels like that of a gator!")
	lose_text = span_danger("My mouth feels incredibly sore.")
	medical_record_text = "Patient appears to chew through bone like nothing."
	human_only = FALSE

/datum/quirk/fastbiter
	name = "Biter - Fast"
	desc = "My jaws are just UBELIEVABLY FAST.  Use *bite to bite like the WIND."
	value = 22
	category = "Biter Quirks"
	mechanics = "When using *bite my jaws do less damage compared to normal but with a faster attack speed."
	conflicts = list(
		/datum/quirk/bigbiter,
		/datum/quirk/playbiter,
		/datum/quirk/spicybiter,
		/datum/quirk/sabrebiter,
	)
	mob_trait = TRAIT_FASTBITE
	gain_text = span_notice("My mouth feels capable of nibbling a LOT!")
	lose_text = span_danger("My mouth feels all gunked up.")
	medical_record_text = "Patient bites. A lot."
	human_only = FALSE

/datum/quirk/playbiter
	name = "Biter - Pretend"
	desc = "My biter is a little love nipper."
	value = 0
	category = "Biter Quirks"
	mechanics = "When using *bite I do no damage (unless I have big/small leagues!)"
	conflicts = list(
		/datum/quirk/bigbiter,
		/datum/quirk/fastbiter,
		/datum/quirk/spicybiter,
		/datum/quirk/sabrebiter,
	)
	mob_trait = TRAIT_PLAYBITE
	gain_text = span_notice("My feel my bite strength leave my jaw...")
	lose_text = span_danger("My bite strength returns!")
	medical_record_text = "Patient has bit me before. It did not hurt."
	human_only = FALSE

/datum/quirk/spicybiter
	name = "Biter - Venomous"
	desc = "One way or another my *bite can inject a strong paralytic venom of some kind!"
	value = 22
	category = "Biter Quirks"
	mechanics = "My bite does stamina damage to both players and mobs, but less brute damage overall."
	conflicts = list(
		/datum/quirk/bigbiter,
		/datum/quirk/fastbiter,
		/datum/quirk/playbiter,
		/datum/quirk/sabrebiter,
	)
	mob_trait = TRAIT_SPICYBITE
	gain_text = span_notice("I feel my teeth secrete a viscous fluid.")
	lose_text = span_danger("I no longer secrete venom.")
	medical_record_text = "Patient has caused numbing in my arm. We really need a better way to test bites."
	human_only = FALSE

/datum/quirk/sabrebiter
	name = "Biter - Sabre Toothed"
	desc = "My *bite strength is ENORMOUS, but it takes all my focus to use it."
	value = 32
	category = "Biter Quirks"
	mechanics = "My bite is the biggest bite, and the slowest."
	conflicts = list(
		/datum/quirk/bigbiter,
		/datum/quirk/fastbiter,
		/datum/quirk/playbiter,
		/datum/quirk/spicybiter,
	)
	mob_trait = TRAIT_SABREBITE
	gain_text = span_notice("My teeth suddenly becomes incredibly large and heavy!")
	lose_text = span_danger("My teeth suddenly shrink and become light once more!")
	medical_record_text = "Patient has incredibly large teeth."
	human_only = FALSE

/datum/quirk/bigclawer
	name = "Clawer - Big"
	desc = "My claws are just absolutley massive.  my *claw attack hits harder, but a bit slower."
	value = 22
	category = "Clawer Quirks"
	mechanics = "When using *claw my claws do more damage compared to normal but with a slower attack speed."
	conflicts = list(
		/datum/quirk/fastclawer,
		/datum/quirk/playclaw,
		/datum/quirk/spicyclaw,
		/datum/quirk/razorclaw,
	)
	mob_trait = TRAIT_BIGCLAW
	gain_text = span_notice("I claws harden, they feel capable of through metal!")
	lose_text = span_danger("My claws soften.")
	medical_record_text = "Patient is capable of shredding through a locker."
	human_only = FALSE

/datum/quirk/fastclawer
	name = "Clawer - Fast"
	desc = "My claw swipes are nearly the speed of sound, my *claw attack hits WAY faster."
	value = 22
	category = "Clawer Quirks"
	mechanics = "When using *claw my claws do less damage than normal, but with a faster attack speed."
	conflicts = list(
		/datum/quirk/bigclawer,
		/datum/quirk/playclaw,
		/datum/quirk/spicyclaw,
		/datum/quirk/razorclaw,
	)
	mob_trait = TRAIT_FASTCLAW
	gain_text = span_notice("My claws feel very aerodynamic!")
	lose_text = span_danger("I suddenly feel clumsy swinging my claws around...")
	medical_record_text = "Patient claims to scratch at things. A lot."
	human_only = FALSE

/datum/quirk/playclaw
	name = "Clawer - Pretend"
	desc = "My claws are for being silly, not dangerous."
	value = 0
	category = "Clawer Quirks"
	mechanics = "My claws, when used with the *claw verb do no damage at all unless I have big/small leagues."
	conflicts = list(
		/datum/quirk/bigclawer,
		/datum/quirk/fastclawer,
		/datum/quirk/spicyclaw,
		/datum/quirk/razorclaw,
	)
	mob_trait = TRAIT_PLAYCLAW
	gain_text = span_notice("My claws feel almost like rubber!")
	lose_text = span_danger("My claws suddenly return to normal.")
	medical_record_text = "Patient claims to be weak at scratching."
	human_only = FALSE

/datum/quirk/spicyclaw
	name = "Clawer - Venomous"
	desc = "Something about my claws cause weakness in those I rake, use *claw to stun mobs/players."
	value = 22
	category = "Clawer Quirks"
	mechanics = "When using *claw my claws do stamina damage on top of their normal damage, letting I stun players & mobs."
	conflicts = list(
		/datum/quirk/bigclawer,
		/datum/quirk/fastclawer,
		/datum/quirk/playclaw,
		/datum/quirk/razorclaw,
	)
	mob_trait = TRAIT_SPICYCLAW
	gain_text = span_notice("I feel a viscous fluid secrete from my claws!")
	lose_text = span_danger("I no longer feel venom drip from my claws.")
	medical_record_text = "Patient has momentarily numbed me after a bad handshake."
	human_only = FALSE

/datum/quirk/razorclaw
	name = "Clawer - Razors"
	desc = "My *claw attack really does rend and tear huge guts."
	value = 32
	category = "Clawer Quirks"
	mechanics = "When using *claw my claws do CRAZY good damage (for claws, anyway), but a bit slower overall."
	conflicts = list(
		/datum/quirk/bigclawer,
		/datum/quirk/fastclawer,
		/datum/quirk/playclaw,
		/datum/quirk/spicyclaw,
	)
	mob_trait = TRAIT_RAZORCLAW
	gain_text = span_notice("RIP AND TEAR, my claws are now much stronger!")
	lose_text = span_danger("I no longer feel like ripping anything up.")
	medical_record_text = "Patient appears to enjoy clawing everything up."
	human_only = FALSE

//tail

/datum/quirk/bigtail
	name = "Tail - Big"
	desc = "I got that big tail, good for big wumps. Use with *tailer"
	value = 22
	category = "Tailer Quirks"
	mob_trait = TRAIT_TAILSMASH
	gain_text = span_notice("My tail is suddenly much larger.")
	lose_text = span_danger("My tail is suddenly smaller.")
	medical_record_text = "Patient has a large tail."
	human_only = FALSE

/datum/quirk/fasttail
	name = "Tail - Whiplike"
	desc = "I got that FAST tail, good for whipping about. Use with *tailer"
	value = 22
	category = "Tailer Quirks"
	mob_trait = TRAIT_TAILWHIP
	gain_text = span_notice("My tail is now much lighter!")
	lose_text = span_danger("My tail feels heavy.")
	medical_record_text = "Patient has a heavy tail."
	human_only = FALSE

/datum/quirk/playtail
	name = "Tail - Playful"
	desc = "My tail is just a soft extension of the rest of I. use with *tailer"
	value = 0
	category = "Tailer Quirks"
	mob_trait = TRAIT_TAILPLAY
	gain_text = span_notice("My tail feels very soft and plush.")
	lose_text = span_danger("My tail feels rough and raggedy.")
	medical_record_text = "Patient has a very soft tail."
	human_only = FALSE

/datum/quirk/spicytail
	name = "Tail - Venomous"
	desc = "One way or another my *tailer verb is capable of inflicting venomous attacks with my tail!"
	value = 22
	category = "Tailer Quirks"
	mob_trait = TRAIT_TAILSPICY
	gain_text = span_notice("My tail secretes a viscous fluid.")
	lose_text = span_danger("My tail no longer produces venom.")
	medical_record_text = "Patient appears to have a paralytic tail."
	human_only = FALSE

/datum/quirk/thagotail
	name = "Tail - Thagomizer"
	desc = "A very dangerous *tailer, for beating the snot out of things."
	value = 32
	category = "Tailer Quirks"
	mob_trait = TRAIT_TAILTHAGO
	gain_text = span_notice("My tail feels like a bludgeon!")
	lose_text = span_danger("My tail suddenly feels weak.")
	medical_record_text = "Patient tripped me over with their tail this morning. Please be aware of it."
	human_only = FALSE

//Cantrips//
/datum/quirk/shocking
	name = "Shocking Grasp"
	desc = "I know how to cast the shocking grasp cantrip"
	value = 32
	category = "Magic Quirks"
	mechanics = "When using the *shocking emote, I summon a melee spell cantrip that strikes fast and delivers powerful shocks to my foes"
	conflicts = list(
		/datum/quirk/littleleagues,
		/datum/quirk/bigleagues
	)
	mob_trait = TRAIT_SHOCKINGGRASP
	gain_text = span_notice("I know how to cast shocking grasp!")
	lose_text = span_danger("I no longer know how to cast shocking grasp!.")
	human_only = FALSE

/datum/quirk/telepathy
	name = "Innate Telepathy"
	desc = "I innately have the ability to project my thoughts directly into the minds of others."
	value = 0 
	category = "Magic Quirks"
	mechanics = "I can use a telepathy spell to speak to others' minds directly. However, I and my target will glow so it's quite obvious I casted it."
	conflicts = list(/datum/quirk/mute) // Negligibly useful quirk shouldnt cost points or slots, but also shouldnt make a big negative into free points. Also I can get telepathy through genetics, which is easier now.
	mob_trait = TRAIT_TELEPATHY
	gain_text = span_notice("I suddenly don't feel the need to talk out loud anymore.")
	lose_text = span_danger("Talking out loud suddenly feels like a much better idea.")
	medical_record_text = "Patient appears to posess the ability to speak directly to the minds of others."
	human_only = FALSE

/datum/quirk/telepathy/add()
	quirk_holder.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/telepathy/quirk)

/datum/quirk/telepathy/remove()
	if(LAZYLEN(quirk_holder?.mind?.spell_list))
		for(var/s in quirk_holder?.mind?.spell_list)
			if(istype(s, /obj/effect/proc_holder/spell/targeted/telepathy/quirk))
				quirk_holder.mind.RemoveSpell(s)

//datum/quirk/booming
	//name = "Booming Blade"
	//desc = "I know how to cast the booming blade cantrip"
	//value = 44
	//category = "Cantrips"
	//mechanics = "When using the *booming emote, I summon a magic sword able to tag foes for extra damage on the next hit."
	//conflicts = list(
		//datum/quirk/littleleagues,
		//datum/quirk/bigleagues
	//)
	//mob_trait = TRAIT_BOOMING
	//gain_text = span_notice("I know how to cast booming blade!")
	//lose_text = span_danger("I no longer know how to cast booming blade!.")


///QUIRK PACKAGES/// QUACKAGES IF I WILL
//Read it all, I're a big peoples, I believe in I.

//The Purpose of these quirks is to be ready made character design concepts, they will include positive and negative quirks packaged together to ease character creation.

//If the Quackage is all positive quirks then I should add the point cost of all the quirks involved and add 20% on top, this will mean that taking it is more expensive
//than to have taken the quirks individually, but it only takes up one good quirk slot.  The 20% number referenced above is really just a starting point, honestly
//follow my fucking heart, I're probably smarter than I am. ~TK420634

//If the quackage includes negative quirks, be sure to make it very clear in the mechanics variable that I have included that negative, do not jump negative quirks on players
//without properly warning them of what exactly they're getting into. Be sure also to make the conflict list include all the quirks that the trait includes, positive and negative.
//That way players don't waste precious character design points on taking quirks they already have in their quackage.

//Be wary of overloading the donkey, there really should be a hard limit to what I're thematically tyring to glue together here. These are supposed to be plug and play
//character archetypes, not entire builds that are ready made. Though, if I're willing to put in the forethought and really plan it out I can't say that there would be a problem
//with maybe making a Class category that is analgous to the Class quirks in the rp category. It would, honestly, simplify character creation some.

//What follows is the code for Former Tribal, commented out, to be used as a reference for creating Quackages that include both quirks and recipes.
/*
/datum/quirk/tribal
	name = "Former Tribal"
	desc = "I used to be part of one of the tribes scattered throughout the wasteland. I may have some additional skills as a result. Allowing I to make some tribal medical supplies. Advanced tech still confuses I though."
	value = 22
	category = "Lifepath Quirks"
	mechanics = "Grants access to a wide variety of recipes and allows I to use primitive chemmasters with which I can make complex potions/poisons."
	conflicts = list(
		/datum/quirk/technophreak,
		/datum/quirk/tribal_tech,
		)
	gain_text = span_notice("I remember the old ways of my tribe..")
	lose_text = span_notice("I've forgotten the ways of my ancestors..")

/datum/quirk/tribal/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, "Former Tribal")
	ADD_TRAIT(H, TRAIT_TRIBAL, "Former Tribal")
	ADD_TRAIT(H, TRAIT_FORMER_TRIBAL, "ex_tribal_traditions")
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.former_tribal_recipes

/datum/quirk/tribal/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_MACHINE_SPIRITS, "Former Tribal")
		REMOVE_TRAIT(H, TRAIT_TRIBAL, "Former Tribal")
		H.mind.learned_recipes -= GLOB.former_tribal_recipes
		*/

//Use this to prototype building my Quackage, or of course reference the ones that will exist below this.

//Quackages Start Here//

/datum/quirk/package/lifeoftheparty
	name = "Life of the Party"
	desc = "I was just meant to be the center of attention, and I revel when all eyes are on I!"
	value = 35
	category = "Quirk Packages"
	mechanics = "Grants access to positive Quirks Musician and Friendly!"
	conflicts = list(
		/datum/quirk/musician,
		/datum/quirk/friendly,
		)
	gain_text = span_notice("I realize I are THE life of THE party that is life!")
	lose_text = span_notice("Maybe I're really just a nobody...?")

/datum/quirk/package/lifeoftheparty/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_MUSICIAN, "Musician")
	ADD_TRAIT(H, TRAIT_FRIENDLY, "Friendly")


/datum/quirk/package/lifeoftheparty/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_MUSICIAN, "Musician")
		REMOVE_TRAIT(H, TRAIT_FRIENDLY, "Friendly")

/datum/quirk/package/lifeoftheparty/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	var/obj/item/choice_beacon/music/B = new(get_turf(H))
	H.put_in_hands(B)
	H.equip_to_slot_if_possible(B, SLOT_IN_BACKPACK)
	var/obj/item/musicaltuner/musicaltuner = new(get_turf(H))
	H.put_in_hands(musicaltuner)
	H.equip_to_slot_if_possible(musicaltuner, SLOT_IN_BACKPACK)
	H.regenerate_icons()

/datum/quirk/package/bruiser
	name = "Bruiser"
	desc = "I're a big guy."
	value = 150
	category = "Quirk Packages"
	mechanics = "Grants access to positive Big Leagues & Health - Tougher!"
	conflicts = list(
		/datum/quirk/bigleagues,
		/datum/quirk/littleleagues,
		/datum/quirk/lifegiverplus,
		/datum/quirk/flimsy,
		/datum/quirk/veryflimsy
		)
	gain_text = span_notice("DAMN BRO I SWOLE!")
	lose_text = span_notice("Maybe I could skip gym day...")
	human_only = FALSE

/datum/quirk/package/bruiser/add()
	var/mob/living/H = quirk_holder
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, "Melee - Big Leagues")
	ADD_TRAIT(H, TRAIT_LIFEGIVERPLUS, "Health - Tougher")


/datum/quirk/package/bruiser/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_BIG_LEAGUES, "Melee - Big Leagues")
		REMOVE_TRAIT(H, TRAIT_LIFEGIVERPLUS, "Health - Tougher")

/datum/quirk/package/parkour
	name = "Rooftop Nomad"
	desc = "I like parkour. Like, a lot a lot."
	value = 70
	category = "Quirk Packages"
	mechanics = "Grants access to positive quirks Freerunning and Advanced Leaper!"
	conflicts = list(
		/datum/quirk/freerunning,
		/datum/quirk/tackleradv,
		/datum/quirk/slower,
		/datum/quirk/slow,
		/datum/quirk/clumsy,
		/datum/quirk/cantrun,
		/datum/quirk/overweight,
		/datum/quirk/tacklerapex,
		/datum/quirk/tackler
		)
	gain_text = span_notice("Hardcore parkour!")
	lose_text = span_notice("Parkour's just not in style anymore...")

/datum/quirk/package/parkour/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_FREERUNNING, "Freerunning")
	ADD_TRAIT(H, TRAIT_TACKLERADV, "Advanced Leaper")
	H.AddComponent(/datum/component/tackler/simple, \
		stamina_cost = 20, \
		base_knockdown = 0 SECONDS, \
		range = 7, \
		speed = 2, \
		skill_mod = -2, \
		min_distance = 0 \
)


/datum/quirk/package/parkour/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_FREERUNNING, "Freerunning")
		REMOVE_TRAIT(H, TRAIT_TACKLERADV, "Advanced Leaper")

/datum/quirk/package/hvyhitter
	name = "Heavy Hitter"
	desc = "I're well practiced in hand to hand combat."
	value = 80
	category = "Quirk Packages"
	mechanics = "Grants access to positive Sure Strike & Fists of Steel!"
	conflicts = list(
		/datum/quirk/steel_fist,
		/datum/quirk/surestrike,
		/datum/quirk/nonviolent,
		/datum/quirk/iron_fist,
		/datum/quirk/noodle_fist,
		/datum/quirk/mastermartialartist
		)
	gain_text = span_notice("My knuckles are calloused.")
	lose_text = span_notice("My hands feel soft again...")

/datum/quirk/package/hvyhitter/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_PERFECT_ATTACKER, "Sure Strike")
	ADD_TRAIT(H, TRAIT_STEELFIST, "Fists of Steel")


/datum/quirk/package/hvyhitter/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_PERFECT_ATTACKER, "Sure Strike")
		REMOVE_TRAIT(H, TRAIT_STEELFIST, "Fists of Steel")

/datum/quirk/package/hvyhitter/on_spawn()
	var/mob/living/carbon/human/H = quirk_holder
	H.dna.species.punchdamagelow = STEEL_FIST_PUNCH_DAMAGE_LOW
	H.dna.species.punchdamagehigh = STEEL_FIST_PUNCH_DAMAGE_MAX

/datum/quirk/package/Ranger
	name = "Ranger"
	desc = "Bow in hand, and rat in back pocket, the swamplands is my home."
	value = 35
	category = "Quirk Packages"
	mechanics = "Grants access to positive quirks Bow Trained, and Beast Friends - Small Critters."
	conflicts = list(
		/datum/quirk/bowtrained,
		/datum/quirk/critterfriend
		)
	gain_text = span_notice("These lands are my home.")
	lose_text = span_notice("Where the heck am I????")
	human_only = FALSE

/datum/quirk/package/ranger/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_AUTO_DRAW, "Bow Trained")
	ADD_TRAIT(H, TRAIT_BEASTFRIEND_SMALLCRITTER, "Beast Friend - Small Critters")


/datum/quirk/package/ranger/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_AUTO_DRAW, "Bow Trained")
		REMOVE_TRAIT(H, TRAIT_BEASTFRIEND_SMALLCRITTER, "Beast Friend - Small Critters")

/datum/quirk/package/hunter
	name = "Big Game Hunter"
	desc = "With my trusty Thirty Aught something another I know I can down any critter I plan on hunting."
	value = 65
	category = "Quirk Packages"
	mechanics = "Grants access to positive Bolt Worker & Straight Shooter."
	conflicts = list(
		/datum/quirk/masterrifleman,
		/datum/quirk/straightshooter,
		/datum/quirk/deadeye
		)
	gain_text = span_notice("Aim just behind behind the front leg...")
	lose_text = span_notice(".223 is probably overkill for deer...")
	human_only = FALSE

/datum/quirk/package/hunter/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_FAST_PUMP, "Bolt Worker")
	ADD_TRAIT(H, TRAIT_NICE_SHOT, "Straight Shooter")


/datum/quirk/package/hunter/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_FAST_PUMP, "Bolt Worker")
		REMOVE_TRAIT(H, TRAIT_NICE_SHOT, "Straight Shooter")

/datum/quirk/package/legendarywepsm
	name = "Weaponsmith - Legendary"
	desc = "I're just that good at making weapons. Maybe I should make a career out of this?"
	value = 55
	category = "Quirk Packages"
	mechanics = "Grants access to Weaponsmith Basic and Masterwork."
	conflicts = list(
		/datum/quirk/gunsmith,
		/datum/quirk/masterworksmith,
	)

/datum/quirk/package/legendarywepsm/add()
	var/mob/living/H = quirk_holder
	ADD_TRAIT(H, TRAIT_MASTERWORKSMITH, "Weaponsmith - Masterwork")
	ADD_TRAIT(H, TRAIT_WEAPONSMITH, "Weaponsmith - Basic")
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.weaponcrafting_gun_recipes
	H.mind.learned_recipes |= GLOB.weapons_of_texarkana

/datum/quirk/package/legendarywepsm/remove()
	var/mob/living/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_MASTERWORKSMITH, "Weaponsmith - Masterwork")
		REMOVE_TRAIT(H, TRAIT_WEAPONSMITH, "Weaponsmith - Basic")
	if(H)
		H.mind.learned_recipes -= GLOB.weaponcrafting_gun_recipes

/datum/quirk/package/reformedtribal
	name = "Reformed Tribal Chemist"
	desc = "I've left my tribe and decided that science is what I seek."
	value = 55
	category = "Quirk Packages"
	mechanics = "Grants access to positive trait Primitive Tech & Chemwiz."
	conflicts = list(
		/datum/quirk/tribal_tech,
		/datum/quirk/chemwhiz,
		/datum/quirk/dumb
		)
	gain_text = span_notice("The secrets of chemistry are all laid out before I...")
	lose_text = span_notice("Sulphur?  I barely know her!")

/datum/quirk/package/reformedtribal/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, "Primitive Tech")
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, "Chem Whiz")
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.chemwhiz_recipes


/datum/quirk/package/reformedtribal/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_MACHINE_SPIRITS, "Primitive Tech")
		REMOVE_TRAIT(H, TRAIT_CHEMWHIZ, "Chem Whiz")
	if(H)
		H.mind.learned_recipes -= GLOB.chemwhiz_recipes

/datum/quirk/package/creatureofthewildsevi
	name = "Creature of the Wilds - Eviscerator"
	desc = "I am massively in tune with my wild side. Especially the part that slices and bites like crazy."
	value = 53
	category = "Quirk Packages"
	mechanics = "Grants access to positive trait Fast Clawer & Fast Biter."
	conflicts = list(
		/datum/quirk/fastbiter,
		/datum/quirk/fastclawer
		)
	gain_text = span_notice("bitebitebitebiteclawclawclawclaw!")
	lose_text = span_notice("I could use a scone...")

/datum/quirk/package/creatureofthewildsevi/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_FASTCLAW, "Clawer - Fast")
	ADD_TRAIT(H, TRAIT_FASTBITE, "Biter - Fast")


/datum/quirk/package/creatureofthewildsevi/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_FASTCLAW, "Clawer - Fast")
		REMOVE_TRAIT(H, TRAIT_FASTBITE, "Biter - Fast")

/datum/quirk/package/creatureofthewildsspicy
	name = "Creature of the Wilds - Venomous"
	desc = "I am massively in tune with my wild side. Especially the part that lets I poison things with my fangs and claws."
	value = 53
	category = "Quirk Packages"
	mechanics = "Grants access to positive trait Spicy Claw & Spicy Biter."
	conflicts = list(
		/datum/quirk/spicybiter,
		/datum/quirk/spicyclaw,
		)
	gain_text = span_notice("bitebitebitebiteclawclawclawclaw!")
	lose_text = span_notice("He need some milk.")

/datum/quirk/package/creatureofthewildsspicy/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_SPICYCLAW, "Clawer - Venomous")
	ADD_TRAIT(H, TRAIT_SPICYBITE, "Biter - Venomous")


/datum/quirk/package/creatureofthewildsspicy/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_SPICYCLAW, "Clawer - Venomous")
		REMOVE_TRAIT(H, TRAIT_SPICYBITE, "Biter - Venomous")

/datum/quirk/package/creatureofthenightgreater
	name = "Creature of the Night - Greater"
	desc = "I am the prime definition of creature of the night, my dark vision and movement agility are greatly improved."
	value = 100
	category = "Quirk Packages"
	mechanics = "Grants access to positive trait Dark Vision - Greater & Mobility - Wasteland Trekker."
	conflicts = list(
		/datum/quirk/hard_yards,
		/datum/quirk/night_vision_greater,
		/datum/quirk/package/creatureofthenightlesser
	)
	mob_trait = TRAIT_NIGHT_VISION_GREATER
	gain_text = span_notice("My night hunting instincts enhance!")
	lose_text = span_notice("My night hunting instincts fade away.")
	medical_record_text = "Patient claims that they have night vision."
	human_only = FALSE

/datum/quirk/package/creatureofthenightgreater/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NIGHT_VISION_GREATER, "Dark Vision - Greater")
	ADD_TRAIT(H, TRAIT_HARD_YARDS, "Mobility - Wasteland Trekker")

/datum/quirk/package/creatureofthenightgreater/on_spawn()
	quirk_holder.update_sight()

/datum/quirk/package/creatureofthenightgreater/remove()
	var/mob/living/carbon/human/H = quirk_holder
	quirk_holder.update_sight()
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_NIGHT_VISION_GREATER, "Dark Vision - Greater")
		REMOVE_TRAIT(H, TRAIT_HARD_YARDS, "Mobility - Wasteland Trekker")

/datum/quirk/package/creatureofthenightlesser
	name = "Creature of the Night - Lesser"
	desc = "I am a creature of the night, my dark vision and movement agility are over the average."
	value = 50
	category = "Quirk Packages"
	mechanics = "Grants access to positive trait Dark Vision - Minor & Mobility - Wasteland Wanderer."
	conflicts = list(
		/datum/quirk/night_vision,
		/datum/quirk/soft_yards,
		/datum/quirk/package/creatureofthenightgreater
	)
	mob_trait = TRAIT_NIGHT_VISION
	gain_text = span_notice("I feel more attuned in darker places.")
	lose_text = span_notice("Light and taking it slow aren't bad things afteral.")
	medical_record_text = "Patient claims they can see in the dark."
	human_only = FALSE

/datum/quirk/package/creatureofthenightlesser/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_NIGHT_VISION, "Dark Vision - Minor")
	ADD_TRAIT(H, TRAIT_SOFT_YARDS, "Mobility - Wasteland Wanderer")

/datum/quirk/package/creatureofthenightlesser/on_spawn()
	quirk_holder.update_sight()

/datum/quirk/package/creatureofthenightlesser/remove()
	var/mob/living/carbon/human/H = quirk_holder
	quirk_holder.update_sight()
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_NIGHT_VISION, "Dark Vision - Minor")
		REMOVE_TRAIT(H, TRAIT_SOFT_YARDS, "Mobility - Wasteland Wanderer")

/datum/quirk/package/tinkerer
	name = "Tinker-er"
	desc = "I am able to craft without a traditional workbench, as well as craft more and gain more from salvage"
	value = 85
	category = "Quirk Packages"
	mechanics = "I don't need a workbench or alchemy table when crafting, get more recipes, and gain 1-3 more from salvaging"
	human_only = FALSE
	conflicts = list(
		/datum/quirk/tribal,
		/datum/quirk/dumb,
		/datum/quirk/luddite,
		/datum/quirk/primitive,
		/datum/quirk/technophreak,
		/datum/quirk/crafty
		)
	mob_trait = TRAIT_TECHNOPHREAK

/datum/quirk/package/tinkerer/on_spawn()
	var/mob/living/H = quirk_holder
	new /obj/machinery/workbench(H)
	new /obj/machinery/chem_master/primitive(H)

/datum/quirk/package/tinkerer/add()
	var/mob/living/carbon/human/H = quirk_holder
	// I made the quirks add the same recipes as the trait books. Feel free to nerf this
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.tier_three_parts
	H.mind.learned_recipes |= GLOB.energyweapon_cell_crafting
	H.mind.learned_recipes |= GLOB.energyweapon_crafting
	H.mind.learned_recipes |= GLOB.pa_repair
	H.mind.learned_recipes |= GLOB.armored_hazard_suit

/datum/quirk/package/tinkerer/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H)
		H.mind.learned_recipes -= GLOB.tier_three_parts
		H.mind.learned_recipes -= GLOB.energyweapon_cell_crafting
		H.mind.learned_recipes -= GLOB.energyweapon_crafting
		H.mind.learned_recipes -= GLOB.pa_repair
		H.mind.learned_recipes -= GLOB.armored_hazard_suit

/datum/quirk/package/generalmedicalpractitioner
	name = "General Medical Practitioner"
	desc = "I was a General Practiotioner at some point in my life, I probably had an office and a license to practice medicine, or... maybe this is what I kept saying to my patients..."
	value = 50
	category = "Quirk Packages"
	mechanics = "Grants access to positive trait Chem Whiz & Minor Surgery."
	conflicts = list(
		/datum/quirk/chemwhiz,
		/datum/quirk/surgerylow,
		/datum/quirk/dumb
		)
	gain_text = span_notice("Let's go practice medicine!")
	lose_text = span_notice("I really think I need a true medical license...")

/datum/quirk/package/generalmedicalpractitioner/add()
	var/mob/living/carbon/human/H = quirk_holder
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, "Chem Whiz")
	ADD_TRAIT(H, TRAIT_SURGERY_LOW, "Minor Surgery")
	if(!H.mind.learned_recipes)
		H.mind.learned_recipes = list()
	H.mind.learned_recipes |= GLOB.chemwhiz_recipes

/datum/quirk/package/generalmedicalpractitioner/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(!QDELETED(H))
		REMOVE_TRAIT(H, TRAIT_CHEMWHIZ, "Chem Whiz")
		REMOVE_TRAIT(H, TRAIT_SURGERY_LOW, "Minor Surgery")
	if(H)
		H.mind.learned_recipes -= GLOB.chemwhiz_recipes

/datum/quirk/bruteresist
	name = "Brute Resist, Minor"
	desc = "I're more resistant to physical trauma than others."
	mob_trait = TRAIT_BRUTERESIST
	value = 22
	category = "Health Quirks"
	mechanics = "I take 10% less brute damage."
	conflicts = list(
		/datum/quirk/bruteresistmajor,
		/datum/quirk/bruteweak,
		/datum/quirk/bruteweakmajor
)

/datum/quirk/bruteresist/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.brutemod = 0.9

/datum/quirk/bruteresist/remove()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.brutemod = 1

/datum/quirk/bruteresistmajor
	name = "Brute Resist, Major"
	desc = "I're even more resistant to physical trauma than others. I've got skin of steel!"
	mob_trait = TRAIT_BRUTERESISTMAJOR
	value = 44
	category = "Health Quirks"
	mechanics = "I take 20% less brute damage."
	conflicts = list(
		/datum/quirk/bruteresist,
		/datum/quirk/bruteweak,
		/datum/quirk/bruteweakmajor
)

/datum/quirk/bruteresistmajor/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.brutemod = 0.8

/datum/quirk/bruteresistmajor/remove()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.brutemod = 1

/datum/quirk/burnresist
	name = "Burn Resist, Minor"
	desc = "I're more resistant to burns than others."
	mob_trait = TRAIT_BURNRESIST
	value = 22
	category = "Health Quirks"
	mechanics = "I take 10% less burn damage."
	conflicts = list(
		/datum/quirk/burnresistmajor,
		/datum/quirk/burnweak,
		/datum/quirk/burnweakmajor
)

/datum/quirk/burnresist/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.burnmod = 0.9

/datum/quirk/burnresist/remove()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.burnmod = 1

/datum/quirk/burnresistmajor
	name = "Burn Resist, Major"
	desc = "I're even more resistant to burns than others. my skin is insulated!"
	mob_trait = TRAIT_BURNRESISTMAJOR
	value = 44
	category = "Health Quirks"
	mechanics = "I take 20% less burn damage."
	conflicts = list(
		/datum/quirk/burnresist,
		/datum/quirk/burnweak,
		/datum/quirk/burnweakmajor
)

/datum/quirk/burnresistmajor/add()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.burnmod = 0.8

/datum/quirk/burnresistmajor/remove()
	var/mob/living/carbon/human/H = quirk_holder
	var/datum/species/species = H.dna.species
	species.burnmod = 1

/datum/quirk/security_expert
	name = "Security Expert"
	desc = "I've got a knack for getting into places I shouldn't be."
	mob_trait = TRAIT_SECURITYEXPERT
	value = 20
	category = "Lifepath Quirks"
	mechanics = "I can craft and use lockpicking sets to open doors and lockboxes."
	conflicts = list()

/datum/quirk/security_expert/add()
	var/mob/living/carbon/human/H = quirk_holder
	if(H?.mind)
		if(!H.mind.learned_recipes)
			H.mind.learned_recipes = list()
		H.mind.learned_recipes += GLOB.security_expert

/datum/quirk/security_expert/remove()
	var/mob/living/carbon/human/H = quirk_holder
	if(H?.mind)
		H.mind.learned_recipes -= GLOB.security_expert
*/
