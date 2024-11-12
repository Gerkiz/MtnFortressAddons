local Public = require 'common'

local collision_mask = {
	layers = {
		ground_tile = true,
		water_tile = true,
		resource = true,
		floor = true,
		item = true,
		object = true,
		player = true,
		doodad = true
	},
}

local void = table.deepcopy(data.raw.tile["water-shallow"])
void.name = "void-tile"
void.type = "tile"
void.order = "z[other]-a[out-of-map]"
void.collision_mask = collision_mask
void.subgroup = "special-tiles"
void.layer_group = "zero"
void.layer = 0
void.autoplace = nil
void.destroys_dropped_items = true
void.effect_color = { 0, 0, 0 }
void.effect_color_secondary = { 0, 0, 0 }
void.map_color = { r = 0, g = 0, b = 0 }
void.variants = {
	empty_transitions = true,
	main = {
		{
			count = 1,
			picture = Public.mod_prefix .. "/graphics/terrain/out-of-map.png",
			size = 1
		}
	}
}
void.default_cover_tile = nil

data:extend { void }

out_of_map_tile_type_names[#out_of_map_tile_type_names + 1] = "void-tile"
