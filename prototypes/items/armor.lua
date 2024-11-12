local deepcopy = table.deepcopy
local tints = require 'utils.layers'.tints

local power_armor_mk3 = deepcopy(data.raw["armor"]["power-armor-mk2"])
power_armor_mk3.name = "power-armor-mk3"
power_armor_mk3.icons = {
	{
		icon = power_armor_mk3.icon,
		tint = tints.red
	},
}
power_armor_mk3.equipment_grid = "rare-equipment-grid"
power_armor_mk3.inventory_size_bonus = 30
power_armor_mk3.resistances =
{
	{
		type = "physical",
		decrease = 10,
		percent = 45
	},
	{
		type = "acid",
		decrease = 0,
		percent = 75
	},
	{
		type = "explosion",
		decrease = 60,
		percent = 55
	},
	{
		type = "fire",
		decrease = 0,
		percent = 75
	}
}
power_armor_mk3.order = "e[power-armor-mk3]"
power_armor_mk3.subgroup = "armor-mtn"

local power_armor_mk4 = deepcopy(data.raw["armor"]["power-armor-mk2"])
power_armor_mk4.name = "power-armor-mk4"
power_armor_mk4.icons = {
	{
		icon = power_armor_mk4.icon,
		tint = tints.yellow
	},
}
power_armor_mk4.equipment_grid = "epic-equipment-grid"
power_armor_mk4.inventory_size_bonus = 40
power_armor_mk4.resistances =
{
	{
		type = "physical",
		decrease = 10,
		percent = 50
	},
	{
		type = "acid",
		decrease = 0,
		percent = 80
	},
	{
		type = "explosion",
		decrease = 60,
		percent = 60
	},
	{
		type = "fire",
		decrease = 0,
		percent = 80
	}
}
power_armor_mk4.order = "e[power-armor-mk4]"
power_armor_mk4.subgroup = "armor-mtn"

local power_armor_mk5 = deepcopy(data.raw["armor"]["power-armor-mk2"])
power_armor_mk5.name = "power-armor-mk5"
power_armor_mk5.icons = {
	{
		icon = power_armor_mk5.icon,
		tint = tints.steel
	},
}
power_armor_mk5.equipment_grid = "legendary-equipment-grid"
power_armor_mk5.inventory_size_bonus = 50
power_armor_mk5.resistances =
{
	{
		type = "physical",
		decrease = 10,
		percent = 60
	},
	{
		type = "acid",
		decrease = 0,
		percent = 85
	},
	{
		type = "explosion",
		decrease = 60,
		percent = 70
	},
	{
		type = "fire",
		decrease = 0,
		percent = 85
	}
}
power_armor_mk5.order = "e[power-armor-mk5]"
power_armor_mk5.subgroup = "armor-mtn"

data:extend { power_armor_mk3, power_armor_mk4, power_armor_mk5 }
