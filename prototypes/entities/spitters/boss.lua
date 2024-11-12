local Public = require 'common'
data:extend {
	Public.common.create_new_spitter(
		{
			name = 'mtn-addon-boss-piercing-spitter-t1',
			health = 3000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_1,
			layer_2 = Public.layers.layer_2,
			range = 18,
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
			name = 'mtn-addon-boss-piercing-spitter-t2',
			health = 6000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_1,
			layer_2 = Public.layers.layer_2,
			range = 18,
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
			name = 'mtn-addon-boss-piercing-spitter-t3',
			health = 9000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_1,
			layer_2 = Public.layers.layer_2,
			range = 18,
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
			name = 'mtn-addon-boss-acid-spitter-t1',
			health = 3000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_3,
			layer_2 = Public.layers.layer_4,
			range = 18,
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
			name = 'mtn-addon-boss-acid-spitter-t2',
			health = 6000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_3,
			layer_2 = Public.layers.layer_4,
			range = 18,
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
			name = 'mtn-addon-boss-acid-spitter-t3',
			health = 9000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_3,
			layer_2 = Public.layers.layer_4,
			range = 18,
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
			name = 'mtn-addon-boss-explosive-spitter-t1',
			health = 3000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_5,
			layer_2 = Public.layers.layer_6,
			range = 18,
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
			name = 'mtn-addon-boss-explosive-spitter-t2',
			health = 6000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_5,
			layer_2 = Public.layers.layer_6,
			range = 18,
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
			name = 'mtn-addon-boss-explosive-spitter-t3',
			health = 9000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_5,
			layer_2 = Public.layers.layer_6,
			range = 18,
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
			name = 'mtn-addon-boss-poison-spitter-t1',
			health = 3000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_9,
			layer_2 = Public.layers.layer_10,
			range = 18,
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
			name = 'mtn-addon-boss-poison-spitter-t2',
			health = 6000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_9,
			layer_2 = Public.layers.layer_10,
			range = 18,
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
			name = 'mtn-addon-boss-poison-spitter-t3',
			health = 9000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_9,
			layer_2 = Public.layers.layer_10,
			range = 18,
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
			name = 'mtn-addon-boss-fire-spitter-t1',
			health = 3000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_11,
			layer_2 = Public.layers.layer_12,
			range = 18,
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
			name = 'mtn-addon-boss-fire-spitter-t2',
			health = 6000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_11,
			layer_2 = Public.layers.layer_12,
			range = 18,
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
			name = 'mtn-addon-boss-fire-spitter-t3',
			health = 9000,
			size = 'godzilla_scale',
			healing_per_tick = 0.02,
			damage_modifier = 100,
			min_attack_distance = 7,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.layers.layer_11,
			layer_2 = Public.layers.layer_12,
			range = 18,
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
