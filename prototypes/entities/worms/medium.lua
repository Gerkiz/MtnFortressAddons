---@diagnostic disable-next-line: different-requires
local Public = require 'common'

data:extend(
	{
		util.merge(
			{
				data.raw.turret['medium-worm-turret'],
				{
					name = 'mtn-addon-medium-explosive-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/medium-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-medium-explosive-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['medium-worm-turret'],
				{
					name = 'mtn-addon-medium-fire-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/medium-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-medium-fire-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['medium-worm-turret'],
				{
					name = 'mtn-addon-medium-poison-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/medium-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-medium-poison-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['medium-worm-turret'],
				{
					name = 'mtn-addon-medium-piercing-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/medium-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-medium-piercing-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['medium-worm-turret'],
				{
					name = 'mtn-addon-medium-electric-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/medium-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-h',
					corpse = 'mtn-addon-medium-electric-worm-corpse'
				}
			}
		)
	}
)

Public.common.set_worm_animations(data.raw.turret['medium-worm-turret'], scale_worm_medium, Public.layers
	.acid_worm_layer_1)
data.raw.turret['medium-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 5
	},
	{
		type = 'explosion',
		decrease = 7,
		percent = 20
	},
	{
		type = 'acid',
		decrease = 3,
		percent = 40
	},
	{
		type = "fire",
		decrease = 3,
		percent = 40
	},
	{
		type = "laser",
		percent = 20
	}
}
data.raw.turret['medium-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 35,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_medium, scale_worm_medium * scale_worm_stream),
	use_shooter_direction = true,
	lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5,
	ammo_category = 'biological',
	ammo_type = {
		action = {
			type = 'direct',
			action_delivery = {
				type = 'stream',
				stream = 'mtn-addon-acid-stream',
				source_offset = { 0.15, -0.5 }
			}
		}
	}
}

Public.common.set_worm_animations(data.raw.turret['mtn-addon-medium-explosive-worm-turret'], scale_worm_medium,
	Public.layers.explosive_worm_layer_1)
data.raw.turret['mtn-addon-medium-explosive-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 8,
		percent = 50
	},
	{
		type = 'explosion',
		decrease = 15,
		percent = 50
	}
}
data.raw.turret['mtn-addon-medium-explosive-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_medium, scale_worm_medium * scale_worm_stream),
	use_shooter_direction = true,
	lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5,
	ammo_category = 'biological',
	ammo_type = {
		action = {
			type = 'direct',
			action_delivery = {
				type = 'stream',
				stream = 'mtn-addon-explosive-stream',
				source_offset = { 0.15, -0.5 }
			}
		}
	}
}

Public.common.set_worm_animations(data.raw.turret['mtn-addon-medium-fire-worm-turret'], scale_worm_medium,
	Public.layers.fire_worm_layer_1)
data.raw.turret['mtn-addon-medium-fire-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 8,
		percent = 50
	},
	{
		type = 'explosion',
		decrease = 10,
		percent = 25
	},
	{
		type = 'fire',
		decrease = 5,
		percent = 40
	}
}
data.raw.turret['mtn-addon-medium-fire-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_medium, scale_worm_medium * scale_worm_stream),
	use_shooter_direction = true,
	lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5,
	ammo_category = 'biological',
	ammo_type = {
		action = {
			type = 'direct',
			action_delivery = {
				type = 'stream',
				stream = 'mtn-addon-fire-stream',
				source_offset = { 0.15, -0.5 }
			}
		}
	}
}

Public.common.set_worm_animations(data.raw.turret['mtn-addon-medium-poison-worm-turret'], scale_worm_medium,
	Public.layers.poison_worm_layer_1)
data.raw.turret['mtn-addon-medium-poison-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 8,
		percent = 50
	},
	{
		type = 'explosion',
		decrease = 10,
		percent = 25
	},
	{
		type = 'poison',
		decrease = 5,
		percent = 40
	}
}
data.raw.turret['mtn-addon-medium-poison-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_medium, scale_worm_medium * scale_worm_stream),
	use_shooter_direction = true,
	lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5,
	ammo_category = 'biological',
	ammo_type = {
		action = {
			type = 'direct',
			action_delivery = {
				type = 'stream',
				stream = 'mtn-addon-poison-stream',
				source_offset = { 0.15, -0.5 }
			}
		}
	}
}

Public.common.set_worm_animations(data.raw.turret['mtn-addon-medium-piercing-worm-turret'], scale_worm_medium,
	Public.layers.piercing_worm_layer_1)
data.raw.turret['mtn-addon-medium-piercing-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 8,
		percent = 50
	},
	{
		type = 'explosion',
		decrease = 10,
		percent = 25
	},
	{
		type = 'mtn-addon-pierce',
		decrease = 5,
		percent = 40
	}
}
data.raw.turret['mtn-addon-medium-piercing-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_medium, scale_worm_medium * scale_worm_stream),
	use_shooter_direction = true,
	lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5,
	ammo_category = 'biological',
	ammo_type = {
		action = {
			type = 'direct',
			action_delivery = {
				type = 'stream',
				stream = 'mtn-addon-piercing-stream',
				source_offset = { 0.15, -0.5 }
			}
		}
	}
}

Public.common.set_worm_animations(data.raw.turret['mtn-addon-medium-electric-worm-turret'], scale_worm_medium,
	Public.layers.electric_worm_layer_1)
data.raw.turret['mtn-addon-medium-electric-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 8,
		percent = 50
	},
	{
		type = 'explosion',
		decrease = 10,
		percent = 25
	},
	{
		type = 'electric',
		decrease = 5,
		percent = 40
	}
}
data.raw.turret['mtn-addon-medium-electric-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_medium, scale_worm_medium * scale_worm_stream),
	use_shooter_direction = true,
	lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5,
	ammo_category = 'biological',
	ammo_type = {
		action = {
			type = 'direct',
			action_delivery = {
				type = 'stream',
				stream = 'mtn-addon-electrical-stream',
				source_offset = { 0.15, -0.5 }
			}
		}
	}
}

data:extend(
	{
		util.merge(
			{
				data.raw.corpse['medium-worm-corpse'],
				{
					name = 'mtn-addon-medium-explosive-worm-corpse',
					order = 'c[corpse]-c[worm]-c[medium2]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['medium-worm-corpse'],
				{
					name = 'mtn-addon-medium-fire-worm-corpse',
					order = 'c[corpse]-c[worm]-c[medium3]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['medium-worm-corpse'],
				{
					name = 'mtn-addon-medium-poison-worm-corpse',
					order = 'c[corpse]-c[worm]-c[medium4]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['medium-worm-corpse'],
				{
					name = 'mtn-addon-medium-piercing-worm-corpse',
					order = 'c[corpse]-c[worm]-c[medium5]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['medium-worm-corpse'],
				{
					name = 'mtn-addon-medium-electric-worm-corpse',
					order = 'c[corpse]-c[worm]-c[medium6]'
				}
			}
		)
	}
)

data.raw.corpse['medium-worm-corpse'].animation = worm_die_animation(scale_worm_medium, Public.layers.acid_worm_layer_1)
data.raw.corpse['mtn-addon-medium-explosive-worm-corpse'].animation = worm_die_animation(scale_worm_medium,
	Public.layers.explosive_worm_layer_1)
data.raw.corpse['mtn-addon-medium-fire-worm-corpse'].animation = worm_die_animation(scale_worm_medium,
	Public.layers.fire_worm_layer_1)
data.raw.corpse['mtn-addon-medium-poison-worm-corpse'].animation = worm_die_animation(scale_worm_medium,
	Public.layers.poison_worm_layer_1)
data.raw.corpse['mtn-addon-medium-piercing-worm-corpse'].animation = worm_die_animation(scale_worm_medium,
	Public.layers.piercing_worm_layer_1)
data.raw.corpse['mtn-addon-medium-electric-worm-corpse'].animation = worm_die_animation(scale_worm_medium,
	Public.layers.electric_worm_layer_1)
