local Common = require 'common'
local tints = require 'utils.layers'.tints

data:extend {
    {
        type = 'active-defense-equipment',
        name = 'personal-laser-defense-mk2-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/personal-laser-defense-equipment.png',
            tint = tints.red,
            width = 128,
            height = 128,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 2,
            height = 2,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            buffer_capacity = '220kJ'
        },
        attack_parameters = {
            type = 'beam',
            cooldown = 40,
            range = 16,
            range_mode = 'center-to-bounding-box',
            damage_modifier = 1.5,
            ammo_category = 'laser',
            ammo_type = {
                energy_consumption = '75kJ',
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'beam',
                        beam = 'laser-beam',
                        max_length = 15,
                        duration = 40,
                        source_offset = { 0, -1.31439 }
                    }
                }
            }
        },
        automatic = true,
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'active-defense-equipment',
        name = 'personal-laser-defense-mk3-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/personal-laser-defense-equipment.png',
            tint = tints.yellow,
            width = 128,
            height = 128,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 2,
            height = 2,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            buffer_capacity = '220kJ'
        },
        attack_parameters = {
            type = 'beam',
            cooldown = 40,
            range = 17,
            range_mode = 'center-to-bounding-box',
            damage_modifier = 2,
            ammo_category = 'laser',
            ammo_type = {
                energy_consumption = '100kJ',
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'beam',
                        beam = 'laser-beam',
                        max_length = 15,
                        duration = 40,
                        source_offset = { 0, -1.31439 }
                    }
                }
            }
        },
        automatic = true,
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'active-defense-equipment',
        name = 'personal-laser-defense-mk4-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/personal-laser-defense-equipment.png',
            tint = tints.cyan,
            width = 128,
            height = 128,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 2,
            height = 2,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            buffer_capacity = '220kJ'
        },
        attack_parameters = {
            type = 'beam',
            cooldown = 40,
            range = 17,
            range_mode = 'center-to-bounding-box',
            damage_modifier = 2.5,
            ammo_category = 'laser',
            ammo_type = {
                energy_consumption = '125kJ',
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'beam',
                        beam = 'laser-beam',
                        max_length = 15,
                        duration = 40,
                        source_offset = { 0, -1.31439 }
                    }
                }
            }
        },
        automatic = true,
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'active-defense-equipment',
        name = 'personal-laser-defense-mk5-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/personal-laser-defense-equipment.png',
            tint = tints.cyan,
            width = 128,
            height = 128,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 2,
            height = 2,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            buffer_capacity = '220kJ'
        },
        attack_parameters = {
            type = 'beam',
            cooldown = 40,
            range = 18,
            range_mode = 'center-to-bounding-box',
            damage_modifier = 3,
            ammo_category = 'laser',
            ammo_type = {
                energy_consumption = '150kJ',
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'beam',
                        beam = 'laser-beam',
                        max_length = 15,
                        duration = 40,
                        source_offset = { 0, -1.31439 }
                    }
                }
            }
        },
        automatic = true,
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'energy-shield-equipment',
        name = 'energy-shield-mk3-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/energy-shield-mk2-equipment.png',
            tint = tints.red,
            width = 128,
            height = 128,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 2,
            height = 2,
            type = 'full'
        },
        max_shield_value = 250,
        energy_source = {
            type = 'electric',
            buffer_capacity = '240kJ',
            input_flow_limit = '480kW',
            usage_priority = 'primary-input'
        },
        energy_per_shield = '40kJ',
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'energy-shield-equipment',
        name = 'energy-shield-mk4-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/energy-shield-mk2-equipment.png',
            tint = tints.yellow,
            width = 128,
            height = 128,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 2,
            height = 2,
            type = 'full'
        },
        max_shield_value = 350,
        energy_source = {
            type = 'electric',
            buffer_capacity = '300kJ',
            input_flow_limit = '600kW',
            usage_priority = 'primary-input'
        },
        energy_per_shield = '50kJ',
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'energy-shield-equipment',
        name = 'energy-shield-mk5-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/energy-shield-mk2-equipment.png',
            tint = tints.steel,
            width = 128,
            height = 128,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 2,
            height = 2,
            type = 'full'
        },
        max_shield_value = 450,
        energy_source = {
            type = 'electric',
            buffer_capacity = '360kJ',
            input_flow_limit = '720kW',
            usage_priority = 'primary-input'
        },
        energy_per_shield = '60kJ',
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'battery-equipment',
        name = 'battery-mk3-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/battery-mk2-equipment.png',
            width = 64,
            height = 128,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 1,
            height = 2,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            buffer_capacity = '180MJ',
            usage_priority = 'tertiary'
        },
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'battery-equipment',
        name = 'battery-mk4-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/battery-mk2-equipment.png',
            width = 64,
            height = 128,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 1,
            height = 2,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            buffer_capacity = '240MJ',
            usage_priority = 'tertiary'
        },
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'battery-equipment',
        name = 'battery-mk5-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/battery-mk2-equipment.png',
            width = 64,
            height = 128,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 1,
            height = 2,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            buffer_capacity = '300MJ',
            usage_priority = 'tertiary'
        },
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'solar-panel-equipment',
        name = 'solar-panel-mk2-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/solar-panel-equipment.png',
            tint = tints.red,
            width = 64,
            height = 64,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 1,
            height = 1,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            usage_priority = 'primary-output'
        },
        power = '60kW',
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'solar-panel-equipment',
        name = 'solar-panel-mk3-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/solar-panel-equipment.png',
            tint = tints.yellow,
            width = 64,
            height = 64,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 1,
            height = 1,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            usage_priority = 'primary-output'
        },
        power = '90kW',
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'generator-equipment',
        name = 'fission-reactor-mk2-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/fission-reactor-equipment.png',
            tint = tints.red,
            width = 256,
            height = 256,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 4,
            height = 4,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            usage_priority = 'primary-output'
        },
        power = '1100kW',
        categories = { 'armor' }
    }
}

data:extend {
    {
        type = 'generator-equipment',
        name = 'fission-reactor-mk3-equipment',
        sprite = {
            filename = '__base__/graphics/equipment/fission-reactor-equipment.png',
            tint = tints.yellow,
            width = 256,
            height = 256,
            priority = 'medium',
            scale = 0.5
        },
        shape = {
            width = 4,
            height = 4,
            type = 'full'
        },
        energy_source = {
            type = 'electric',
            usage_priority = 'primary-output'
        },
        power = '1500kW',
        categories = { 'armor' }
    }
}

-- BATTERY ==================================================================

local battery_mk2 = data.raw['battery-equipment']['battery-mk2-equipment']
local battery_mk2_inputs = {
    icon_name = 'battery',
    group = 'equipment',
    tint = Common.tiers[2],
    width = 64,
    height = 128,
}
Common.customize_equipment(battery_mk2, battery_mk2_inputs)

local battery_mk3 = data.raw['battery-equipment']['battery-mk3-equipment']
local battery_mk3_inputs = {
    icon_name = 'battery',
    group = 'equipment',
    tint = Common.tiers[3],
    width = 64,
    height = 128,
}
Common.customize_equipment(battery_mk3, battery_mk3_inputs)

local battery_mk4 = data.raw['battery-equipment']['battery-mk4-equipment']
local battery_mk4_inputs = {
    icon_name = 'battery',
    group = 'equipment',
    tint = Common.tiers[4],
    width = 64,
    height = 128,
}
Common.customize_equipment(battery_mk4, battery_mk4_inputs)

local battery_mk5 = data.raw['battery-equipment']['battery-mk5-equipment']
local battery_mk5_inputs = {
    icon_name = 'battery',
    group = 'equipment',
    tint = Common.tiers[5],
    width = 64,
    height = 128,
}
Common.customize_equipment(battery_mk5, battery_mk5_inputs)


-- SHIELD ==================================================================

local shield_mk3 = data.raw['energy-shield-equipment']['energy-shield-mk3-equipment']
local shield_mk3_inputs = {
    icon_name = 'energy-shield',
    group = 'equipment',
    tint = Common.tiers[3],
    width = 128,
    height = 128,
}
Common.customize_equipment(shield_mk3, shield_mk3_inputs)

local shield_mk4 = data.raw['energy-shield-equipment']['energy-shield-mk4-equipment']
local shield_mk4_inputs = {
    icon_name = 'energy-shield',
    group = 'equipment',
    tint = Common.tiers[4],
    width = 128,
    height = 128,
}
Common.customize_equipment(shield_mk4, shield_mk4_inputs)

local shield_mk5 = data.raw['energy-shield-equipment']['energy-shield-mk5-equipment']
local shield_mk5_inputs = {
    icon_name = 'energy-shield',
    group = 'equipment',
    tint = Common.tiers[5],
    width = 128,
    height = 128,
}
Common.customize_equipment(shield_mk5, shield_mk5_inputs)

-- FISSION ==================================================================

local fission_mk2 = data.raw['generator-equipment']['fission-reactor-mk2-equipment']
local fission_mk2_inputs = {
    icon_name = 'fission-reactor',
    group = 'equipment',
    tint = Common.tiers[2],
    width = 256,
    height = 256,
}
Common.customize_equipment(fission_mk2, fission_mk2_inputs)

local fission_mk3 = data.raw['generator-equipment']['fission-reactor-mk3-equipment']
local fission_mk3_inputs = {
    icon_name = 'fission-reactor',
    group = 'equipment',
    tint = Common.tiers[3],
    width = 256,
    height = 256,
}
Common.customize_equipment(fission_mk3, fission_mk3_inputs)

-- LASER ==================================================================
local laser_mk2 = data.raw['active-defense-equipment']['personal-laser-defense-mk2-equipment']
local laser_mk2_inputs = {
    icon_name = 'laser-defense',
    group = 'equipment',
    tint = Common.tiers[2],
    width = 128,
    height = 128,
}
Common.customize_equipment(laser_mk2, laser_mk2_inputs)

local laser_mk3 = data.raw['active-defense-equipment']['personal-laser-defense-mk3-equipment']
local laser_mk3_inputs = {
    icon_name = 'laser-defense',
    group = 'equipment',
    tint = Common.tiers[3],
    width = 128,
    height = 128,
}
Common.customize_equipment(laser_mk3, laser_mk3_inputs)

local laser_mk4 = data.raw['active-defense-equipment']['personal-laser-defense-mk4-equipment']
local laser_mk4_inputs = {
    icon_name = 'laser-defense',
    group = 'equipment',
    tint = Common.tiers[4],
    width = 128,
    height = 128,
}
Common.customize_equipment(laser_mk4, laser_mk4_inputs)

local laser_mk5 = data.raw['active-defense-equipment']['personal-laser-defense-mk5-equipment']
local laser_mk5_inputs = {
    icon_name = 'laser-defense',
    group = 'equipment',
    tint = Common.tiers[5],
    width = 128,
    height = 128,
}
Common.customize_equipment(laser_mk5, laser_mk5_inputs)

-- SOLAR ==================================================================
local solar_mk2 = data.raw['solar-panel-equipment']['solar-panel-mk2-equipment']
local solar_mk2_inputs = {
    icon_name = 'solar-panel',
    group = 'equipment',
    tint = Common.tiers[2],
    width = 64,
    height = 64,
}
Common.customize_equipment(solar_mk2, solar_mk2_inputs)

local solar_mk3 = data.raw['solar-panel-equipment']['solar-panel-mk3-equipment']
local solar_mk3_inputs = {
    icon_name = 'solar-panel',
    group = 'equipment',
    tint = Common.tiers[3],
    width = 64,
    height = 64,
}
Common.customize_equipment(solar_mk3, solar_mk3_inputs)
