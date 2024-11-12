local deepcopy = table.deepcopy
require 'prototypes.items.armor'
require 'prototypes.items.equipment'
require 'prototypes.items.others'

local cooked_fish = deepcopy(data.raw["capsule"]["raw-fish"])
cooked_fish.name = "cooked-fish"
cooked_fish.localised_description = { "mtn.cooked-fish" }
cooked_fish.icons = {
	{
		icon = cooked_fish.icon,
		tint = { r = 1, g = 0.5, b = 0.5 }
	},
}
cooked_fish.capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects[1].damage.amount = -120
cooked_fish.capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects[3] = {
	type = "create-entity",
	entity_name = "water-splash"
}

data:extend { cooked_fish }

local grilled_fish = deepcopy(data.raw["capsule"]["raw-fish"])
grilled_fish.name = "grilled-fish"
grilled_fish.localised_description = { "mtn.grilled-fish" }
grilled_fish.icons = {
	{
		icon = grilled_fish.icon,
		tint = { r = 0.8, g = 0.4, b = 0.1 }
	},
}
grilled_fish.capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects[1].damage.amount = -180
grilled_fish.capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects[3] = {
	type = "create-entity",
	entity_name = "medium-worm-die"
}

data:extend { grilled_fish }

local steel_wall = deepcopy(data.raw["item"]["stone-wall"])
steel_wall.name = "steel-wall"
steel_wall.order = "a[stone-wall]-b[steel-wall]"
steel_wall.icons = {
	{
		icon = steel_wall.icon,
		tint = { r = 0.5, g = 0.5, b = 0.5 }
	},
}
steel_wall.place_result = "steel-wall"
data:extend { steel_wall }


local ores = {
	"iron-ore",
	"copper-ore",
	"coal",
	"stone",
	"uranium-ore",
	"wood"
}

for _, ore in pairs(ores) do
	data.raw["item"][ore].stack_size = 200
end
