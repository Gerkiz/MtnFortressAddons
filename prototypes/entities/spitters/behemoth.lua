local Public = require 'common'
data:extend {
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-behemoth-piercing-spitter-t1',
			health = 1150,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-piercing-spitter-t2',
			health = 1350,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-piercing-spitter-t3',
			health = 1650,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-acid-spitter-t1',
			health = 1150,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-acid-spitter-t2',
			health = 1350,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-acid-spitter-t3',
			health = 1650,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-explosive-spitter-t1',
			health = 1150,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-explosive-spitter-t2',
			health = 1350,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-explosive-spitter-t3',
			health = 1650,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-poison-spitter-t1',
			health = 1150,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-poison-spitter-t2',
			health = 1350,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-poison-spitter-t3',
			health = 1650,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-fire-spitter-t1',
			health = 1150,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-fire-spitter-t2',
			health = 1350,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
			name = 'mtn-addon-behemoth-fire-spitter-t3',
			health = 1650,
			size = 'giant',
			healing_per_tick = 0.02,
			damage_modifier = 66,
			min_attack_distance = 7,
			scale = Public.scales.giant_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 17,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
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
