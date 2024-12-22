local tints = require 'utils.layers'.tints
local item_sounds = require('__base__.prototypes.item_sounds')

data:extend {
    {
        type = 'item',
        name = 'personal-laser-defense-mk2-equipment',
        icon = '__base__/graphics/icons/personal-laser-defense-equipment.png',
        tint = tints.red,
        place_as_equipment_result = 'personal-laser-defense-mk2-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'x[personal-laser-defense-equipment-2]',
        inventory_move_sound = item_sounds.turret_inventory_move,
        pick_sound = item_sounds.turret_inventory_pickup,
        drop_sound = item_sounds.turret_inventory_move,
        stack_size = 10,
        weight = 200 * kg
    }
}

data:extend {
    {
        type = 'item',
        name = 'personal-laser-defense-mk3-equipment',
        icon = '__base__/graphics/icons/personal-laser-defense-equipment.png',
        tint = tints['yellow-heavy'],
        place_as_equipment_result = 'personal-laser-defense-mk3-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'x[personal-laser-defense-equipment-3]',
        inventory_move_sound = item_sounds.turret_inventory_move,
        pick_sound = item_sounds.turret_inventory_pickup,
        drop_sound = item_sounds.turret_inventory_move,
        stack_size = 10,
        weight = 200 * kg
    }
}

data:extend {
    {
        type = 'item',
        name = 'personal-laser-defense-mk4-equipment',
        icon = '__base__/graphics/icons/personal-laser-defense-equipment.png',
        tint = tints.cyan,
        place_as_equipment_result = 'personal-laser-defense-mk4-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'x[personal-laser-defense-equipment-4]',
        inventory_move_sound = item_sounds.turret_inventory_move,
        pick_sound = item_sounds.turret_inventory_pickup,
        drop_sound = item_sounds.turret_inventory_move,
        stack_size = 10,
        weight = 200 * kg
    }
}

data:extend {
    {
        type = 'item',
        name = 'personal-laser-defense-mk5-equipment',
        icon = '__base__/graphics/icons/personal-laser-defense-equipment.png',
        tint = tints.steel,
        place_as_equipment_result = 'personal-laser-defense-mk5-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'x[personal-laser-defense-equipment-5]',
        inventory_move_sound = item_sounds.turret_inventory_move,
        pick_sound = item_sounds.turret_inventory_pickup,
        drop_sound = item_sounds.turret_inventory_move,
        stack_size = 10,
        weight = 200 * kg
    }
}

data:extend {
    {
        type = 'item',
        name = 'energy-shield-mk3-equipment',
        localised_description = {'item-description.energy-shield-equipment'},
        icon = '__base__/graphics/icons/energy-shield-mk2-equipment.png',
        tint = tints.red,
        place_as_equipment_result = 'energy-shield-mk3-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'a[shield]-b[energy-shield-equipment-mk3]',
        inventory_move_sound = item_sounds.energy_shield_inventory_move,
        pick_sound = item_sounds.energy_shield_inventory_pickup,
        drop_sound = item_sounds.energy_shield_inventory_move,
        stack_size = 20,
        weight = 100 * kg
    }
}

data:extend {
    {
        type = 'item',
        name = 'energy-shield-mk4-equipment',
        localised_description = {'item-description.energy-shield-equipment'},
        icon = '__base__/graphics/icons/energy-shield-mk2-equipment.png',
        tint = tints.yellow,
        place_as_equipment_result = 'energy-shield-mk4-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'a[shield]-b[energy-shield-equipment-mk4]',
        inventory_move_sound = item_sounds.energy_shield_inventory_move,
        pick_sound = item_sounds.energy_shield_inventory_pickup,
        drop_sound = item_sounds.energy_shield_inventory_move,
        stack_size = 20,
        weight = 100 * kg
    }
}

data:extend {
    {
        type = 'item',
        name = 'energy-shield-mk5-equipment',
        localised_description = {'item-description.energy-shield-equipment'},
        icon = '__base__/graphics/icons/energy-shield-mk2-equipment.png',
        tint = tints.steel,
        place_as_equipment_result = 'energy-shield-mk5-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'a[shield]-b[energy-shield-equipment-mk5]',
        inventory_move_sound = item_sounds.energy_shield_inventory_move,
        pick_sound = item_sounds.energy_shield_inventory_pickup,
        drop_sound = item_sounds.energy_shield_inventory_move,
        stack_size = 20,
        weight = 100 * kg
    }
}

data:extend {
    {
        type = 'item',
        name = 'battery-mk3-equipment',
        localised_description = {'item-description.battery-equipment'},
        icon = '__base__/graphics/icons/battery-mk2-equipment.png',
        tint = tints.red,
        place_as_equipment_result = 'battery-mk3-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'b[battery]-b[battery-equipment-mk3]',
        inventory_move_sound = item_sounds.electric_small_inventory_move,
        pick_sound = item_sounds.electric_small_inventory_pickup,
        drop_sound = item_sounds.electric_small_inventory_move,
        stack_size = 20,
        weight = 100 * kg
    }
}
data:extend {
    {
        type = 'item',
        name = 'battery-mk4-equipment',
        localised_description = {'item-description.battery-equipment'},
        icon = '__base__/graphics/icons/battery-mk2-equipment.png',
        tint = tints.yellow,
        place_as_equipment_result = 'battery-mk4-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'b[battery]-b[battery-equipment-mk4]',
        inventory_move_sound = item_sounds.electric_small_inventory_move,
        pick_sound = item_sounds.electric_small_inventory_pickup,
        drop_sound = item_sounds.electric_small_inventory_move,
        stack_size = 20,
        weight = 100 * kg
    }
}
data:extend {
    {
        type = 'item',
        name = 'battery-mk5-equipment',
        localised_description = {'item-description.battery-equipment'},
        icon = '__base__/graphics/icons/battery-mk2-equipment.png',
        tint = tints.steel,
        place_as_equipment_result = 'battery-mk5-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'b[battery]-b[battery-equipment-mk5]',
        inventory_move_sound = item_sounds.electric_small_inventory_move,
        pick_sound = item_sounds.electric_small_inventory_pickup,
        drop_sound = item_sounds.electric_small_inventory_move,
        stack_size = 20,
        weight = 100 * kg
    }
}

data:extend {
    {
        type = 'item',
        name = 'solar-panel-mk2-equipment',
        icon = '__base__/graphics/icons/solar-panel-equipment.png',
        tint = tints.red,
        place_as_equipment_result = 'solar-panel-mk2-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'a[energy-source]-a[solar-panel-mk2]',
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        stack_size = 20
    }
}
data:extend {
    {
        type = 'item',
        name = 'solar-panel-mk3-equipment',
        icon = '__base__/graphics/icons/solar-panel-equipment.png',
        tint = tints.yellow,
        place_as_equipment_result = 'solar-panel-mk3-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'a[energy-source]-a[solar-panel-mk3]',
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        stack_size = 20
    }
}

data:extend {
    {
        type = 'item',
        name = 'fission-reactor-mk2-equipment',
        icon = '__base__/graphics/icons/fission-reactor-equipment.png',
        tint = tints.red,
        place_as_equipment_result = 'fission-reactor-mk2-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'a[energy-source]-b[fission-reactor]',
        inventory_move_sound = item_sounds.reactor_inventory_move,
        pick_sound = item_sounds.reactor_inventory_pickup,
        drop_sound = item_sounds.reactor_inventory_move,
        stack_size = 20,
        weight = 0.25 * tons
    }
}

data:extend {
    {
        type = 'item',
        name = 'fission-reactor-mk3-equipment',
        icon = '__base__/graphics/icons/fission-reactor-equipment.png',
        tint = tints.yellow,
        place_as_equipment_result = 'fission-reactor-mk3-equipment',
        subgroup = 'military-equipment-mtn',
        order = 'a[energy-source]-b[fission-reactor]',
        inventory_move_sound = item_sounds.reactor_inventory_move,
        pick_sound = item_sounds.reactor_inventory_pickup,
        drop_sound = item_sounds.reactor_inventory_move,
        stack_size = 20,
        weight = 0.25 * tons
    }
}
