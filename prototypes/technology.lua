local Public = require 'common'

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
steel_wall.icon = Public.mod_prefix .. '/graphics/reskins/technology/warfare/reinforced-wall.png'
steel_wall.effects[1].recipe = 'steel-wall'
steel_wall.prerequisites = { 'steel-processing', 'military-science-pack' }
steel_wall.unit =
{
	count = 200,
	ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack",   1 },
		{ "military-science-pack",   1 },
		{ "chemical-science-pack",   1 },
		{ "production-science-pack", 1 },
	},
	time = 45
}

data:extend { steel_wall }

local function fix_technology_color(folder, tech, tier, path, equip, size)
	if path then
		return {
			{
				icon = path,
				icon_size = size or 256,
				icon_mipmaps = 4,
			}
		}
	end

	local icons = {
		{
			icon = Public.mod_prefix ..
				'/graphics/reskins/technology/' .. folder .. '/' .. tech .. '/' .. tech .. '-technology-base.png',
			icon_size = size or 256,
			icon_mipmaps = 4,
		},
		{
			icon = Public.mod_prefix ..
				'/graphics/reskins/technology/' .. folder .. '/' .. tech .. '/' .. tech .. '-technology-highlights.png',
			icon_size = size or 256,
			icon_mipmaps = 4,
			tint = Public.tiers[tier]
		},
		{
			icon = Public.mod_prefix ..
				'/graphics/reskins/technology/' .. folder .. '/' .. tech .. '/' .. tech .. '-technology-mask.png',
			icon_size = size or 256,
			icon_mipmaps = 4,
			tint = Public.tiers[tier]
		},
	}

	if equip then
		icons[#icons + 1] = {
			icon = "__core__/graphics/icons/technology/constants/constant-equipment.png",
			icon_size = 128,
			scale = 0.5,
			shift = { 50, 50 }
		}
	end
	return icons
end

data.raw['technology']['steam-power'].icons = fix_technology_color('power', 'steam-engine', 1, nil, nil, 128)

data.raw['technology']['solar-energy'].icons = fix_technology_color('power', 'solar-energy', 1)

data:extend {
	{
		type = "technology",
		name = "steam-power-mk2",
		icons = fix_technology_color('power', 'steam-engine', 2, nil, nil, 128),
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
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 }
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "steam-power-mk3",
		icons = fix_technology_color('power', 'steam-engine', 3, nil, nil, 128),
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
				{ "production-science-pack", 1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "solar-energy-mk2",
		icons = fix_technology_color('power', 'solar-energy'),
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
				{ "production-science-pack", 1 }
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "solar-energy-mk3",
		icons = fix_technology_color('power', 'solar-energy'),
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "solar-panel-mk3"
			}
		},
		prerequisites = { "solar-energy-mk2" },
		unit =
		{
			count = 250,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "electric-energy-accumulators-mk2",
		icon = "__base__/graphics/technology/electric-energy-acumulators.png",
		icons = fix_technology_color('power', 'accumulator', 2),
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
				{ "military-science-pack",   1 },
				{ "production-science-pack", 1 }
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "electric-energy-accumulators-mk3",
		icon = "__base__/graphics/technology/electric-energy-acumulators.png",
		icons = fix_technology_color('power', 'accumulator', 3),
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
				{ "production-science-pack", 1 },
				{ "utility-science-pack",    1 }
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "power-armor-mk3",
		icons = fix_technology_color('', '', 5, Public.mod_prefix .. '/graphics/reskins/technology/warfare/armor/power-armor-3.png'),
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
		icons = fix_technology_color('', '', 5, Public.mod_prefix .. '/graphics/reskins/technology/warfare/armor/power-armor-4.png'),
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
				{ "utility-science-pack",    1 },
				{ "space-science-pack",      1 },
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "power-armor-mk5",
		icons = fix_technology_color('', '', 5, Public.mod_prefix .. '/graphics/reskins/technology/warfare/armor/power-armor-5.png'),
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
			count = 2400,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "utility-science-pack",    1 },
				{ "space-science-pack",      1 },
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
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "chemical-science-pack",   1 },
			},
			time = 45
		}
	}
}


data:extend {
	{
		type = "technology",
		name = "personal-laser-defense-mk2-equipment",
		icons = fix_technology_color('equipment', 'laser-defense', 2, nil, true),
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

data:extend {
	{
		type = "technology",
		name = "personal-laser-defense-mk3-equipment",
		icons = fix_technology_color('equipment', 'laser-defense', 3, nil, true),
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
				{ "logistic-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack",    1 },
				{ "space-science-pack",      1 },
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "personal-laser-defense-mk4-equipment",
		icons = fix_technology_color('equipment', 'laser-defense', 4, nil, true),
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
				{ "logistic-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack",    1 },
				{ "space-science-pack",      1 },
			},
			time = 30
		}
	}
}
data:extend {
	{
		type = "technology",
		name = "personal-laser-defense-mk5-equipment",
		icons = fix_technology_color('equipment', 'laser-defense', 5, nil, true),
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
				{ "logistic-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack",    1 },
				{ "space-science-pack",      1 },
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "energy-shield-mk3-equipment",
		icons = fix_technology_color('equipment', 'energy-shield', 3, nil, true),
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

data:extend {
	{
		type = "technology",
		name = "energy-shield-mk4-equipment",
		icons = fix_technology_color('equipment', 'energy-shield', 4, nil, true),
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
				{ "utility-science-pack",    1 },
				{ "space-science-pack",      1 },
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "energy-shield-mk5-equipment",
		icons = fix_technology_color('equipment', 'energy-shield', 5, nil, true),
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
				{ "utility-science-pack",    1 },
				{ "space-science-pack",      1 },
			},
			time = 30
		}
	}
}

data.raw['technology']['battery-mk2-equipment'].icons = fix_technology_color('equipment', 'battery', 2, nil, true)

data:extend {
	{
		type = "technology",
		name = "battery-mk3-equipment",
		icons = fix_technology_color('equipment', 'battery', 3, nil, true),
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

data:extend {
	{
		type = "technology",
		name = "battery-mk4-equipment",
		icons = fix_technology_color('equipment', 'battery', 4, nil, true),
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
				{ "utility-science-pack",    1 },
				{ "space-science-pack",      1 },
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "battery-mk5-equipment",
		icons = fix_technology_color('equipment', 'battery', 5, nil, true),
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
				{ "utility-science-pack",    1 },
				{ "space-science-pack",      1 },
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "solar-panel-mk2-equipment",
		icons = fix_technology_color('equipment', 'solar-panel', 2, nil, true),
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

data:extend {
	{
		type = "technology",
		name = "solar-panel-mk3-equipment",
		icons = fix_technology_color('equipment', 'solar-panel', 3, nil, true),
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
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "production-science-pack", 1 },
			},
			time = 15
		}
	}
}

data.raw['technology']['fission-reactor-equipment'].icons = fix_technology_color('equipment', 'fission-reactor', 1, nil,
	true)

data:extend {
	{
		type = "technology",
		name = "fission-reactor-mk2-equipment",
		icons = fix_technology_color('equipment', 'fission-reactor', 2, nil, true),
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
			count = 800,
			ingredients =
			{
				{ "logistic-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack",    1 },
			},
			time = 30
		}
	}
}

data:extend {
	{
		type = "technology",
		name = "fission-reactor-mk3-equipment",
		icons = fix_technology_color('equipment', 'fission-reactor', 3, nil, true),
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
			count = 800,
			ingredients =
			{
				{ "logistic-science-pack",   1 },
				{ "military-science-pack",   1 },
				{ "chemical-science-pack",   1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack",    1 },
				{ "space-science-pack",      1 },
			},
			time = 30
		}
	}
}

return Public
