local Common = require 'common'
local tints = require 'utils.layers'.tints
local item_sounds = require('__base__.prototypes.item_sounds')

data:extend {
    {
        type = 'item',
        name = 'personal-laser-defense-mk2-equipment',
        icon = '__base__/graphics/icons/personal-laser-defense-equipment.png',
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
        localised_description = { 'item-description.energy-shield-equipment' },
        icon = '__base__/graphics/icons/energy-shield-mk2-equipment.png',
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
        localised_description = { 'item-description.energy-shield-equipment' },
        icon = '__base__/graphics/icons/energy-shield-mk2-equipment.png',
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
        localised_description = { 'item-description.energy-shield-equipment' },
        icon = '__base__/graphics/icons/energy-shield-mk2-equipment.png',
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
        localised_description = { 'item-description.battery-equipment' },
        icon = '__base__/graphics/icons/battery-mk2-equipment.png',
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
        localised_description = { 'item-description.battery-equipment' },
        icon = '__base__/graphics/icons/battery-mk2-equipment.png',
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
        localised_description = { 'item-description.battery-equipment' },
        icon = '__base__/graphics/icons/battery-mk2-equipment.png',
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

local equipments = {
    { name = 'power-armor-mk3',                      order = 'e[power-armor-mk3]',                      subgroup = 'armor' },
    { name = 'power-armor-mk4',                      order = 'e[power-armor-mk3]',                      subgroup = 'armor' },
    { name = 'power-armor-mk5',                      order = 'e[power-armor-mk4]',                      subgroup = 'armor' },

    { name = 'solar-panel-equipment',                order = 'a[energy-source]-a[solar-panel-mk1]',     subgroup = 'equipment' },
    { name = 'solar-panel-mk2-equipment',            order = 'a[energy-source]-a[solar-panel-mk2]',     subgroup = 'equipment' },
    { name = 'solar-panel-mk3-equipment',            order = 'a[energy-source]-a[solar-panel-mk3]',     subgroup = 'equipment' },

    { name = 'fission-reactor-equipment',            order = 'a[energy-source]-b[fission-reactor-mk1]', subgroup = 'equipment' },
    { name = 'fission-reactor-mk2-equipment',        order = 'a[energy-source]-b[fission-reactor-mk2]', subgroup = 'equipment' },
    { name = 'fission-reactor-mk3-equipment',        order = 'a[energy-source]-b[fission-reactor-mk3]', subgroup = 'equipment' },

    { name = 'energy-shield-mk3-equipment',          subgroup = 'military-equipment' },
    { name = 'energy-shield-mk4-equipment',          subgroup = 'military-equipment' },
    { name = 'energy-shield-mk5-equipment',          subgroup = 'military-equipment' },

    { name = 'battery-mk3-equipment',                subgroup = 'equipment' },
    { name = 'battery-mk4-equipment',                subgroup = 'equipment' },
    { name = 'battery-mk5-equipment',                subgroup = 'equipment' },

    { name = 'personal-laser-defense-equipment',     subgroup = 'military-equipment',                   order = 'b[active-defense]-a[personal-laser-defense-equipment-mk1]' },
    { name = 'personal-laser-defense-mk2-equipment', subgroup = 'military-equipment',                   order = 'b[active-defense]-a[personal-laser-defense-equipment-mk2]' },
    { name = 'personal-laser-defense-mk3-equipment', subgroup = 'military-equipment',                   order = 'b[active-defense]-a[personal-laser-defense-equipment-mk3]' },
    { name = 'personal-laser-defense-mk4-equipment', subgroup = 'military-equipment',                   order = 'b[active-defense]-a[personal-laser-defense-equipment-mk4]' },
    { name = 'personal-laser-defense-mk5-equipment', subgroup = 'military-equipment',                   order = 'b[active-defense]-a[personal-laser-defense-equipment-mk5]' },

    { name = 'discharge-defense-equipment',          subgroup = 'utility-equipment',                    order = 'g' },
}

for _, map in pairs(equipments) do
    local item = data.raw.item[map.name] or data.raw.armor[map.name]
    if item then
        item.subgroup = map.subgroup
        item.order = map.order or item.order
    end
end



local item_types = {
    ['solar-panel-mk2-equipment'] = { tier = 2, name = 'solar-panel' },
    ['solar-panel-mk3-equipment'] = { tier = 3, name = 'solar-panel' },
    ['fission-reactor-equipment'] = { tier = 1, name = 'fission-reactor' },
    ['fission-reactor-mk2-equipment'] = { tier = 2, name = 'fission-reactor' },
    ['fission-reactor-mk3-equipment'] = { tier = 3, name = 'fission-reactor' },
    ['battery-mk2-equipment'] = { tier = 2, name = 'battery' },
    ['battery-mk3-equipment'] = { tier = 3, name = 'battery' },
    ['battery-mk4-equipment'] = { tier = 4, name = 'battery' },
    ['battery-mk5-equipment'] = { tier = 5, name = 'battery' },
    ['energy-shield-mk3-equipment'] = { tier = 3, name = 'energy-shield' },
    ['energy-shield-mk4-equipment'] = { tier = 4, name = 'energy-shield' },
    ['energy-shield-mk5-equipment'] = { tier = 5, name = 'energy-shield' },
    ['personal-laser-defense-mk2-equipment'] = { tier = 2, name = 'laser-defense' },
    ['personal-laser-defense-mk3-equipment'] = { tier = 3, name = 'laser-defense' },
    ['personal-laser-defense-mk4-equipment'] = { tier = 4, name = 'laser-defense' },
    ['personal-laser-defense-mk5-equipment'] = { tier = 5, name = 'laser-defense' },
}

for item_name, data in pairs(item_types) do
    local inputs = {
        icon_name = data.name,
        group = 'equipment',
        tint = Common.tiers[data.tier]
    }
    Common.tint_icon_crafting_grid(item_name, inputs)
end


data.raw['gun']['vehicle-machine-gun'].icon = Common.mod_prefix ..
'/graphics/reskins/icons/warfare/weapons/machine-gun.png'
