local function is_valid_inserter(inserter)
	return inserter and inserter.valid and inserter.type == "inserter" or
		(inserter.type == "entity-ghost" and inserter.ghost_type == "inserter")
end

local positions = {
	[0] = 1,
	[1] = 2,
	[2] = 3,
	[3] = 4,
	[4] = 5,
	[5] = 6,
	[6] = 7,
	[7] = 8,
	[8] = 9,
	[9] = 10,
	[10] = 11,
	[11] = 12,
	[12] = 13,
	[13] = 14,
	[14] = 15,
	[15] = 0,
}

local reverse_positions = {
	[1] = 0,
	[2] = 1,
	[3] = 2,
	[4] = 3,
	[5] = 4,
	[6] = 5,
	[7] = 6,
	[8] = 7,
	[9] = 8,
	[10] = 9,
	[11] = 10,
	[12] = 11,
	[13] = 12,
	[14] = 13,
	[15] = 14,
	[0] = 15,
}

local function on_player_rotated_entity(event)
	local entity = event.entity
	if not entity or not entity.valid then
		return
	end

	if not is_valid_inserter(entity) then
		return
	end

	entity.direction = positions[event.previous_direction]
end

local function on_mtn_shift_reverse_inserter(event)
	local player = game.get_player(event.player_index)
	if not player or not player.valid then
		return
	end
	local entity = player.selected
	if not entity or not entity.valid then
		return
	end

	if not is_valid_inserter(entity) then
		return
	end

	local new_dir = entity.direction - 1
	if new_dir < 0 then
		new_dir = 15
	end

	---@diagnostic disable-next-line: assign-type-mismatch
	entity.direction = reverse_positions[new_dir]
end

script.on_event(defines.events.on_player_rotated_entity, on_player_rotated_entity)

---@diagnostic disable-next-line: undefined-field
script.on_event(defines.events.on_mtn_shift_reverse_inserter, on_mtn_shift_reverse_inserter)
