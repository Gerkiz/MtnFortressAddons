local Public = require 'common'
local tints = require 'utils.layers'.tints

local wreckages = {
    {name = '', tint = nil, mining_time = 2, health = 1500},
    {name = '-1', tint = tints.red, mining_time = 2, health = 2000},
    {name = '-2', tint = tints.yellow, mining_time = 2, health = 2500},
    {name = '-3', tint = tints.cyan, mining_time = 2, health = 4500},
    {name = '-4', tint = tints.steel, mining_time = 2, health = 6500},
    {name = '-5', tint = tints.purple, mining_time = 2, health = 7500},
    {name = '-6', tint = tints.white, mining_time = 2, health = 8500}
}

for _, wreckage in pairs(wreckages) do
    data:extend {
        {
            type = 'simple-entity',
            name = 'mineable-wreckage' .. wreckage.name,
            localised_name = {'entity-name.mineable-wreckage'},
            icon = Public.mod_prefix .. '/graphics/icons/small-ship-wreck.png',
            icon_size = 64,
            minable = {
                mining_particle = 'iron-ore-particle',
                mining_time = wreckage.mining_time or 2,
                results = {
                    {
                        type = 'item',
                        amount_max = 5,
                        amount_min = 1,
                        name = 'stone-brick',
                        probability = 0.2
                    },
                    {
                        type = 'item',
                        amount_max = 5,
                        amount_min = 1,
                        name = 'copper-plate',
                        probability = 0.2
                    },
                    {
                        type = 'item',
                        amount_max = 5,
                        amount_min = 1,
                        name = 'iron-plate',
                        probability = 0.2
                    },
                    {
                        type = 'item',
                        amount_max = 5,
                        amount_min = 1,
                        name = 'iron-gear-wheel',
                        probability = 0.2
                    },
                    {
                        type = 'item',
                        amount_max = 5,
                        amount_min = 1,
                        name = 'solid-fuel',
                        probability = 0.2
                    },
                    {
                        type = 'item',
                        amount_max = 5,
                        amount_min = 1,
                        name = 'copper-cable',
                        probability = 0.2
                    },
                    {
                        type = 'item',
                        amount_max = 5,
                        amount_min = 1,
                        name = 'battery',
                        probability = 0.2
                    },
                    {
                        type = 'item',
                        amount_max = 5,
                        amount_min = 1,
                        name = 'electronic-circuit',
                        probability = 0.2
                    }
                }
            },
            flags = {'placeable-neutral', 'placeable-off-grid', 'not-on-map'},
            subgroup = 'wrecks',
            order = 'd[remnants]-d[ship-wreck]-c[small]-a',
            max_health = wreckage.health or 1500,
            collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
            selection_box = {{-1.3, -1.1}, {1.3, 1.1}},
            damaged_trigger_effect = Public.sound_entity_higher(),
            pictures = {
                {
                    filename = Public.mod_prefix .. '/graphics/images/ship-wreck/small-ship-wreck-a.png',
                    tint = wreckage.tint or nil,
                    width = 65,
                    height = 68
                },
                {
                    filename = Public.mod_prefix .. '/graphics/images/ship-wreck/small-ship-wreck-b.png',
                    tint = wreckage.tint or nil,
                    width = 109,
                    height = 67
                },
                {
                    filename = Public.mod_prefix .. '/graphics/images/ship-wreck/small-ship-wreck-c.png',
                    tint = wreckage.tint or nil,
                    width = 63,
                    height = 54
                },
                {
                    filename = Public.mod_prefix .. '/graphics/images/ship-wreck/small-ship-wreck-d.png',
                    tint = wreckage.tint or nil,
                    width = 82,
                    height = 67
                },
                {
                    filename = Public.mod_prefix .. '/graphics/images/ship-wreck/small-ship-wreck-e.png',
                    tint = wreckage.tint or nil,
                    width = 78,
                    height = 75,
                    shift = {0.3, -0.2}
                },
                {
                    filename = Public.mod_prefix .. '/graphics/images/ship-wreck/small-ship-wreck-f.png',
                    tint = wreckage.tint or nil,
                    width = 58,
                    height = 35
                },
                {
                    filename = Public.mod_prefix .. '/graphics/images/ship-wreck/small-ship-wreck-g.png',
                    tint = wreckage.tint or nil,
                    width = 80,
                    height = 72
                },
                {
                    filename = Public.mod_prefix .. '/graphics/images/ship-wreck/small-ship-wreck-h.png',
                    tint = wreckage.tint or nil,
                    width = 79,
                    height = 54
                },
                {
                    filename = Public.mod_prefix .. '/graphics/images/ship-wreck/small-ship-wreck-i.png',
                    tint = wreckage.tint or nil,
                    width = 56,
                    height = 55
                }
            },
            render_layer = 'object'
        }
    }
end
