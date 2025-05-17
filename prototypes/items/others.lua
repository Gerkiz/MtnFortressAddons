local Common = require 'common'
local item_sounds = require('__base__.prototypes.item_sounds')
local item_tints = require('__base__.prototypes.item-tints')

data:extend {
    {
        type = 'item',
        name = 'boiler-mk2',
        icon = '__base__/graphics/icons/boiler.png',
        subgroup = 'energy',
        order = 'b[steam-power]-a[boiler]',
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move,
        place_result = 'boiler-mk2',
        stack_size = 50,
        random_tint_color = item_tints.iron_rust
    },
    {
        type = 'item',
        name = 'boiler-mk3',
        icon = '__base__/graphics/icons/boiler.png',
        subgroup = 'energy',
        order = 'b[steam-power]-a[boiler]',
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move,
        place_result = 'boiler-mk3',
        stack_size = 50,
        random_tint_color = item_tints.iron_rust
    },
    {
        type = 'item',
        name = 'steam-engine-mk2',
        icon = '__base__/graphics/icons/steam-engine.png',
        subgroup = 'energy',
        order = 'b[steam-power]-b[steam-engine]',
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move,
        place_result = 'steam-engine-mk2',
        stack_size = 10,
        random_tint_color = item_tints.iron_rust
    },
    {
        type = 'item',
        name = 'steam-engine-mk3',
        icon = '__base__/graphics/icons/steam-engine.png',
        subgroup = 'energy',
        order = 'b[steam-power]-b[steam-engine]',
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move,
        place_result = 'steam-engine-mk3',
        stack_size = 10,
        random_tint_color = item_tints.iron_rust
    },
    {
        type = 'item',
        name = 'solar-panel-mk2',
        icon = '__base__/graphics/icons/solar-panel.png',
        subgroup = 'energy',
        order = 'd[solar-panel]-a[solar-panel]',
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        place_result = 'solar-panel-mk2',
        stack_size = 50
    },
    {
        type = 'item',
        name = 'solar-panel-mk3',
        icon = '__base__/graphics/icons/solar-panel.png',
        subgroup = 'energy',
        order = 'd[solar-panel]-a[solar-panel]',
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        place_result = 'solar-panel-mk3',
        stack_size = 50
    },
    {
        type = 'item',
        name = 'accumulator-mk2',
        icon = '__base__/graphics/icons/accumulator.png',
        subgroup = 'energy',
        order = 'e[accumulator]-a[accumulator]',
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        place_result = 'accumulator-mk2',
        stack_size = 50
    },
    {
        type = 'item',
        name = 'accumulator-mk3',
        icon = '__base__/graphics/icons/accumulator.png',
        subgroup = 'energy',
        order = 'e[accumulator]-a[accumulator]',
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        place_result = 'accumulator-mk3',
        stack_size = 50
    }
}

local item_types = {
    'boiler',
    'steam-engine',
    'solar-panel',
    'accumulator'
}

for i = 2, 3 do
    for _, item_type in ipairs(item_types) do
        local inputs = {
            icon_name = item_type,
            group = 'power',
            tint = Common.tiers[i]
        }
        Common.tint_icon_crafting_grid(item_type .. '-mk' .. i, inputs)
    end
end
