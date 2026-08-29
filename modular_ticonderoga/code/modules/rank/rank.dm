var/global/list/un_ranks = list()

/proc/build_rank_list()
	var/list/un_ranks_buffer = list()

	for (var/rank_type in concrete_typesof(/datum/rank))
		var/datum/rank/rank = get_singleton(rank_type)
		un_ranks_buffer[rank.name] = rank

	if (!length(un_ranks_buffer))
		return

	un_ranks_buffer = sortList(un_ranks_buffer, /proc/cmp_un_ranks, TRUE)
	global.un_ranks = un_ranks_buffer

/proc/cmp_un_ranks(datum/rank/rank_a, datum/rank/rank_b)
	if (rank_a.rank_type == rank_b.rank_type)
		return (rank_b.order - rank_a.order)
	return rank_b.rank_type == RANK_TYPE_OFFICER ? 1 : -1

/proc/get_rank(mob/living/carbon/human/target)
	. = FALSE

	if (!ishuman(target))
		return
	if (!ismind(target.mind))
		return

	var/datum/rank/target_rank = target.mind?.assigned_rank
	if (!istype(target_rank))
		return

	. = target_rank

/datum/mind/proc/assign_rank(datum/job/job)
	var/rank_name = ""

	if (!length(job.rank_type))
		src.assigned_rank = null
		return

	if (is_alist(job.rank_type))
		var/alist/rank_list = job.rank_type
		var/rounds_participated = src.current?.client?.player?.get_rounds_participated() || 0

		for (var/rank_type in rank_list)
			if (rank_list[rank_type] > rounds_participated)
				continue
			rank_name = rank_type
			break

		if (!length(rank_name))
			rank_name = rank_list[length(rank_list)]
	else
		rank_name = job.rank_type

	src.assigned_rank = global.un_ranks[rank_name] || null

/mob/living/carbon/human/proc/get_worn_rank()
	. = null

	var/obj/item/card/id/worn_id = get_id_card(src.wear_id)
	if (!istype(worn_id, /obj/item/card/id))
		return

	. = worn_id.rank

/// Cargo cult the parent proc so we can add ranks to the name tag.
/mob/living/carbon/human/update_name_tag(name = null)
	if (isnull(src.name_tag))
		return
	if (isnull(name))
		name = src.name
	if (name == "Unknown")
		name = ""
	var/the_pos = findtext(name, " the")
	if (the_pos)
		name = copytext(name, 1, the_pos)
	if (name)
		var/datum/rank/owner_rank = src.get_worn_rank()
		src.name_tag.set_info_tag("[owner_rank ? "Rank: [owner_rank.short_name] ([owner_rank.get_pay_grade()])<br>" : ""][he_or_she(src)]")
	else
		src.name_tag.set_info_tag("")
	src.name_tag.set_name(name, strip_parentheses=TRUE)

ABSTRACT_TYPE(/datum/rank)
/datum/rank
	var/name = RANK_ENLISTED_E1
	var/short_name = "S3C"
	var/rank_type = RANK_TYPE_ENLISTED
	var/order = 1
	/// Items to distribute to all rank-holders' emergency boxes on spawning.
	var/list/rank_items = list()

/datum/rank/proc/get_pay_grade()
	return "[src.rank_type][src.order]"
