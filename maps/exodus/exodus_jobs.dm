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
