local Public = require 'common'
data:extend {
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-piercing-biter-t1',
			health = 50,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_1,
			layer_2 = Public.layers.layer_2,
			range = 1.2,
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 7, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-piercing-biter-t2',
			health = 100,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_1,
			layer_2 = Public.layers.layer_2,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 8, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-piercing-biter-t3',
			health = 150,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_1,
			layer_2 = Public.layers.layer_2,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 9, type = 'mtn-addon-pierce' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-acid-biter-t1',
			health = 50,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_3,
			layer_2 = Public.layers.layer_4,
			range = 1.2,
			target_effects = {
				{
					type = 'damage',
					damage = { amount = 7, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-acid-biter-t2',
			health = 100,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_3,
			layer_2 = Public.layers.layer_4,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 8, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-acid-biter-t3',
			health = 150,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_3,
			layer_2 = Public.layers.layer_4,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 9, type = 'acid' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-explosive-biter-t1',
			health = 50,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_5,
			layer_2 = Public.layers.layer_6,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 7, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-explosive-biter-t2',
			health = 100,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_5,
			layer_2 = Public.layers.layer_6,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 8, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-explosive-biter-t3',
			health = 150,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_5,
			layer_2 = Public.layers.layer_6,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 9, type = 'explosion' }
				}
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-poison-biter-t1',
			health = 50,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_9,
			layer_2 = Public.layers.layer_10,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 7, type = 'poison' }
				},
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-poison-biter-t2',
			health = 100,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_9,
			layer_2 = Public.layers.layer_10,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 8, type = 'poison' }
				},
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-poison-biter-t3',
			health = 150,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_9,
			layer_2 = Public.layers.layer_10,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 9, type = 'poison' }
				},
			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-fire-biter-t1',
			health = 50,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_11,
			layer_2 = Public.layers.layer_12,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 7, type = 'fire' }
				},

			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-fire-biter-t2',
			health = 100,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_11,
			layer_2 = Public.layers.layer_12,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 8, type = 'fire' }
				},

			}
		}
	),
	Public.common.create_new_biter(
		{
			name = 'mtn-addon-small-fire-biter-t3',
			health = 150,
			size = 'small',
			healing_per_tick = 0.02,
			scale = Public.scales.small_scale,
			layer_1 = Public.layers.layer_11,
			layer_2 = Public.layers.layer_12,
			range = 1.2,

			target_effects = {
				{
					type = 'damage',
					damage = { amount = 9, type = 'fire' }
				},

			}
		}
	)
}
return Public
