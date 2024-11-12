local Public = require 'common'
local tints = require 'utils.layers'.tints

data.raw["technology"]["uranium-processing"].research_trigger = nil
data.raw["technology"]["uranium-processing"].unit =
{
	ingredients =
	{
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack",   1 },
		{ "chemical-science-pack",   1 }
	},
	time = 30,
	count = 200
}

local steel_wall = table.deepcopy(data.raw["technology"]["stone-wall"])
steel_wall.name = "steel-wall"
steel_wall.icon = Public.mod_prefix .. '/graphics/technology/stone-wall.png'
steel_wall.tint = { r = 0.5, g = 0.5, b = 0.5 }
steel_wall.effects[1].recipe = 'steel-wall'
steel_wall.prerequisites = { 'steel-processing', 'military-science-pack' }
steel_wall.unit =
{
	count = 200,
	ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack",   1 },
		{ "military-science-pack",   1 } },
	time = 45
}

data:extend { steel_wall }

data:extend {
	{
		type = "technology",
		name = "steam-power-mk2",
		icons = {
			{
				icon = "__base__/graphics/technology/steam-power.png",
				icon_size = 256, icon_mipmaps = 4,
				tint = tints.mk2
			},
		},
		prerequisites = { "steam-power" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "boiler-mk2"
			},
			{
				type = "unlock-recipe",
				recipe = "steam-engine-mk2"
			}
		},
		unit =
		{
			count = 100,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "steam-power-mk3",
		icons = {
			{
				icon = "__base__/graphics/technology/steam-power.png",
				icon_size = 256, icon_mipmaps = 4,
				tint = tints.mk3
			},
		},
		prerequisites = { "steam-power-mk2" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "boiler-mk3"
			},
			{
				type = "unlock-recipe",
				recipe = "steam-engine-mk3"
			}
		},
		unit =
		{
			count = 200,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "solar-energy-mk2",
		icons = {
			{
				icon = "__base__/graphics/technology/solar-energy.png",
				icon_size = 256, icon_mipmaps = 4,
				tint = tints.mk2
			},
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "solar-panel-mk2"
			}
		},
		prerequisites = { "solar-energy" },
		unit =
		{
			count = 250,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "solar-energy-mk3",
		icons = {
			{
				icon = "__base__/graphics/technology/solar-energy.png",
				icon_size = 256, icon_mipmaps = 4,
				tint = tints.mk3
			},
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "solar-panel-mk3"
			}
		},
		prerequisites = { "solar-energy" },
		unit =
		{
			count = 250,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "electric-energy-accumulators-mk2",
		icon = "__base__/graphics/technology/electric-energy-acumulators.png",
		icons = {
			{
				icon = "__base__/graphics/technology/electric-energy-acumulators.png",
				icon_size = 256, icon_mipmaps = 4,
				tint = tints.mk2
			},
		},
		localised_name = { "technology-name.electric-energy-accumulators-2" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "accumulator-mk2"
			}
		},
		prerequisites = { "electric-energy-accumulators" },
		unit =
		{
			count = 250,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "electric-energy-accumulators-mk3",
		icon = "__base__/graphics/technology/electric-energy-acumulators.png",
		icons = {
			{
				icon = "__base__/graphics/technology/electric-energy-acumulators.png",
				icon_size = 256, icon_mipmaps = 4,
				tint = tints.mk3
			},
		},
		localised_name = { "technology-name.electric-energy-accumulators-2" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "accumulator-mk3"
			}
		},
		prerequisites = { "electric-energy-accumulators-mk2" },
		unit =
		{
			count = 350,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "power-armor-mk3",
		icons = {
			{
				icon = "__base__/graphics/technology/power-armor-mk2.png",
				icon_size = 256, icon_mipmaps = 4,
				tint = tints.red
			},
		},
		icon_size = 256,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "power-armor-mk3"
			}
		},
		prerequisites = { "power-armor-mk2", },
		unit =
		{
			count = 800,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "power-armor-mk4",
		icons = {
			{
				icon = "__base__/graphics/technology/power-armor-mk2.png",
				icon_size = 256, icon_mipmaps = 4,
				tint = tints.yellow
			},
		},
		icon_size = 256,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "power-armor-mk4"
			}
		},
		prerequisites = { "power-armor-mk3", },
		unit =
		{
			count = 1200,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "power-armor-mk5",
		icons = {
			{
				icon = "__base__/graphics/technology/power-armor-mk2.png",
				icon_size = 256, icon_mipmaps = 4,
				tint = tints.steel
			},
		},
		icon_size = 256,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "power-armor-mk5"
			}
		},
		prerequisites = { "power-armor-mk4", },
		unit =
		{
			count = 1800,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "fish-technologies",
		icon = "__base__/graphics/icons/fish.png",
		tint = { r = 0.0, g = 0.0, b = 1.0 },
		icon_size = 64,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "cooked-fish"
			},
			{
				type = "unlock-recipe",
				recipe = "grilled-fish"
			}
		},
		prerequisites = { "logistic-science-pack", "military-2" },
		unit =
		{
			count = 400,
			ingredients =
			{
				{ "logistic-science-pack", 1 },
				{ "military-science-pack", 1 },
			},
			time = 45
		}
	}
}


local mk2_icons = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/personal-laser-defense-equipment.png")
mk2_icons[1].tint = tints.red

data:extend {
	{
		type = "technology",
		name = "personal-laser-defense-mk2-equipment",
		icons = mk2_icons,
		prerequisites = { "personal-laser-defense-equipment", },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "personal-laser-defense-mk2-equipment"
			}
		},
		unit =
		{
			count = 200,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}
local mk3_icons = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/personal-laser-defense-equipment.png")
mk3_icons[1].tint = tints.yellow

data:extend {
	{
		type = "technology",
		name = "personal-laser-defense-mk3-equipment",
		icons = mk3_icons,
		prerequisites = { "personal-laser-defense-mk2-equipment" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "personal-laser-defense-mk3-equipment"
			}
		},
		unit =
		{
			count = 400,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

local mk4_icons = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/personal-laser-defense-equipment.png")
mk4_icons[1].tint = tints.cyan

data:extend {
	{
		type = "technology",
		name = "personal-laser-defense-mk4-equipment",
		icons = mk4_icons,
		prerequisites = { "personal-laser-defense-mk3-equipment" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "personal-laser-defense-mk4-equipment"
			}
		},
		unit =
		{
			count = 600,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}
local mk5_icons = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/personal-laser-defense-equipment.png")
mk5_icons[1].tint = tints.steel

data:extend {
	{
		type = "technology",
		name = "personal-laser-defense-mk5-equipment",
		icons = mk5_icons,
		prerequisites = { "personal-laser-defense-mk4-equipment" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "personal-laser-defense-mk5-equipment"
			}
		},
		unit =
		{
			count = 800,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

local es_mk3 = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/energy-shield-mk2-equipment.png")
es_mk3[1].tint = tints.red

data:extend {
	{
		type = "technology",
		name = "energy-shield-mk3-equipment",
		icons = es_mk3,
		prerequisites = { "energy-shield-mk2-equipment" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "energy-shield-mk3-equipment"
			}
		},
		unit =
		{
			count = 400,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

local es_mk4 = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/energy-shield-mk2-equipment.png")
es_mk4[1].tint = tints.yellow

data:extend {
	{
		type = "technology",
		name = "energy-shield-mk4-equipment",
		icons = es_mk4,
		prerequisites = { "energy-shield-mk3-equipment" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "energy-shield-mk4-equipment"
			}
		},
		unit =
		{
			count = 600,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

local es_mk5 = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/energy-shield-mk2-equipment.png")
es_mk5[1].tint = tints.steel

data:extend {
	{
		type = "technology",
		name = "energy-shield-mk5-equipment",
		icons = es_mk5,
		prerequisites = { "energy-shield-mk4-equipment" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "energy-shield-mk5-equipment"
			}
		},
		unit =
		{
			count = 800,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

local b_mk3 = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/battery-mk2-equipment.png")
b_mk3[1].tint = tints.red

data:extend {
	{
		type = "technology",
		name = "battery-mk3-equipment",
		icons = b_mk3,
		prerequisites = { "battery-mk2-equipment", },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "battery-mk3-equipment"
			}
		},
		unit =
		{
			count = 200,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

local b_mk4 = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/battery-mk2-equipment.png")
b_mk4[1].tint = tints.yellow

data:extend {
	{
		type = "technology",
		name = "battery-mk4-equipment",
		icons = b_mk4,
		prerequisites = { "battery-mk3-equipment", },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "battery-mk4-equipment"
			}
		},
		unit =
		{
			count = 400,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

local b_mk5 = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/battery-mk2-equipment.png")
b_mk5[1].tint = tints.steel

data:extend {
	{
		type = "technology",
		name = "battery-mk5-equipment",
		icons = b_mk5,
		prerequisites = { "battery-mk4-equipment", },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "battery-mk5-equipment"
			}
		},
		unit =
		{
			count = 600,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

local sp_mk2 = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/solar-panel-equipment.png")
sp_mk2[1].tint = tints.red

data:extend {
	{
		type = "technology",
		name = "solar-panel-mk2-equipment",
		icons = sp_mk2,
		prerequisites = { "solar-panel-equipment", },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "solar-panel-mk2-equipment"
			}
		},
		unit =
		{
			count = 200,
			ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } },
			time = 15
		}
	}
}

local sp_mk3 = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/solar-panel-equipment.png")
sp_mk3[1].tint = tints.yellow

data:extend {
	{
		type = "technology",
		name = "solar-panel-mk3-equipment",
		icons = sp_mk3,
		prerequisites = { "solar-panel-mk2-equipment", },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "solar-panel-mk3-equipment"
			}
		},
		unit =
		{
			count = 200,
			ingredients = { { "automation-science-pack", 1 },

				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
			},
			time = 15
		}
	}
}

local fr_mk2 = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/fission-reactor-equipment.png")
fr_mk2[1].tint = tints.red

data:extend {
	{
		type = "technology",
		name = "fission-reactor-mk2-equipment",
		icons = fr_mk2,
		prerequisites = { "utility-science-pack", "power-armor", "military-science-pack", "nuclear-power" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "fission-reactor-mk2-equipment"
			}
		},
		unit =
		{
			count = 400,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

local fr_mk3 = util.technology_icon_constant_equipment(
	"__base__/graphics/technology/fission-reactor-equipment.png")
fr_mk3[1].tint = tints.yellow

data:extend {
	{
		type = "technology",
		name = "fission-reactor-mk3-equipment",
		icons = fr_mk3,
		prerequisites = { "fission-reactor-mk2-equipment" },
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "fission-reactor-mk3-equipment"
			}
		},
		unit =
		{
			count = 600,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

return Public
