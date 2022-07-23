/datum/map/exodus
	id_hud_icons = 'maps/exodus/hud.dmi'

	allowed_jobs = list(
		/datum/job/captain,
		/datum/job/hop,
		/datum/job/chaplain,
		/datum/job/bartender,
		/datum/job/chef,
		/datum/job/hydro,
		/datum/job/qm,
		/datum/job/cargo_tech,
		/datum/job/mining,
		/datum/job/janitor,
		/datum/job/librarian,
		/datum/job/lawyer,
		/datum/job/chief_engineer,
		/datum/job/engineer,
		/datum/job/cmo,
		/datum/job/doctor,
		/datum/job/chemist,
		/datum/job/counselor,
		/datum/job/rd,
		/datum/job/scientist,
		/datum/job/roboticist,
		/datum/job/hos,
		/datum/job/detective,
		/datum/job/warden,
		/datum/job/officer,
		/datum/job/cyborg,
		/datum/job/ai
	)

	species_to_job_whitelist = list(
		/datum/species/adherent = list(
			/datum/job/ai,
			/datum/job/cyborg,
			/datum/job/assistant,
			/datum/job/janitor,
			/datum/job/chef,
			/datum/job/cargo_tech,
			/datum/job/engineer,
			/datum/job/roboticist,
			/datum/job/chemist,
			/datum/job/scientist,
			//datum/job/nt_pilot,
			/datum/job/mining
		),

		/datum/species/nabber = list(
			/datum/job/ai,
			/datum/job/cyborg,
			/datum/job/janitor,
			/datum/job/assistant,
			/datum/job/chemist,
			/datum/job/roboticist,
			/datum/job/cargo_tech,
			/datum/job/chef,
			/datum/job/engineer,
			/datum/job/doctor
		 ),

		/datum/species/human/mule = list(
			/datum/job/ai,
			/datum/job/cyborg,
			/datum/job/merchant
		)

	)

#define HUMAN_ONLY_JOBS /datum/job/captain, /datum/job/hop

	species_to_job_blacklist = list(
		/datum/species/unathi  = list(HUMAN_ONLY_JOBS, /datum/job/lawyer), //Other jobs unavailable via branch restrictions,
		/datum/species/unathi/yeosa = list(HUMAN_ONLY_JOBS, /datum/job/lawyer, /datum/job/warden),
		/datum/species/skrell  = list(HUMAN_ONLY_JOBS),
		/datum/species/machine = list(HUMAN_ONLY_JOBS, /datum/job/psychiatrist),
		/datum/species/machine/shell   = list(HUMAN_ONLY_JOBS, /datum/job/psychiatrist, /datum/job/officer, /datum/job/warden),
		/datum/species/diona   = list(HUMAN_ONLY_JOBS, /datum/job/officer, /datum/job/warden, /datum/job/doctor),	//Other jobs unavailable via branch restrictions,
	)

#undef HUMAN_ONLY_JOBS


	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_hos, access_change_ids),
		ACCESS_REGION_MEDBAY = list(access_cmo, access_change_ids),
		ACCESS_REGION_RESEARCH = list(access_rd, access_change_ids),
		ACCESS_REGION_ENGINEERING = list(access_ce, access_change_ids),
		ACCESS_REGION_COMMAND = list(access_change_ids),
		ACCESS_REGION_GENERAL = list(access_change_ids),
		ACCESS_REGION_SUPPLY = list(access_qm, access_change_ids),
		ACCESS_REGION_SERVICE = list(access_hop, access_change_ids)
	)

/datum/map/exodus/setup_job_lists()
	for(var/job_type in allowed_jobs)
		var/datum/job/job = SSjobs.get_by_path(job_type)
		// Most species are restricted from SCG security and command roles
		if(job && (job.department_flag & COM) && job.allowed_branches.len && !(/datum/mil_branch/civilian in job.allowed_branches))
			for(var/species_name in list(SPECIES_IPC, SPECIES_SKRELL, SPECIES_UNATHI))
				var/datum/species/S = all_species[species_name]
				var/species_blacklist = species_to_job_blacklist[S.type]
				if(!species_blacklist)
					species_blacklist = list()
					species_to_job_blacklist[S.type] = species_blacklist
				species_blacklist |= job.type

// Some jobs for nabber grades defined here due to map-specific job datums.
/decl/cultural_info/culture/nabber/New()
	LAZYADD(valid_jobs, /datum/job/scientist_assistant)
	..()

/decl/cultural_info/culture/nabber/b/New()
	LAZYADD(valid_jobs, /datum/job/cargo_tech)
	..()

/decl/cultural_info/culture/nabber/a/New()
	LAZYADD(valid_jobs, /datum/job/engineer)
	..()

/decl/cultural_info/culture/nabber/a/plus/New()
	LAZYADD(valid_jobs, /datum/job/doctor)
	..()

/datum/job
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/employee
	)
	required_language = LANGUAGE_HUMAN_EURO
	psi_latency_chance = 5
	give_psionic_implant_on_join = FALSE
