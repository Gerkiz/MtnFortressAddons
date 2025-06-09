local Public = require 'common'
data:extend {
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-piercing-biter-t1',
			health = 250,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 4,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 16, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-piercing-biter-t2',
			health = 450,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 5,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 18, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-piercing-biter-t3',
			health = 650,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 6,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 20, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-acid-biter-t1',
			health = 250,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 4,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 16, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-acid-biter-t2',
			health = 450,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 6,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 18, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-acid-biter-t3',
			health = 650,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 6,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 20, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-explosive-biter-t1',
			health = 250,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 4,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 16, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-explosive-biter-t2',
			health = 450,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 5,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 18, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-explosive-biter-t3',
			health = 650,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 6,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 20, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-poison-biter-t1',
			health = 250,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 4,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 16, type = 'poison' }
				},
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-poison-biter-t2',
			health = 450,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 5,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 18, type = 'poison' }
				},
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-poison-biter-t3',
			health = 650,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 6,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 20, type = 'poison' }
				},
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-fire-biter-t1',
			health = 250,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 4,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 16, type = 'fire' }
				},
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-fire-biter-t2',
			health = 450,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 5,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 18, type = 'fire' }
				},
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-medium-fire-biter-t3',
			health = 650,
			size = 'medium',
			healing_per_tick = 0.04,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 1.6,
			resistances = {
				{
					type = "physical",
					decrease = 6,
					percent = 10
				},
				{
					type = "explosion",
					percent = 10
				},
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 20, type = 'fire' }
				},
			}
		}
	)
}
return Public
