---@diagnostic disable-next-line: different-requires
local Public = require 'common'

data:extend(
	{
		util.merge(
			{
				data.raw.turret['big-worm-turret'],
				{
					name = 'mtn-addon-big-explosive-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/big-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-big-explosive-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['big-worm-turret'],
				{
					name = 'mtn-addon-big-fire-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/big-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-big-fire-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['big-worm-turret'],
				{
					name = 'mtn-addon-big-poison-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/big-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-big-poison-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['big-worm-turret'],
				{
					name = 'mtn-addon-big-piercing-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/big-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-big-piercing-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['big-worm-turret'],
				{
					name = 'mtn-addon-big-electric-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/big-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-h',
					corpse = 'mtn-addon-big-electric-worm-corpse'
				}
			}
		)
	}
)

Public.common.set_worm_animations(data.raw.turret['big-worm-turret'], scale_worm_big, Public.layers
	.acid_worm_layer_1)
data.raw.turret['big-worm-turret'].resistances = {
	{
		type = "physical",
		decrease = 12
	},
	{
		type = "explosion",
		decrease = 10,
		percent = 35
	},
	{
		type = "fire",
		decrease = 3,
		percent = 70
	},
	{
		type = "laser",
		percent = 50
	}
}
data.raw.turret['big-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_big, scale_worm_big * scale_worm_stream),
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

Public.common.set_worm_animations(data.raw.turret['mtn-addon-big-explosive-worm-turret'], scale_worm_big,
	Public.layers.explosive_worm_layer_1)
data.raw.turret['mtn-addon-big-explosive-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 20
	},
	{
		type = 'explosion',
		decrease = 15,
		percent = 50
	}
}
data.raw.turret['mtn-addon-big-explosive-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_big, scale_worm_big * scale_worm_stream),
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

Public.common.set_worm_animations(data.raw.turret['mtn-addon-big-fire-worm-turret'], scale_worm_big,
	Public.layers.fire_worm_layer_1)
data.raw.turret['mtn-addon-big-fire-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 20
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
data.raw.turret['mtn-addon-big-fire-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_big, scale_worm_big * scale_worm_stream),
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

Public.common.set_worm_animations(data.raw.turret['mtn-addon-big-poison-worm-turret'], scale_worm_big,
	Public.layers.poison_worm_layer_1)
data.raw.turret['mtn-addon-big-poison-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 20
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
data.raw.turret['mtn-addon-big-poison-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_big, scale_worm_big * scale_worm_stream),
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

Public.common.set_worm_animations(data.raw.turret['mtn-addon-big-piercing-worm-turret'], scale_worm_big,
	Public.layers.piercing_worm_layer_1)
data.raw.turret['mtn-addon-big-piercing-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 20
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
data.raw.turret['mtn-addon-big-piercing-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_big, scale_worm_big * scale_worm_stream),
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

Public.common.set_worm_animations(data.raw.turret['mtn-addon-big-electric-worm-turret'], scale_worm_big,
	Public.layers.electric_worm_layer_1)
data.raw.turret['mtn-addon-big-electric-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 20
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
data.raw.turret['mtn-addon-big-electric-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_big, scale_worm_big * scale_worm_stream),
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
				data.raw.corpse['big-worm-corpse'],
				{
					name = 'mtn-addon-big-explosive-worm-corpse',
					order = 'c[corpse]-c[worm]-c[big2]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['big-worm-corpse'],
				{
					name = 'mtn-addon-big-fire-worm-corpse',
					order = 'c[corpse]-c[worm]-c[big3]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['big-worm-corpse'],
				{
					name = 'mtn-addon-big-poison-worm-corpse',
					order = 'c[corpse]-c[worm]-c[big4]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['big-worm-corpse'],
				{
					name = 'mtn-addon-big-piercing-worm-corpse',
					order = 'c[corpse]-c[worm]-c[big5]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['big-worm-corpse'],
				{
					name = 'mtn-addon-big-electric-worm-corpse',
					order = 'c[corpse]-c[worm]-c[big6]'
				}
			}
		)
	}
)

data.raw.corpse['big-worm-corpse'].animation = worm_die_animation(scale_worm_big, Public.layers.acid_worm_layer_1)
data.raw.corpse['mtn-addon-big-explosive-worm-corpse'].animation = worm_die_animation(scale_worm_big,
	Public.layers.explosive_worm_layer_1)
data.raw.corpse['mtn-addon-big-fire-worm-corpse'].animation = worm_die_animation(scale_worm_big,
	Public.layers.fire_worm_layer_1)
data.raw.corpse['mtn-addon-big-poison-worm-corpse'].animation = worm_die_animation(scale_worm_big,
	Public.layers.poison_worm_layer_1)
data.raw.corpse['mtn-addon-big-piercing-worm-corpse'].animation = worm_die_animation(scale_worm_big,
	Public.layers.piercing_worm_layer_1)
data.raw.corpse['mtn-addon-big-electric-worm-corpse'].animation = worm_die_animation(scale_worm_big,
	Public.layers.electric_worm_layer_1)
