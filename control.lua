script.on_init(
	function()
		game.planets.fortress.create_surface()
	end)



script.on_event(defines.events.on_trigger_created_entity, function(event)
	local entity = event.entity
	if not (entity and entity.valid) then
		return
	end
	if entity.name ~= 'warp-sticker' then
		return
	end
	local source = event.source
	if not (source and source.valid) then
		return
	end
	local character = entity.sticked_to
	if not (character and character.valid) then
		return
	end

	if character.type ~= "character" then return end

	if not character.player or not character.player.valid then
		return
	end

	local data = {
		player_index = character.player.index,
		entity = source,
		position = source.position,
	}
	script.raise_event('on_player_warp_entered', data)
end)
