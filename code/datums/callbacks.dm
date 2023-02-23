// USAGE:
//
// 	var/datum/callback/C = new(object|null, /proc/type/path|"procstring", arg1, arg2, ... argn)
// 	var/timerid = addtimer(C, time, timertype)
// 	OR
// 	var/timerid = addtimer(CALLBACK(object|null, /proc/type/path|procstring, arg1, arg2, ... argn), time, timertype)
//
// 	Note: proc strings can only be given for datum proc calls, global procs must be proc paths
// 	Also proc strings are strongly advised against because they don't compile error if the proc stops existing
// 	See the note on proc typepath shortcuts
//
// INVOKING THE CALLBACK:
// 	var/result = C.Invoke(args, to, add) //additional args are added after the ones given when the callback was created
// 	OR
// 	var/result = C.InvokeAsync(args, to, add) //Sleeps will not block, returns . on the first sleep (then continues on in the "background" after the sleep/block ends), otherwise operates normally.
// 	OR
// 	INVOKE_ASYNC(<CALLBACK args>) to immediately create and call InvokeAsync
//
// PROC TYPEPATH SHORTCUTS (these operate on paths, not types, so to these shortcuts, datum is NOT a parent of atom, etc...)
//
// 	global proc while in another global proc:
// 		.procname
// 		Example:
// 			CALLBACK(GLOBAL_PROC, .some_proc_here)
//
// 	proc defined on current(src) object (when in a /proc/ and not an override) OR overridden at src or any of it's parents:
// 		.procname
// 		Example:
// 			CALLBACK(src, .some_proc_here)
//
//
// 	when the above doesn't apply:
// 		.proc/procname
// 		Example:
// 			CALLBACK(src, .proc/some_proc_here)
//
// 	proc defined on a parent of a some type:
// 		/some/type/.proc/some_proc_here
//
//
//
// 	Other wise you will have to do the full typepath of the proc (/type/of/thing/proc/procname)

var/global/const/GLOBAL_PROC = FALSE

var/global/const/Callback = /datum/callback


/datum/callback
	//var/const/Global = FALSE //515 - GLOBAL_PROC becomes Callback::Global
	var/identity
	var/datum/target = GLOBAL_PROC
	var/callable
	var/list/params


/datum/callback/Destroy()
	target = null
	callable = null
	LAZYCLEARLIST(params)
	return ..()


/datum/callback/New(datum/target, callable, ...)
	src.target = target
	src.callable = callable
	if (length(args) > 2)
		params = args.Copy(3)
	switch (target)
		if (null)
			identity = "(null) [callable]"
		if (FALSE)
			identity = "(global) [callable]"
		else
			identity = "([target.type] \ref[target]) [callable]"


/proc/invoke(datum/callback/target, callable, ...)
	if (target == GLOBAL_PROC)
		var/list/params
		if (length(args) > 2)
			params = args.Copy(3)
		return call(callable)(arglist(params))
	else if (QDELETED(target))
		return
	else if (istype(target))
		var/list/params = list(target.target, target.callable)
		if (LAZYLEN(target.params))
			params += target.params
		if (length(args) > 1)
			params += args.Copy(2)
		return invoke(arglist(params))
	else
		var/list/params
		if (length(args) > 2)
			params = args.Copy(3)
		return call(target, callable)(arglist(params))


/proc/invoke_async(datum/callback/target, callable, ...)
	set waitfor = FALSE
	if (target == GLOBAL_PROC)
		var/list/params
		if (length(args) > 2)
			params = args.Copy(3)
		return call(callable)(arglist(params))
	else if (QDELETED(target))
		return
	else if (istype(target))
		var/list/params = list(target.target, target.callable) + target.params
		if (length(args) > 1)
			params += args.Copy(2)
		return invoke(arglist(params))
	else
		var/list/params
		if (length(args) > 2)
			params = args.Copy(3)
		return call(target, callable)(arglist(params))
