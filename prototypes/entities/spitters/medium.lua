local Public = require 'common'
data:extend {
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-piercing-spitter-t1',
			health = 250,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 15
				},
				{
					type = 'poison',
					percent = 10
				},
				{
					type = 'acid',
					percent = 10
				}
			},
		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-piercing-spitter-t2',
			health = 350,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 15
				},
				{
					type = 'poison',
					percent = 10
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-piercing-spitter-t3',
			health = 450,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 15
				},
				{
					type = 'poison',
					percent = 10
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-acid-spitter-t1',
			health = 250,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					percent = 10
				},
				{
					type = 'acid',
					decrease = 6,
					percent = 32
				}
			},
		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-acid-spitter-t2',
			health = 350,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					percent = 10
				},
				{
					type = 'acid',
					decrease = 6,
					percent = 32
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-acid-spitter-t3',
			health = 450,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					percent = 10
				},
				{
					type = 'acid',
					decrease = 6,
					percent = 32
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-explosive-spitter-t1',
			health = 250,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					decrease = 6,
					percent = 32
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					percent = 10
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-explosive-spitter-t2',
			health = 350,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					decrease = 6,
					percent = 32
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					percent = 10
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-explosive-spitter-t3',
			health = 450,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					decrease = 6,
					percent = 32
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					percent = 10
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-poison-spitter-t1',
			health = 250,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					decrease = 8,
					percent = 40
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-poison-spitter-t2',
			health = 350,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					decrease = 8,
					percent = 40
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-poison-spitter-t3',
			health = 450,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					decrease = 8,
					percent = 40
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-fire-spitter-t1',
			health = 250,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'fire',
					decrease = 8,
					percent = 34
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					percent = 15
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-fire-spitter-t2',
			health = 350,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'fire',
					decrease = 8,
					percent = 34
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					percent = 15
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	),
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-medium-fire-spitter-t3',
			health = 450,
			size = 'medium',
			healing_per_tick = 0.02,
			damage_modifier = 29,
			min_attack_distance = 7,
			scale = Public.scales.medium_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 15,
			resistances = {
				{
					type = 'physical',
					decrease = 7,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 10
				},
				{
					type = 'laser',
					percent = 5
				},
				{
					type = 'fire',
					decrease = 8,
					percent = 34
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					percent = 15
				},
				{
					type = 'acid',
					percent = 10
				}
			},

		}
	)
}
return Public
