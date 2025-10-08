/datum/job/squad_leader
	title = "Squad Leader"
	department = "Exploration"
	department_flag = EXP

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer"
	selection_color = COLOR_RED_ORANGE
	minimal_player_age = 7
	economic_power = 10
	minimum_character_age = list(SPECIES_HUMAN = 30)
	maximum_character_age = list(SPECIES_HUMAN = 55)
	outfit_type = /decl/hierarchy/outfit/job/intrepid/crew/exploration/squad_leader
	allowed_branches = list(
		/datum/mil_branch/marine_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/mc/e6,
		/datum/mil_rank/mc/e7
	)
	min_skill = list(	SKILL_BUREAUCRACY	= SKILL_BASIC,
						SKILL_EVA			= SKILL_TRAINED,
						SKILL_SCIENCE		= SKILL_TRAINED,
						SKILL_PILOT			= SKILL_BASIC,
						SKILL_COMBAT		= SKILL_TRAINED,
						SKILL_WEAPONS		= SKILL_TRAINED)

	max_skill = list(	SKILL_PILOT		= SKILL_MASTER,
						SKILL_SCIENCE	= SKILL_MASTER,
						SKILL_COMBAT	= SKILL_MASTER,
						SKILL_WEAPONS	= SKILL_MASTER)
	skill_points = 28

	access = list(
		access_squad_leader, access_combat_engineer, access_combat_medic,
		access_marine, access_eva, access_maint_tunnels, access_bridge, access_emergency_storage,
		access_terragov_crew, access_expedition_shuttle_helm,
		access_hangar, access_stardust, access_stardust_helm,
		access_tox, access_tox_storage, access_research,
		access_xenobiology, access_xenoarch, access_terra_fax, access_radio_comm, access_radio_exp, access_radio_sci
	)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

	culture_whitelist = list(
		TAG_FACTION = list(
			FACTION_TERRAGOV,
			FACTION_TERRASENATE_UP,
			FACTION_TERRASENATE_PCOH,
			FACTION_TERRASENATE_TCG,
			FACTION_TERRASENATE_TDC,
			FACTION_TERRASENATE_ERC,
			),
		)

/datum/job/squad_leader/get_description_blurb()
	return "You are the Marine Corps Squad Leader. \
			<br><hr><br>\
			Your duty is to organize and lead the expeditions to away sites, securing planets worthy of \
			colonization, purging the area of hostile lifeforms in the process."

/datum/job/marine_medic
	title = "Combat Medic"
	department = "Exploration"
	department_flag = EXP

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Squad Leader and Commanding Officer"
	selection_color = COLOR_RED_ORANGE
	minimum_character_age = list(SPECIES_HUMAN = 22)
	maximum_character_age = list(SPECIES_HUMAN = 34)
	outfit_type = /decl/hierarchy/outfit/job/intrepid/crew/exploration/combat_medic
	allowed_branches = list(
		/datum/mil_branch/marine_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/mc/e3,
		/datum/mil_rank/mc/e4
	)
	min_skill = list(	SKILL_EVA		= SKILL_BASIC,
						SKILL_WEAPONS	= SKILL_TRAINED,
						SKILL_MEDICAL	= SKILL_TRAINED,
						SKILL_ANATOMY	= SKILL_BASIC)

	max_skill = list(	SKILL_MEDICAL	= SKILL_EXPERIENCED,
						SKILL_ANATOMY	= SKILL_EXPERIENCED,
						SKILL_COMBAT	= SKILL_EXPERIENCED,
						SKILL_WEAPONS	= SKILL_EXPERIENCED)
	skill_points = 22

	access = list(
		access_marine, access_combat_medic, access_maint_tunnels, access_eva, access_emergency_storage,
		access_terragov_crew, access_expedition_shuttle_helm, access_hangar,
		access_stardust, access_research, access_radio_exp
	)

	culture_whitelist = list(
		TAG_FACTION = list(
			FACTION_TERRAGOV,
			FACTION_TERRASENATE_UP,
			FACTION_TERRASENATE_PCOH,
			FACTION_TERRASENATE_TCG,
			FACTION_TERRASENATE_TDC,
			FACTION_TERRASENATE_ERC,
			),
		)

/datum/job/marine_medic/get_description_blurb()
	return "You are a Combat Medic of Marine Corps. \
			<br><hr><br>\
			Your duty is to assist your squad on the expeditions by providing medical assistance. \
			You report directly to your Squad Leader and Commanding Officer. \
			Your primary goal is securing the sector, clearing it from the hostile lifeforms and recovering \
			anything of economic/scientific value to TerraGov. \
			You will most likely encounter hazardous environments, aggressive wildlife or malfunctioning \
			defense systems, so tread carefully."

/datum/job/marine_engineer
	title = "Combat Engineer"
	department = "Exploration"
	department_flag = EXP

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Squad Leader and Commanding Officer"
	selection_color = COLOR_RED_ORANGE
	minimum_character_age = list(SPECIES_HUMAN = 22)
	maximum_character_age = list(SPECIES_HUMAN = 34)
	outfit_type = /decl/hierarchy/outfit/job/intrepid/crew/exploration/combat_engineer
	allowed_branches = list(
		/datum/mil_branch/marine_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/mc/e3,
		/datum/mil_rank/mc/e4
	)
	min_skill = list(	SKILL_EVA			= SKILL_BASIC,
						SKILL_WEAPONS		= SKILL_TRAINED,
						SKILL_CONSTRUCTION	= SKILL_TRAINED,
						SKILL_ELECTRICAL	= SKILL_TRAINED)

	max_skill = list(	SKILL_CONSTRUCTION	= SKILL_EXPERIENCED,
						SKILL_ELECTRICAL	= SKILL_EXPERIENCED,
						SKILL_COMBAT		= SKILL_EXPERIENCED,
						SKILL_WEAPONS		= SKILL_EXPERIENCED)
	skill_points = 20

	access = list(
		access_marine, access_combat_engineer, access_maint_tunnels, access_eva, access_emergency_storage,
		access_terragov_crew, access_expedition_shuttle_helm, access_hangar,
		access_stardust, access_research, access_radio_exp
	)

	culture_whitelist = list(
		TAG_FACTION = list(
			FACTION_TERRAGOV,
			FACTION_TERRASENATE_UP,
			FACTION_TERRASENATE_PCOH,
			FACTION_TERRASENATE_TCG,
			FACTION_TERRASENATE_TDC,
			FACTION_TERRASENATE_ERC,
			),
		)

/datum/job/marine_engineer/get_description_blurb()
	return "You are a Combat Engineer of Marine Corps. \
			<br><hr><br>\
			Your duty is to assist your squad on the expeditions by demolishing enemy's defenses, \
			broken-down structures or building cover. You report directly to your Squad Leader and \
			Commanding Officer. Your primary goal is securing the sector, clearing it from the hostile \
			lifeforms and recovering anything of economic/scientific value to TerraGov. \
			You will most likely encounter hazardous environments, aggressive wildlife or malfunctioning defense \
			systems, so tread carefully."

/datum/job/marine
	title = "Marine"
	department = "Exploration"
	department_flag = EXP

	total_positions = 2
	spawn_positions = 2
	supervisors = "the Squad Leader and Commanding Officer"
	selection_color = COLOR_RED_ORANGE
	minimum_character_age = list(SPECIES_HUMAN = 18)
	maximum_character_age = list(SPECIES_HUMAN = 28)
	outfit_type = /decl/hierarchy/outfit/job/intrepid/crew/exploration/marine
	allowed_branches = list(
		/datum/mil_branch/marine_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/mc/e1,
		/datum/mil_rank/mc/e2
	)
	min_skill = list(	SKILL_EVA		= SKILL_BASIC,
						SKILL_WEAPONS	= SKILL_TRAINED)

	max_skill = list(	SKILL_COMBAT	= SKILL_EXPERIENCED,
						SKILL_WEAPONS	= SKILL_EXPERIENCED)

	access = list(
		access_marine, access_maint_tunnels, access_eva, access_emergency_storage,
		access_terragov_crew, access_expedition_shuttle_helm, access_hangar,
		access_stardust, access_research, access_radio_exp
	)

	culture_whitelist = list(
		TAG_FACTION = list(
			FACTION_TERRAGOV,
			FACTION_TERRASENATE_UP,
			FACTION_TERRASENATE_PCOH,
			FACTION_TERRASENATE_TCG,
			FACTION_TERRASENATE_TDC,
			FACTION_TERRASENATE_ERC,
			),
		)

/datum/job/marine/get_description_blurb()
	return "You are a Marine. \
			<br><hr><br>\
			Your duty is to go on expeditions to away sites. \
			You report directly to your Squad Leader and Commanding Officer. \
			Your primary goal is securing the sector, clearing it from the hostile lifeforms and recovering \
			anything of economic/scientific value to TerraGov. You will most likely encounter hazardous \
			environments, aggressive wildlife or malfunctioning defense systems, so tread carefully."

/* Trusted role */
/datum/job/marine_veteran
	title = "Marine Veteran"
	department = "Exploration"
	department_flag = EXP

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer"
	selection_color = COLOR_RED_ORANGE
	requires_trusted_player = TRUE
	economic_power = 20
	minimum_character_age = list(SPECIES_HUMAN = 55)
	maximum_character_age = list(SPECIES_HUMAN = 70)
	outfit_type = /decl/hierarchy/outfit/job/intrepid/crew/exploration/marine_veteran
	allowed_branches = list(
		/datum/mil_branch/marine_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/mc/e8,
		/datum/mil_rank/mc/e9
	)
	min_skill = list(	SKILL_BUREAUCRACY	= SKILL_TRAINED,
						SKILL_FINANCE		= SKILL_BASIC,
						SKILL_EVA			= SKILL_TRAINED,
						SKILL_MECH			= HAS_PERK,
						SKILL_SCIENCE		= SKILL_TRAINED,
						SKILL_PILOT			= SKILL_BASIC,
						SKILL_COMBAT		= SKILL_TRAINED,
						SKILL_WEAPONS		= SKILL_EXPERIENCED)

	max_skill = list(	SKILL_PILOT		= SKILL_TRAINED,
						SKILL_SCIENCE	= SKILL_TRAINED,
						SKILL_COMBAT	= SKILL_EXPERIENCED,
						SKILL_WEAPONS	= SKILL_MASTER)
	skill_points = 20

	access = list(
		access_marine, access_eva, access_maint_tunnels, access_bridge, access_emergency_storage,
		access_terragov_crew, access_expedition_shuttle_helm,
		access_hangar, access_stardust, access_stardust_helm,
		access_tox, access_tox_storage, access_research,
		access_xenobiology, access_xenoarch, access_terra_fax, access_radio_comm, access_radio_exp, access_radio_sci
	)

	culture_whitelist = list(
		TAG_FACTION = list(
			FACTION_TERRAGOV,
			FACTION_TERRASENATE_UP,
			FACTION_TERRASENATE_PCOH,
			FACTION_TERRASENATE_TCG,
			FACTION_TERRASENATE_TDC,
			FACTION_TERRASENATE_ERC,
			),
		)

/datum/job/marine_veteran/get_description_blurb()
	return "You are a Marine Corps Veteran. \
			<br><hr><br>\
			You are an old marine that have seen quite a lot of combat, maybe even personally knew some of the civil war heroes. \
			While you are an absolute expert in most fields due to old training program, the years haven't been kind to you and \
			your physical capabilities have been affected. <br>\
			You are mere years from retirement, so try not to push your luck with combat engagements. <br>\
			Your main task is to educate the new generation of soldiers and teach them about how it was done in the old days."
