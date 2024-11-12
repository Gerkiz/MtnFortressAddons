---@diagnostic disable-next-line: different-requires
local Public = require 'common'

data:extend(
	{
		util.merge(
			{
				data.raw.turret['small-worm-turret'],
				{
					name = 'mtn-addon-small-explosive-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/small-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-small-explosive-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['small-worm-turret'],
				{
					name = 'mtn-addon-small-fire-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/small-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-small-fire-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['small-worm-turret'],
				{
					name = 'mtn-addon-small-poison-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/small-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-small-poison-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['small-worm-turret'],
				{
					name = 'mtn-addon-small-piercing-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/small-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-g',
					corpse = 'mtn-addon-small-piercing-worm-corpse'
				}
			}
		),
		util.merge(
			{
				data.raw.turret['small-worm-turret'],
				{
					name = 'mtn-addon-small-electric-worm-turret',
					icons = {
						{
							icon = '__base__/graphics/icons/small-worm.png',
							icon_size = 64,
							tint = { r = 1, g = 0, b = 0, a = 1 },
						},
					},
					order = 'b-b-h',
					corpse = 'mtn-addon-small-electric-worm-corpse'
				}
			}
		)
	}
)

Public.common.set_worm_animations(data.raw.turret['small-worm-turret'], scale_worm_small, Public.layers
	.acid_worm_layer_1)
data.raw.turret['small-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 30,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_small, scale_worm_small * scale_worm_stream),
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

Public.common.set_worm_animations(data.raw.turret['mtn-addon-small-explosive-worm-turret'], scale_worm_small,
	Public.layers.explosive_worm_layer_1)
data.raw.turret['mtn-addon-small-explosive-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 3,
		percent = 50
	},
	{
		type = 'explosion',
		decrease = 15,
		percent = 50
	}
}
data.raw.turret['mtn-addon-small-explosive-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_small, scale_worm_small * scale_worm_stream),
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

Public.common.set_worm_animations(data.raw.turret['mtn-addon-small-fire-worm-turret'], scale_worm_small,
	Public.layers.fire_worm_layer_1)
data.raw.turret['mtn-addon-small-fire-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 3,
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
data.raw.turret['mtn-addon-small-fire-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_small, scale_worm_small * scale_worm_stream),
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

Public.common.set_worm_animations(data.raw.turret['mtn-addon-small-poison-worm-turret'], scale_worm_small,
	Public.layers.poison_worm_layer_1)
data.raw.turret['mtn-addon-small-poison-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 3,
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
data.raw.turret['mtn-addon-small-poison-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_small, scale_worm_small * scale_worm_stream),
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

Public.common.set_worm_animations(data.raw.turret['mtn-addon-small-piercing-worm-turret'], scale_worm_small,
	Public.layers.piercing_worm_layer_1)
data.raw.turret['mtn-addon-small-piercing-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 3,
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
data.raw.turret['mtn-addon-small-piercing-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_small, scale_worm_small * scale_worm_stream),
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

Public.common.set_worm_animations(data.raw.turret['mtn-addon-small-electric-worm-turret'], scale_worm_small,
	Public.layers.electric_worm_layer_1)
data.raw.turret['mtn-addon-small-electric-worm-turret'].resistances = {
	{
		type = 'physical',
		decrease = 3,
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
data.raw.turret['mtn-addon-small-electric-worm-turret'].attack_parameters = {
	type = 'stream',
	damage_modifier = 5,
	cooldown = 4,
	range = 38,
	min_range = 0,
	projectile_creation_parameters = worm_shoot_shiftings(scale_worm_small, scale_worm_small * scale_worm_stream),
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
				data.raw.corpse['small-worm-corpse'],
				{
					name = 'mtn-addon-small-explosive-worm-corpse',
					order = 'c[corpse]-c[worm]-c[small2]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['small-worm-corpse'],
				{
					name = 'mtn-addon-small-fire-worm-corpse',
					order = 'c[corpse]-c[worm]-c[small3]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['small-worm-corpse'],
				{
					name = 'mtn-addon-small-poison-worm-corpse',
					order = 'c[corpse]-c[worm]-c[small4]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['small-worm-corpse'],
				{
					name = 'mtn-addon-small-piercing-worm-corpse',
					order = 'c[corpse]-c[worm]-c[small5]'
				}
			}
		),
		util.merge(
			{
				data.raw.corpse['small-worm-corpse'],
				{
					name = 'mtn-addon-small-electric-worm-corpse',
					order = 'c[corpse]-c[worm]-c[small6]'
				}
			}
		)
	}
)

data.raw.corpse['small-worm-corpse'].animation = worm_die_animation(scale_worm_small, Public.layers.acid_worm_layer_1)
data.raw.corpse['mtn-addon-small-explosive-worm-corpse'].animation = worm_die_animation(scale_worm_small,
	Public.layers.explosive_worm_layer_1)
data.raw.corpse['mtn-addon-small-fire-worm-corpse'].animation = worm_die_animation(scale_worm_small,
	Public.layers.fire_worm_layer_1)
data.raw.corpse['mtn-addon-small-poison-worm-corpse'].animation = worm_die_animation(scale_worm_small,
	Public.layers.poison_worm_layer_1)
data.raw.corpse['mtn-addon-small-piercing-worm-corpse'].animation = worm_die_animation(scale_worm_small,
	Public.layers.piercing_worm_layer_1)
data.raw.corpse['mtn-addon-small-electric-worm-corpse'].animation = worm_die_animation(scale_worm_small,
	Public.layers.electric_worm_layer_1)
