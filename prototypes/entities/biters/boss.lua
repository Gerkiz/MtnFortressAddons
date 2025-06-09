local Public = require 'common'
data:extend {
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-piercing-biter-t1',
			health = 3000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 59, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 102, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-piercing-biter-t2',
			health = 6000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 57, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 159, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-piercing-biter-t3',
			health = 9000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[1],
			layer_2 = Public.layers.layer_2,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 51, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 154, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-acid-biter-t1',
			health = 3000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 57, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 157, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-acid-biter-t2',
			health = 6000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 55, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 155, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-acid-biter-t3',
			health = 9000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[2],
			layer_2 = Public.layers.layer_4,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 50, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 151, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-explosive-biter-t1',
			health = 3000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 57, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 157, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-explosive-biter-t2',
			health = 6000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 55, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 155, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-explosive-biter-t3',
			health = 9000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[3],
			layer_2 = Public.layers.layer_6,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 51, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 155, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-poison-biter-t1',
			health = 3000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 157, type = 'poison' }
				},
				{
					type = 'damage',
					damage = { amount = 57, type = 'physical' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-poison-biter-t2',
			health = 6000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 151, type = 'poison' }
				},
				{
					type = 'damage',
					damage = { amount = 57, type = 'physical' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-poison-biter-t3',
			health = 9000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[4],
			layer_2 = Public.layers.layer_10,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 155, type = 'poison' }
				},
				{
					type = 'damage',
					damage = { amount = 56, type = 'physical' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-fire-biter-t1',
			health = 3000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 159, type = 'fire' }
				},
				{
					type = 'damage',
					damage = { amount = 56, type = 'physical' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-fire-biter-t2',
			health = 6000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 154, type = 'fire' }
				},
				{
					type = 'damage',
					damage = { amount = 57, type = 'physical' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-boss-fire-biter-t3',
			health = 9000,
			size = 'godzilla_scale',
			movement_speed = 0.4,
			healing_per_tick = 0.1,
			scale = Public.scales.godzilla_scale,
			layer_1 = Public.tiers[5],
			layer_2 = Public.layers.layer_12,
			range = 2.5,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 40
				},
				{
					type = 'explosion',
					percent = 40
				},
				{
					type = 'laser',
					percent = 45
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 65
				},
				{
					type = 'poison',
					percent = 40
				},
				{
					type = 'acid',
					percent = 60
				},
				{
					type = 'fire',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 157, type = 'fire' }
				},
				{
					type = 'damage',
					damage = { amount = 53, type = 'physical' }
				}
			}
		}
	)
}
return Public
