local Public = require 'common'
local hit_effects = require('__base__.prototypes.entity.hit-effects')
local sounds = require('__base__.prototypes.entity.sounds')
local decorative_trigger_effects = require('__base__.prototypes.decorative.decorative-trigger-effects')
local base_decorative_sprite_priority = 'extra-high'

local tints = require 'utils.layers'.tints

local rocks
local deepcopy = table.deepcopy

---Creates a new rock with a different tint
---@param data_settings {name: string, tint: string|table,  max_health: number, resistances: table}
local function create_alternative_rock(data_settings)
    local name = data_settings.name
    local tint

    if data_settings.tint then
        if type(data_settings.tint) == 'string' then
            tint = tints[data_settings.tint]
        else
            tint = data_settings.tint
        end
    else
        if tints[name] then
            tint = tints[name]
        end
    end

    for index = 1, #rocks do
        local rock = deepcopy(rocks[index])
        rock.localised_name = { 'entity-name.' .. rock.name .. '' }
        rock.name = rock.name .. '-' .. name
        if rock.max_health then
            rock.max_health = rock.max_health * (data_settings.max_health or 1)
        end
        rock.resistances = data_settings.resistances or rock.resistances

        if tint then
            for _, picture in pairs(rock.pictures) do
                picture.tint = tint
            end
        end

        data:extend({ rock })
    end
end

rocks = {
    {
        name = 'huge-rock',
        type = 'simple-entity',
        flags = { 'placeable-neutral', 'placeable-off-grid' },
        icon = '__base__/graphics/icons/huge-rock.png',
        icon_size = 64,
        subgroup = 'grass',
        order = 'b[decorative]-l[rock]-a[huge]',
        collision_box = { { -1.5, -1.1 }, { 1.5, 1.1 } },
        selection_box = { { -1.7, -1.3 }, { 1.7, 1.3 } },
        damaged_trigger_effect = hit_effects.rock(),
        dying_trigger_effect = decorative_trigger_effects.huge_rock(),
        minable =
        {
            mining_particle = "stone-particle",
            mining_time = 3,
            results =
            {
                { type = "item", name = "stone", amount_min = 24, amount_max = 50 },
                { type = "item", name = "coal",  amount_min = 24, amount_max = 50 }
            },
        },
        loot = {
            { item = 'stone', probability = 1, count_min = 25, count_max = 50 }
        },
        map_color = { r = 129, g = 105, b = 78 },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = sounds.deconstruct_bricks(1.0),
        vehicle_impact_sound = sounds.car_stone_impact,
        render_layer = 'object',
        max_health = 2000,
        resistances = {
            {
                type = 'fire',
                percent = 100
            }
        },
        autoplace = Public.common.rock_autoplace_settings(0.125, 'a[huge]', { { 0, 0.65 }, { 1, 1 } }),
        pictures = {
            {

                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-05.png',
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 }
            },
            {

                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-06.png',
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.429688, 0.046875 }
            },
            {

                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-07.png',
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 }
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-08.png',
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 }
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-09.png',
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 }
            },
            {

                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-10.png',
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 }
            },
            {

                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-11.png',
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 }
            },
            {

                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-12.png',
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 }
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-13.png',
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-14.png',
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-15.png',
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-16.png',
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-17.png',
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-18.png',
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-19.png',
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/huge-rock/hr-huge-rock-20.png',
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 }

            }
        }
    },
    {
        name = 'big-rock',
        type = 'simple-entity',
        flags = { 'placeable-neutral', 'placeable-off-grid' },
        icon = '__base__/graphics/icons/big-rock.png',
        icon_size = 64,
        subgroup = 'grass',
        order = 'b[decorative]-l[rock]-b[big]',
        collision_box = { { -1.0, -0.9 }, { 1.0, 1.0 } },
        selection_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        damaged_trigger_effect = hit_effects.rock(),
        dying_trigger_effect = decorative_trigger_effects.big_rock(),
        minable =
        {
            mining_particle = "stone-particle",
            mining_time = 3,
            results =
            {
                { type = "item", name = "stone", amount_min = 24, amount_max = 50 },
                { type = "item", name = "coal",  amount_min = 24, amount_max = 50 }
            },
        },
        loot = {
            { item = 'stone', probability = 1, count_min = 9, count_max = 25 }
        },
        map_color = { r = 129, g = 105, b = 78 },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = sounds.deconstruct_bricks(1.0),
        vehicle_impact_sound = sounds.car_stone_impact,
        render_layer = 'object',
        max_health = 500,
        resistances = {
            {
                type = 'fire',
                percent = 100
            }
        },
        autoplace = Public.common.rock_autoplace_settings(0.25, 'b[big]', { { 0, 0.65 }, { 1, 1 } }),
        pictures = {
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-01.png',
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-02.png',
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.445312, 0.125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-03.png',
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-04.png',
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-05.png',
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-06.png',
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-07.png',
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-08.png',
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-09.png',
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-10.png',
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-11.png',
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-12.png',
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-13.png',
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-14.png',
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-15.png',
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-16.png',
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-17.png',
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-18.png',
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-19.png',
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/big-rock/hr-big-rock-20.png',
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 }

            }
        }
    },
    {
        name = 'medium-rock',
        type = 'optimized-decorative',
        order = 'b[decorative]-l[rock]-c[medium]',
        collision_box = { { -1.1, -1.1 }, { 1.1, 1.1 } },
        render_layer = 'decorative',
        autoplace = Public.common.rock_autoplace_settings(0.5, 'c[medium]', { { 0, 0.3 }, { 1, 1 } }),
        trigger_effect = decorative_trigger_effects.medium_rock(),
        pictures = {
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-01.png',
                priority = base_decorative_sprite_priority,
                width = 89,
                height = 63,
                scale = 0.5,
                shift = { 0.078125, 0.109375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-02.png',
                priority = base_decorative_sprite_priority,
                width = 77,
                height = 66,
                scale = 0.5,
                shift = { 0.015625, 0.132812 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-03.png',
                priority = base_decorative_sprite_priority,
                width = 92,
                height = 63,
                scale = 0.5,
                shift = { 0.148438, 0.179688 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-04.png',
                priority = base_decorative_sprite_priority,
                width = 91,
                height = 59,
                scale = 0.5,
                shift = { -0.0078125, 0.1875 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-05.png',
                priority = base_decorative_sprite_priority,
                width = 104,
                height = 72,
                scale = 0.5,
                shift = { 0.203125, 0.179688 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-06.png',
                priority = base_decorative_sprite_priority,
                width = 83,
                height = 82,
                scale = 0.5,
                shift = { 0.015625, 0.21875 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-07.png',
                priority = base_decorative_sprite_priority,
                width = 111,
                height = 65,
                scale = 0.5,
                shift = { 0.0625, 0.3125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-08.png',
                priority = base_decorative_sprite_priority,
                width = 79,
                height = 81,
                scale = 0.5,
                shift = { 0.109375, 0.148438 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-09.png',
                priority = base_decorative_sprite_priority,
                width = 98,
                height = 56,
                scale = 0.5,
                shift = { 0.015625, 0.140625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-10.png',
                priority = base_decorative_sprite_priority,
                width = 91,
                height = 68,
                scale = 0.5,
                shift = { 0, 0.132812 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-11.png',
                priority = base_decorative_sprite_priority,
                width = 105,
                height = 71,
                scale = 0.5,
                shift = { -0.0234375, 0.125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/medium-rock/hr-medium-rock-12.png',
                priority = base_decorative_sprite_priority,
                width = 78,
                height = 80,
                scale = 0.5,
                shift = { 0.078125, -0.015625 }

            }
        }
    },
    {
        name = 'small-rock',
        type = 'optimized-decorative',
        order = 'b[decorative]-l[rock]-d[small]',
        collision_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        render_layer = 'decorative',
        walking_sound = sounds.pebble,
        autoplace = Public.common.rock_autoplace_settings(1, 'd[small]', { { 0, 0.3 }, { 1, 1 } }),
        trigger_effect = decorative_trigger_effects.small_rock(),
        pictures = {
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-01.png',
                priority = base_decorative_sprite_priority,
                width = 51,
                height = 37,
                scale = 0.5,
                shift = { 0.0546875, 0.117188 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-02.png',
                priority = base_decorative_sprite_priority,
                width = 52,
                height = 35,
                scale = 0.5,
                shift = { 0.0390625, 0.078125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-03.png',
                priority = base_decorative_sprite_priority,
                width = 46,
                height = 42,
                scale = 0.5,
                shift = { -0.0078125, 0.148438 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-04.png',
                priority = base_decorative_sprite_priority,
                width = 53,
                height = 33,
                scale = 0.5,
                shift = { 0.0234375, 0.15625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-05.png',
                priority = base_decorative_sprite_priority,
                width = 47,
                height = 46,
                scale = 0.5,
                shift = { 0.0390625, 0.140625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-06.png',
                priority = base_decorative_sprite_priority,
                width = 62,
                height = 41,
                scale = 0.5,
                shift = { -0.03125, 0.09375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-07.png',
                priority = base_decorative_sprite_priority,
                width = 64,
                height = 36,
                scale = 0.5,
                shift = { -0.015625, 0.0703125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-08.png',
                priority = base_decorative_sprite_priority,
                width = 65,
                height = 31,
                scale = 0.5,
                shift = { -0.71875, -0.164062 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-09.png',
                priority = base_decorative_sprite_priority,
                width = 46,
                height = 34,
                scale = 0.5,
                shift = { -0.0859375, 0.101562 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-10.png',
                priority = base_decorative_sprite_priority,
                width = 48,
                height = 34,
                scale = 0.5,
                shift = { 0.0078125, 0.125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-11.png',
                priority = base_decorative_sprite_priority,
                width = 51,
                height = 33,
                scale = 0.5,
                shift = { -0.0859375, 0.078125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-12.png',
                priority = base_decorative_sprite_priority,
                width = 47,
                height = 39,
                scale = 0.5,
                shift = { 0.078125, 0.117188 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-13.png',
                priority = base_decorative_sprite_priority,
                width = 43,
                height = 33,
                scale = 0.5,
                shift = { 0, 0.09375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-14.png',
                priority = base_decorative_sprite_priority,
                width = 43,
                height = 30,
                scale = 0.5,
                shift = { 0.046875, 0.140625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-15.png',
                priority = base_decorative_sprite_priority,
                width = 41,
                height = 37,
                scale = 0.5,
                shift = { 0, 0.140625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/small-rock/hr-small-rock-16.png',
                priority = base_decorative_sprite_priority,
                width = 46,
                height = 33,
                scale = 0.5,
                shift = { 0.0234375, 0.125 }

            }
        }
    },
    {
        name = 'tiny-rock',
        type = 'optimized-decorative',
        order = 'b[decorative]-l[rock]-e[tiny]',
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        render_layer = 'decorative',
        walking_sound = sounds.pebble,
        autoplace = Public.common.rock_autoplace_settings(1.1, 'e[tiny]', { { 0, 0.3 }, { 1, 1 } }),
        trigger_effect = decorative_trigger_effects.tiny_rock(),
        pictures = {
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-01.png',
                priority = base_decorative_sprite_priority,
                width = 29,
                height = 21,
                scale = 0.5,
                shift = { 0.0390625, 0.0234375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-02.png',
                priority = base_decorative_sprite_priority,
                width = 30,
                height = 19,
                scale = 0.5,
                shift = { 0.0078125, 0.0234375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-03.png',
                priority = base_decorative_sprite_priority,
                width = 29,
                height = 24,
                scale = 0.5,
                shift = { 0.0234375, 0.0234375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-04.png',
                priority = base_decorative_sprite_priority,
                width = 32,
                height = 20,
                scale = 0.5,
                shift = { 0.03125, 0.015625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-05.png',
                priority = base_decorative_sprite_priority,
                width = 29,
                height = 25,
                scale = 0.5,
                shift = { 0, -0.0078125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-06.png',
                priority = base_decorative_sprite_priority,
                width = 36,
                height = 24,
                scale = 0.5,
                shift = { 0, -0.0234375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-07.png',
                priority = base_decorative_sprite_priority,
                width = 78,
                height = 34,
                scale = 0.5,
                shift = { -0.34375, -0.132812 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-08.png',
                priority = base_decorative_sprite_priority,
                width = 35,
                height = 19,
                scale = 0.5,
                shift = { -0.03125, 0 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-09.png',
                priority = base_decorative_sprite_priority,
                width = 28,
                height = 20,
                scale = 0.5,
                shift = { 0.0234375, 0.015625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-10.png',
                priority = base_decorative_sprite_priority,
                width = 29,
                height = 20,
                scale = 0.5,
                shift = { 0.0078125, -0.0234375 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-11.png',
                priority = base_decorative_sprite_priority,
                width = 29,
                height = 20,
                scale = 0.5,
                shift = { 0.046875, 0.0078125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-12.png',
                priority = base_decorative_sprite_priority,
                width = 29,
                height = 22,
                scale = 0.5,
                shift = { 0.015625, 0 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-13.png',
                priority = base_decorative_sprite_priority,
                width = 27,
                height = 19,
                scale = 0.5,
                shift = { 0.03125, 0.015625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-14.png',
                priority = base_decorative_sprite_priority,
                width = 27,
                height = 19,
                scale = 0.5,
                shift = { 0.0078125, 0.0078125 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-15.png',
                priority = base_decorative_sprite_priority,
                width = 26,
                height = 22,
                scale = 0.5,
                shift = { 0.0078125, 0.015625 }

            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/tiny-rock/hr-tiny-rock-16.png',
                priority = base_decorative_sprite_priority,
                width = 27,
                height = 20,
                scale = 0.5,
                shift = { 0.03125, 0.0078125 }

            }
        }
    },
    {
        name = 'big-sand-rock',
        type = 'simple-entity',
        flags = { 'placeable-neutral', 'placeable-off-grid' },
        icon = '__base__/graphics/icons/big-sand-rock.png',
        icon_size = 64,
        subgroup = 'grass',
        order = 'b[decorative]-l[rock]-a[big]',
        collision_box = { { -0.75, -0.75 }, { 0.75, 0.75 } },
        selection_box = { { -1.0, -1.0 }, { 1.0, 0.75 } },
        damaged_trigger_effect = hit_effects.rock(),
        render_layer = 'object',
        max_health = 500,
        autoplace = Public.common.rock_autoplace_settings(0.25, 'b[big]', { { 0, 0 }, { 0.4, 0.2 } }),
        dying_trigger_effect = decorative_trigger_effects.big_rock(),
        minable =
        {
            mining_particle = "stone-particle",
            mining_time = 2,
            results =
            {
                { type = "item", name = "stone", amount_min = 11, amount_max = 25 },
            },
        },
        loot = {
            { item = 'stone', probability = 1, count_min = 10, count_max = 15 }
        },
        resistances = {
            {
                type = 'fire',
                percent = 100
            }
        },
        map_color = { r = 129, g = 105, b = 78 },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = sounds.deconstruct_bricks(1.0),
        vehicle_impact_sound = sounds.car_stone_impact,
        pictures = {
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-01.png',
                width = 209,
                height = 138,
                shift = { 0.304688, -0.4 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-02.png',
                width = 165,
                height = 129,
                shift = { 0.0, 0.0390625 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-03.png',
                width = 151,
                height = 139,
                shift = { 0.151562, 0.0 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-04.png',
                width = 216,
                height = 110,
                shift = { 0.390625, 0.0 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-05.png',
                width = 154,
                height = 147,
                shift = { 0.328125, 0.0703125 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-06.png',
                width = 154,
                height = 132,
                shift = { 0.16875, -0.1 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-07.png',
                width = 193,
                height = 130,
                shift = { 0.3, -0.2 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-08.png',
                width = 136,
                height = 117,
                shift = { 0.0, 0.0 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-09.png',
                width = 157,
                height = 115,
                shift = { 0.1, 0.0 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-10.png',
                width = 198,
                height = 153,
                shift = { 0.325, -0.1 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-11.png',
                width = 190,
                height = 115,
                shift = { 0.453125, 0.0 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-12.png',
                width = 229,
                height = 126,
                shift = { 0.539062, -0.015625 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-13.png',
                width = 151,
                height = 125,
                shift = { 0.0703125, 0.179688 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-14.png',
                width = 137,
                height = 117,
                shift = { 0.160938, 0.0 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-15.png',
                width = 201,
                height = 141,
                shift = { 0.242188, -0.195312 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-big-sand-rock-16.png',
                width = 209,
                height = 154,
                shift = { 0.351562, -0.1 },
                scale = 0.5
            }
        }
    },
    {
        name = 'medium-sand-rock',
        type = 'optimized-decorative',
        order = 'd[remnants]-d[ship-wreck-grass]-b[small]',
        collision_box = { { -1.5, -0.5 }, { 1.5, 0.5 } },
        render_layer = 'floor',
        autoplace = Public.common.rock_autoplace_settings(0.4, 'c[medium]', { { 0, 0 }, { 0.4, 0.2 } }),
        trigger_effect = decorative_trigger_effects.medium_rock(),
        pictures = {
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-01.png',
                priority = base_decorative_sprite_priority,
                width = 134,
                height = 82,
                shift = { 0.328125, 0.515625 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-02.png',
                priority = base_decorative_sprite_priority,
                width = 110,
                height = 79,
                shift = { 0.15625, 0.570312 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-03.png',
                priority = base_decorative_sprite_priority,
                width = 90,
                height = 60,
                shift = { 0.34375, 0.484375 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-04.png',
                priority = base_decorative_sprite_priority,
                width = 110,
                height = 89,
                shift = { 0.296875, 0.476562 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-05.png',
                priority = base_decorative_sprite_priority,
                width = 106,
                height = 76,
                shift = { 0.359375, 0.25 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-06.png',
                priority = base_decorative_sprite_priority,
                width = 100,
                height = 92,
                shift = { 0.4375, 0.296875 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-07.png',
                priority = base_decorative_sprite_priority,
                width = 82,
                height = 83,
                shift = { 0.59375, 0.398438 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-08.png',
                priority = base_decorative_sprite_priority,
                width = 123,
                height = 92,
                shift = { 0.601562, 0.328125 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-09.png',
                priority = base_decorative_sprite_priority,
                width = 146,
                height = 76,
                shift = { 0.5625, 0.3125 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-10.png',
                priority = base_decorative_sprite_priority,
                width = 112,
                height = 77,
                shift = { 0.46875, 0.460938 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-11.png',
                priority = base_decorative_sprite_priority,
                width = 91,
                height = 61,
                shift = { 0.445312, 0.507812 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-12.png',
                priority = base_decorative_sprite_priority,
                width = 105,
                height = 84,
                shift = { 0.398438, 0.453125 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-13.png',
                priority = base_decorative_sprite_priority,
                width = 94,
                height = 73,
                shift = { 0.375, 0.632812 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-14.png',
                priority = base_decorative_sprite_priority,
                width = 122,
                height = 89,
                shift = { 0.359375, 0.570312 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-15.png',
                priority = base_decorative_sprite_priority,
                width = 98,
                height = 65,
                shift = { 0.1875, 0.773438 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-medium-sand-rock-16.png',
                priority = base_decorative_sprite_priority,
                width = 144,
                height = 76,
                shift = { 0.109375, 0.71875 },
                scale = 0.5
            }
        }
    },
    {
        name = 'small-sand-rock',
        type = 'optimized-decorative',
        order = 'd[remnants]-d[ship-wreck-grass]-b[small]',
        collision_box = { { -1.5, -0.5 }, { 1.5, 0.5 } },
        render_layer = 'floor',
        autoplace = Public.common.rock_autoplace_settings(1.1, 'd[small]', { { 0, 0 }, { 0.4, 0.2 } }),
        walking_sound = sounds.pebble,
        trigger_effect = decorative_trigger_effects.small_rock(),
        pictures = {
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-01.png',
                priority = base_decorative_sprite_priority,
                width = 56,
                height = 45,
                shift = { 0.40625, 0.476562 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-02.png',
                priority = base_decorative_sprite_priority,
                width = 54,
                height = 45,
                shift = { 0.296875, 0.476562 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-03.png',
                priority = base_decorative_sprite_priority,
                width = 44,
                height = 40,
                shift = { 0.328125, 0.53125 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-04.png',
                priority = base_decorative_sprite_priority,
                width = 60,
                height = 43,
                shift = { 0.265625, 0.601562 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-05.png',
                priority = base_decorative_sprite_priority,
                width = 52,
                height = 48,
                shift = { 0.296875, 0.46875 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-06.png',
                priority = base_decorative_sprite_priority,
                width = 57,
                height = 39,
                shift = { 0.554688, 0.523438 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-07.png',
                priority = base_decorative_sprite_priority,
                width = 73,
                height = 41,
                shift = { 0.570312, 0.539062 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-08.png',
                priority = base_decorative_sprite_priority,
                width = 50,
                height = 46,
                shift = { 0.640625, 0.390625 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-09.png',
                priority = base_decorative_sprite_priority,
                width = 52,
                height = 43,
                shift = { 0.671875, 0.335938 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-10.png',
                priority = base_decorative_sprite_priority,
                width = 63,
                height = 39,
                shift = { 0.632812, 0.398438 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-11.png',
                priority = base_decorative_sprite_priority,
                width = 57,
                height = 41,
                shift = { 0.460938, 0.617188 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-12.png',
                priority = base_decorative_sprite_priority,
                width = 67,
                height = 51,
                shift = { 0.460938, 0.570312 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-13.png',
                priority = base_decorative_sprite_priority,
                width = 70,
                height = 37,
                shift = { 0.484375, 0.789062 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-14.png',
                priority = base_decorative_sprite_priority,
                width = 63,
                height = 48,
                shift = { 0.179688, 0.90625 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-15.png',
                priority = base_decorative_sprite_priority,
                width = 56,
                height = 48,
                shift = { 0.140625, 0.78125 },
                scale = 0.5
            },
            {
                filename = Public.mod_prefix .. '/graphics/decoratives/sand-rock/hr-small-sand-rock-16.png',
                priority = base_decorative_sprite_priority,
                width = 74,
                height = 46,
                shift = { -0.03125, 0.78125 },
                scale = 0.5
            }
        }
    }
}

create_alternative_rock(
    {
        name = 'crisp',
        max_health = 1.2,
        tint = { r = 0.8, g = 0.6, b = 0.4, a = 1 },
        resistances = {
            {
                type = 'fire',
                percent = 100
            },
            {
                type = 'explosion',
                percent = 100
            }
        }
    }
)

create_alternative_rock(
    {
        name = 'crisp-1',
        max_health = 1.4,
        tint = { r = 0.7, g = 0.5, b = 0.3, a = 1 },
        resistances = {
            {
                type = 'fire',
                percent = 100
            },
            {
                type = 'explosion',
                percent = 100
            }
        }
    }
)


create_alternative_rock(
    {
        name = 'crisp-2',
        max_health = 1.6,
        tint = { r = 0.6, g = 0.5, b = 0.3, a = 1 },
        resistances = {
            {
                type = 'fire',
                percent = 100
            },
            {
                type = 'explosion',
                percent = 100
            }
        }
    }
)
