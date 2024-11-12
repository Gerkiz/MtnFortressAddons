local Public = require 'common'
data:extend {
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-piercing-biter-t1',
			health = 1150,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_1,
			layer_2 = Public.layers.layer_2,
			range = 2.2,
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
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 29, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 22, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-piercing-biter-t2',
			health = 1350,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_1,
			layer_2 = Public.layers.layer_2,
			range = 2.2,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 14
				},
				{
					type = 'laser',
					percent = 10
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 15
				},
				{
					type = 'poison',
					percent = 14
				},
				{
					type = 'acid',
					percent = 14
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 37, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 29, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-piercing-biter-t3',
			health = 1650,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_1,
			layer_2 = Public.layers.layer_2,
			range = 2.2,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 15
				},
				{
					type = 'laser',
					percent = 13
				},
				{
					type = 'mtn-addon-pierce',
					decrease = 2,
					percent = 17
				},
				{
					type = 'poison',
					percent = 17
				},
				{
					type = 'acid',
					percent = 18
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 41, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 34, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-acid-biter-t1',
			health = 1150,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_3,
			layer_2 = Public.layers.layer_4,
			range = 2.2,
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
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 27, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 27, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-acid-biter-t2',
			health = 1350,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_3,
			layer_2 = Public.layers.layer_4,
			range = 2.2,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 14
				},
				{
					type = 'laser',
					percent = 10
				},
				{
					type = 'mtn-addon-pierce',
					percent = 20
				},
				{
					type = 'poison',
					percent = 15
				},
				{
					type = 'acid',
					decrease = 6,
					percent = 32
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 35, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 35, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-acid-biter-t3',
			health = 1650,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_3,
			layer_2 = Public.layers.layer_4,
			range = 2.2,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 22
				},
				{
					type = 'laser',
					percent = 17
				},
				{
					type = 'mtn-addon-pierce',
					percent = 31
				},
				{
					type = 'poison',
					percent = 21
				},
				{
					type = 'acid',
					decrease = 6,
					percent = 32
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 40, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 41, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-explosive-biter-t1',
			health = 1150,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_5,
			layer_2 = Public.layers.layer_6,
			range = 2.2,
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
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 27, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 27, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-explosive-biter-t2',
			health = 1350,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_5,
			layer_2 = Public.layers.layer_6,
			range = 2.2,
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
					percent = 14
				},
				{
					type = 'mtn-addon-pierce',
					percent = 15
				},
				{
					type = 'poison',
					percent = 17
				},
				{
					type = 'acid',
					percent = 19
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 35, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 35, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-explosive-biter-t3',
			health = 1650,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_5,
			layer_2 = Public.layers.layer_6,
			range = 2.2,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 10
				},
				{
					type = 'explosion',
					decrease = 6,
					percent = 44
				},
				{
					type = 'laser',
					percent = 21
				},
				{
					type = 'mtn-addon-pierce',
					percent = 23
				},
				{
					type = 'poison',
					percent = 24
				},
				{
					type = 'acid',
					percent = 27
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 41, type = 'physical' }
				},
				{
					type = 'damage',
					damage = { amount = 45, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-poison-biter-t1',
			health = 1150,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_9,
			layer_2 = Public.layers.layer_10,
			range = 2.2,
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
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 27, type = 'poison' }
				},
				{
					type = 'damage',
					damage = { amount = 27, type = 'physical' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-poison-biter-t2',
			health = 1350,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_9,
			layer_2 = Public.layers.layer_10,
			range = 2.2,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 17
				},
				{
					type = 'laser',
					percent = 14
				},
				{
					type = 'mtn-addon-pierce',
					percent = 23
				},
				{
					type = 'poison',
					decrease = 8,
					percent = 40
				},
				{
					type = 'acid',
					percent = 24
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 41, type = 'poison' }
				},
				{
					type = 'damage',
					damage = { amount = 47, type = 'physical' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-poison-biter-t3',
			health = 1650,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_9,
			layer_2 = Public.layers.layer_10,
			range = 2.2,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 30
				},
				{
					type = 'laser',
					percent = 35
				},
				{
					type = 'mtn-addon-pierce',
					percent = 35
				},
				{
					type = 'poison',
					decrease = 8,
					percent = 60
				},
				{
					type = 'acid',
					percent = 40
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 55, type = 'poison' }
				},
				{
					type = 'damage',
					damage = { amount = 46, type = 'physical' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-fire-biter-t1',
			health = 1150,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_11,
			layer_2 = Public.layers.layer_12,
			range = 2.2,
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
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 39, type = 'fire' }
				},
				{
					type = 'damage',
					damage = { amount = 36, type = 'physical' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-fire-biter-t2',
			health = 1350,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_11,
			layer_2 = Public.layers.layer_12,
			range = 2.2,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 20
				},
				{
					type = 'laser',
					percent = 15
				},
				{
					type = 'fire',
					decrease = 8,
					percent = 44
				},
				{
					type = 'mtn-addon-pierce',
					percent = 25
				},
				{
					type = 'poison',
					percent = 25
				},
				{
					type = 'acid',
					percent = 20
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 44, type = 'fire' }
				},
				{
					type = 'damage',
					damage = { amount = 37, type = 'physical' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-behemoth-fire-biter-t3',
			health = 1650,
			size = 'giant',
			movement_speed = 0.3,
			healing_per_tick = 0.04,
			scale = Public.scales.giant_scale,
			layer_1 = Public.layers.layer_11,
			layer_2 = Public.layers.layer_12,
			range = 2.2,
			resistances = {
				{
					type = 'physical',
					decrease = 12,
					percent = 10
				},
				{
					type = 'explosion',
					percent = 30
				},
				{
					type = 'laser',
					percent = 35
				},
				{
					type = 'fire',
					decrease = 8,
					percent = 64
				},
				{
					type = 'mtn-addon-pierce',
					percent = 55
				},
				{
					type = 'poison',
					percent = 65
				},
				{
					type = 'acid',
					percent = 60
				}
			},
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 57, type = 'fire' }
				},
				{
					type = 'damage',
					damage = { amount = 43, type = 'physical' }
				}
			}
		}
	)
}
return Public
