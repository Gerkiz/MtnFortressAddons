local Public = require 'common'

data:extend(
	{
		Public.common.create_laser_turret({
			name = 'mtn-addon-laser-turret-1',
			health = 1000,
			tint = Public.layers
				.layer_1,
			damage = 2,
			range = 20
		}),
		Public.common.create_laser_turret({
			name = 'mtn-addon-laser-turret-2',
			health = 1500,
			tint = Public.layers
				.layer_2,
			damage = 2.2,
			range = 21
		}),
		Public.common.create_laser_turret({
			name = 'mtn-addon-laser-turret-3',
			health = 2000,
			tint = Public.layers
				.layer_3,
			damage = 2.4,
			range = 22
		}),
		Public.common.create_laser_turret({
			name = 'mtn-addon-laser-turret-4',
			health = 2500,
			tint = Public.layers
				.layer_4,
			damage = 2.6,
			range = 23
		}),
		Public.common.create_laser_turret({
			name = 'mtn-addon-laser-turret-5',
			health = 3000,
			tint = Public.layers
				.layer_5,
			damage = 2.8,
			range = 24
		}),
		Public.common.create_laser_turret({
			name = 'mtn-addon-laser-turret-6',
			health = 400,
			tint = Public.layers
				.layer_6,
			damage = 3,
			range = 25
		}),
		Public.common.create_laser_turret({
			name = 'mtn-addon-laser-turret-7',
			health = 5000,
			tint = Public.layers
				.layer_7,
			damage = 4,
			range = 26
		}),
		Public.common.create_laser_turret({
			name = 'mtn-addon-laser-turret-8',
			health = 10000,
			tint = Public.layers
				.layer_8,
			damage = 5,
			range = 27
		}),
		Public.common.create_laser_turret({
			name = 'mtn-addon-laser-turret-9',
			health = 20000,
			tint = Public.layers
				.layer_9,
			damage = 6,
			range = 28
		}),
	}
)
