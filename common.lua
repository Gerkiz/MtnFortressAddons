local sounds = require('__base__.prototypes.entity.sounds')
local hit_effects = require('__base__.prototypes.entity.hit-effects')
local biter_ai_settings = { destroy_when_commands_fail = true, allow_try_return_to_spawner = true }
---@diagnostic disable-next-line: undefined-global
local character_animations = character_animations
---@diagnostic disable-next-line: undefined-global
local gun_turret_extension = gun_turret_extension
---@diagnostic disable-next-line: undefined-global
local worm_folded_animation = worm_folded_animation


local Public = {
    layers = require 'utils.layers',
    scales = require 'utils.scales',
    common = {},
    mod_prefix = '__MtnFortressAddons__',
    tiers = {
        util.color("#808080"), util.color("#ffb726"), util.color("#f22318"), util.color("#33b4ff"), util.color("#b459ff"),
        util.color("#2ee55c"), util.color("#ff8533"), util.color("#ff33b4"), util.color("#ff33a1"), util.color("#080808"),
    }
}

local function check_missing_icons(icon_data)
    local icon_size = icon_data.icon_size or defines.default_icon_size
    return {
        icon = icon_data.icon,
        icon_size = icon_size,
        scale = icon_data.scale or (32 / icon_size),
        shift = icon_data.shift or nil,
        tint = icon_data.tint or nil,
    }
end

local function convert_sprite(icon_data, scale)
    local icon_copy = check_missing_icons(icon_data)
    local scale_to_apply = scale and scale * icon_copy.scale or icon_copy.scale or 32 / icon_copy.icon_size
    local converted_shift = icon_copy.shift and util.mul_shift(icon_copy.shift, scale_to_apply * 1 / 32) or nil
    return {
        flags = { "icon" },
        filename = icon_copy.icon,
        size = icon_copy.icon_size,
        scale = scale_to_apply,
        shift = converted_shift,
        tint = icon_copy.tint,
    }
end

local function create_sprite(icon_data, scale)
    local sprite = {}
    if #icon_data == 1 then
        sprite = convert_sprite(icon_data[1], scale)
    else
        sprite = { layers = {} }
        for n = 1, #icon_data do
            sprite.layers[n] = convert_sprite(icon_data[n], scale)
        end
    end

    return sprite
end

-- Functions
Public.common.set_worm_animations = function(entiy, scale, layer)
    entiy.folded_animation = worm_folded_animation(scale, layer)
    entiy.preparing_animation = worm_preparing_animation(scale, layer, 'forward')
    entiy.prepared_animation = worm_prepared_animation(scale, layer)
    entiy.prepared_alternative_animation = worm_prepared_alternative_animation(scale, layer)
    entiy.starting_attack_animation = worm_start_attack_animation(scale, layer)
    entiy.ending_attack_animation = worm_end_attack_animation(scale, layer)
    entiy.folding_animation = worm_preparing_animation(scale, layer, 'backward')
end

Public.biter_ai_settings = biter_ai_settings

Public.common.create_worm_sound_effects = {
    category = "enemy",
    type = 'play-sound',
    sound = {
        variations = {
            {
                filename = '__base__/sound/creatures/projectile-acid-burn-1.ogg',
                volume = 0.65,
                modifiers = volume_multiplier("main-menu", 0.9)
            },
            {
                filename = '__base__/sound/creatures/projectile-acid-burn-2.ogg',
                volume = 0.65,
                modifiers = volume_multiplier("main-menu", 0.9)
            },
            {
                filename = '__base__/sound/creatures/projectile-acid-burn-long-1.ogg',
                volume = 0.6,
                modifiers = volume_multiplier("main-menu", 0.9)
            },
            {
                filename = '__base__/sound/creatures/projectile-acid-burn-long-2.ogg',
                volume = 0.6,
                modifiers = volume_multiplier("main-menu", 0.9)
            }
        },
        aggregation = { max_count = 3, remove = true, count_already_playing = true },
    }
}

Public.common.create_inital_action = function(data)
    return {
        flags = {
            'not-on-map'
        },
        initial_action = data.action,
        name = data.name,
        oriented_particle = true,
        particle = {
            animation_speed = 1,
            draw_as_glow = true,
            filename = '__base__/graphics/entity/acid-projectile/acid-projectile-head.png',
            frame_count = 15,
            height = 84,
            hr_version = {
                animation_speed = 1,
                draw_as_glow = true,
                filename = '__base__/graphics/entity/acid-projectile/hr-acid-projectile-head.png',
                frame_count = 15,
                height = 164,
                line_length = 5,
                priority = 'high',
                scale = 0.6,
                shift = util.mul_shift(util.by_pixel(-2, 30), data.scale or 1),
                tint = data.tint or
                    {
                        a = 1,
                        b = 0.28199999999999999,
                        g = 1,
                        r = 0.91699999999999999
                    },
                width = 42
            },
            line_length = 5,
            priority = 'high',
            scale = data.scale or 1.2,
            shift = util.mul_shift(util.by_pixel(-2, 31), data.scale or 1),
            tint = data.tint or 0,
            width = 22
        },
        particle_alpha_per_part = 0.8,
        particle_buffer_size = 90,
        particle_end_alpha = 1,
        particle_fade_out_duration = 2,
        particle_horizontal_speed = 0.3375,
        particle_horizontal_speed_deviation = 0.0035,
        particle_loop_exit_threshold = 0.25,
        particle_loop_frame_count = 15,
        particle_scale_per_part = 0.8,
        particle_spawn_interval = 1,
        particle_spawn_timeout = 6,
        particle_start_alpha = 0.5,
        particle_vertical_acceleration = 0.0045000000000000009,
        shadow = {
            animation_speed = 1,
            draw_as_shadow = true,
            filename = '__base__/graphics/entity/acid-projectile/acid-projectile-shadow.png',
            frame_count = 15,
            height = 84,
            hr_version = {
                animation_speed = 1,
                draw_as_shadow = true,
                filename = '__base__/graphics/entity/acid-projectile/hr-acid-projectile-shadow.png',
                frame_count = 15,
                height = 164,
                line_length = 15,
                priority = 'high',
                scale = data.scale or 0.6,
                shift = util.mul_shift(util.by_pixel(-2, 30), data.scale or 1),
                width = 42
            },
            line_length = 15,
            priority = 'high',
            scale = data.scale or 1.2,
            shift = util.mul_shift(util.by_pixel(-2, 31), data.scale or 1),
            width = 22
        },
        shadow_scale_enabled = true,
        special_neutral_target_damage = {
            amount = 1,
            type = 'acid'
        },
        spine_animation = {
            animation_speed = 1,
            draw_as_glow = true,
            filename = '__base__/graphics/entity/acid-projectile/acid-projectile-tail.png',
            frame_count = 15,
            height = 12,
            hr_version = {
                animation_speed = 1,
                draw_as_glow = true,
                filename = '__base__/graphics/entity/acid-projectile/hr-acid-projectile-tail.png',
                frame_count = 15,
                height = 20,
                line_length = 5,
                priority = 'high',
                scale = data.scale or 0.6,
                shift = util.mul_shift(util.by_pixel(0, -2), data.scale or 1),
                tint = data.tint or 0,
                width = 132
            },
            line_length = 5,
            priority = 'high',
            scale = data.scale or 1.2,
            shift = util.mul_shift(util.by_pixel(0, -1), data.scale or 1),
            tint = data.tint or 0,
            width = 66
        },
        type = 'stream',
        working_sound = {
            sound = {
                {
                    filename = '__base__/sound/fight/projectile-acid-burn-loop.ogg',
                    volume = 0.4
                }
            }
        }
    }
end

Public.common.create_ammo_turret = function(data)
    return {
        type = 'ammo-turret',
        name = data.name,
        icon = '__base__/graphics/icons/gun-turret.png',
        icon_size = 64,
        flags = { 'placeable-player', 'player-creation' },
        max_health = data.health or 1000,
        corpse = 'gun-turret-remnants',
        dying_explosion = 'gun-turret-explosion',
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        selection_box = { { -1, -1 }, { 1, 1 } },
        damaged_trigger_effect = hit_effects.entity(),
        rotation_speed = 0.015,
        preparing_speed = 0.08,
        preparing_sound = sounds.gun_turret_activate,
        folding_sound = sounds.gun_turret_deactivate,
        folding_speed = 0.08,
        inventory_size = 1,
        automated_ammo_count = 10,
        attacking_speed = 0.6,
        alert_when_attacking = true,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        graphics_set = {
            base_visualisation =
            {
                animation =
                {
                    layers =
                    {
                        {
                            filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
                            priority = "high",
                            width = 150,
                            tint = data.tint or { r = 0.3, g = 0.3, b = 0.9, a = 1 },
                            height = 118,
                            shift = util.by_pixel(0.5, -1),
                            scale = 0.5
                        },
                        {
                            filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
                            flags = { "mask", "low-object" },
                            line_length = 1,
                            width = 122,
                            tint = data.tint or { r = 0.3, g = 0.3, b = 0.9, a = 1 },
                            height = 102,
                            shift = util.by_pixel(0, -4.5),
                            apply_runtime_tint = true,
                            scale = 0.5
                        }
                    }
                }
            }
        },
        folded_animation = {
            layers = {
                gun_turret_extension { frame_count = 1, line_length = 1 },
                gun_turret_extension_mask { frame_count = 1, line_length = 1 },
                gun_turret_extension_shadow { frame_count = 1, line_length = 1 }
            }
        },
        preparing_animation = {
            layers = {
                gun_turret_extension {},
                gun_turret_extension_mask {},
                gun_turret_extension_shadow {}
            }
        },
        prepared_animation = gun_turret_attack { frame_count = 1 },
        attacking_animation = gun_turret_attack {},
        folding_animation = {
            layers = {
                gun_turret_extension { run_mode = 'backward' },
                gun_turret_extension_mask { run_mode = 'backward' },
                gun_turret_extension_shadow { run_mode = 'backward' }
            }
        },
        vehicle_impact_sound = sounds.generic_impact,
        attack_parameters = {
            ammo_category = 'bullet',
            type = 'projectile',
            cooldown = 6,
            damage_modifier = data.damage or 3,
            projectile_creation_distance = 1.39375,
            projectile_center = { 0, -0.0875 }, -- same as gun_turret_attack shift
            shell_particle = {
                name = 'shell-particle',
                direction_deviation = 0.1,
                speed = 0.1,
                speed_deviation = 0.03,
                center = { -0.0625, 0 },
                creation_distance = -1.925,
                starting_frame_speed = 0.2,
                starting_frame_speed_deviation = 0.1
            },
            range = data.range or 18,
            sound = sounds.gun_turret_gunshot
        },
        call_for_help_radius = 40,
        water_reflection = {
            pictures = {
                filename = '__base__/graphics/entity/gun-turret/gun-turret-reflection.png',
                priority = 'extra-high',
                width = 20,
                height = 32,
                shift = util.by_pixel(0, 40),
                variation_count = 1,
                scale = 5
            },
            rotate = false,
            orientation_to_variation = false
        }
    }, {
        type = 'corpse',
        name = 'small-worm-corpse',
        icon = '__base__/graphics/icons/small-worm-corpse.png',
        icon_size = 64,
        selection_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        selectable_in_game = false,
        dying_speed = 0.01,
        time_before_removed = 15 * 60 * 60,
        subgroup = 'corpses',
        order = 'c[corpse]-c[worm]-a[small]',
        flags = { 'placeable-neutral', 'placeable-off-grid', 'building-direction-8-way', 'not-repairable', 'not-on-map' },
        final_render_layer = 'lower-object-above-shadow',
        animation = worm_die_animation(scale_worm_small, tint_worm_small),
        ground_patch = {
            sheet = worm_integration(scale_worm_small)
        }
    }
end

Public.common.create_laser_turret = function(data)
    return {
        type = 'electric-turret',
        name = data.name,
        icon = '__base__/graphics/icons/laser-turret.png',
        icon_size = 64,
        flags = { 'placeable-player', 'placeable-enemy', 'player-creation' },
        max_health = data.health or 1000,
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        selection_box = { { -1, -1 }, { 1, 1 } },
        damaged_trigger_effect = hit_effects.entity(),
        rotation_speed = 0.01,
        preparing_speed = 0.05,
        preparing_sound = sounds.laser_turret_activate,
        folding_sound = sounds.laser_turret_deactivate,
        corpse = 'laser-turret-remnants',
        dying_explosion = 'laser-turret-explosion',
        folding_speed = 0.05,
        graphics_set = {
            base_visualisation =
            {
                animation =
                {
                    layers =
                    {
                        {
                            filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
                            priority = "high",
                            width = 138,
                            tint = data.tint or { r = 0.3, g = 0.3, b = 0.9, a = 1 },
                            height = 104,
                            shift = util.by_pixel(-0.5, 2),
                            scale = 0.5
                        },
                        {
                            filename = "__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
                            line_length = 1,
                            width = 132,
                            height = 82,
                            draw_as_shadow = true,
                            shift = util.by_pixel(6, 3),
                            scale = 0.5
                        }
                    }
                }
            }
        },
        energy_source =
        {
            type = "void",
            render_no_power_icon = false,
            render_no_network_icon = false
        },
        folded_animation = {
            layers = {
                laser_turret_extension { frame_count = 1, line_length = 1 },
                laser_turret_extension_shadow { frame_count = 1, line_length = 1 },
                laser_turret_extension_mask { frame_count = 1, line_length = 1 }
            }
        },
        preparing_animation = {
            layers = {
                laser_turret_extension {},
                laser_turret_extension_shadow {},
                laser_turret_extension_mask {}
            }
        },
        prepared_animation = {
            layers = {
                laser_turret_shooting(),
                laser_turret_shooting_shadow(),
                laser_turret_shooting_mask()
            }
        },
        --attacking_speed = 0.1,
        energy_glow_animation = laser_turret_shooting_glow(),
        glow_light_intensity = 0.5, -- defaults to 0
        folding_animation = {
            layers = {
                laser_turret_extension { run_mode = 'backward' },
                laser_turret_extension_shadow { run_mode = 'backward' },
                laser_turret_extension_mask { run_mode = 'backward' }
            }
        },
        vehicle_impact_sound = sounds.generic_impact,
        attack_parameters = {
            ammo_category = 'laser',
            type = 'beam',
            cooldown = data.cooldown or 40,
            range = data.range or 24,
            source_direction_count = 64,
            source_offset = { 0, -3.423489 / 4 },
            damage_modifier = data.damage or 2,
            ammo_type = {
                energy_consumption = '800kJ',
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'beam',
                        beam = 'laser-beam',
                        max_length = data.range or 24,
                        duration = 40,
                        source_offset = { 0, -1.31439 }
                    }
                }
            }
        },
        call_for_help_radius = 40,
        water_reflection = {
            pictures = {
                filename = '__base__/graphics/entity/laser-turret/laser-turret-reflection.png',
                priority = 'extra-high',
                width = 20,
                height = 32,
                shift = util.by_pixel(0, 40),
                variation_count = 1,
                scale = 5
            },
            rotate = false,
            orientation_to_variation = false
        }
    }
end

--- Creates a new biter entity
---@param data { name: string, health: number, size: string, resistances: table, healing_per_tick: number, target_effects: table, range: number, movement_speed: number, scale: number, layer_1: Color, layer_2: Color}
---@return table
Public.common.create_new_biter = function(data)
    local size = 'small'
    local order = 'b-d-a'
    local pollution = 4

    if data.size == 'medium' then
        size = 'medium'
        order = 'b-d-b'
        pollution = 25
    end
    if data.size == 'big' then
        size = 'big'
        order = 'b-d-c'
        pollution = 100
    end
    if data.size == 'huge' then
        size = 'big'
        order = 'b-d-d'
        pollution = 120
    end
    if data.size == 'giant' then
        size = 'behemoth'
        order = 'b-d-e'
        pollution = 420
    end
    if data.size == 'massive' then
        size = 'behemoth'
        order = 'b-d-f'
        pollution = 500
    end
    if data.size == 'behemoth' then
        size = 'behemoth'
        order = 'b-d-g'
        pollution = 600
    end
    if data.size == 'godzilla_scale' then
        size = 'behemoth'
        order = 'b-d-h'
        pollution = 700
    end

    return {
        type = 'unit',
        name = data.name,
        order = order,
        icon = '__base__/graphics/icons/' .. size .. '-biter.png',
        icon_size = 64,
        flags = { 'placeable-player', 'placeable-enemy', 'placeable-off-grid', 'breaths-air', 'not-repairable' },
        max_health = data.health or 375,
        subgroup = 'enemies',
        resistances = data.resistances or nil,
        spawning_time_modifier = 2,
        healing_per_tick = data.healing_per_tick or 0.02,
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        selection_box = { { -0.7, -1.5 }, { 0.7, 0.3 } },
        sticker_box = { { -0.6, -0.8 }, { 0.6, 0 } },
        distraction_cooldown = 300,
        min_pursue_time = 10 * 60,
        max_pursue_distance = 50,
        attack_parameters = {
            ammo_category = 'melee',
            type = 'projectile',
            ammo_type = {
                target_type = 'entity',
                action = {
                    type = 'direct',
                    action_delivery = {
                        type = 'instant',
                        target_effects = data.target_effects or
                            {
                                {
                                    type = 'damage',
                                    damage = { amount = 20, type = 'physical' }
                                },
                                {
                                    type = 'damage',
                                    damage = { amount = 10, type = 'mtn-addon-pierce' }
                                }
                            }
                    }
                }
            },
            range = data.range or 1.5,
            cooldown = 35,
            sound = sounds.biter_roars_big(0.6),
            animation = biterattackanimation(data.scale, data.layer_1, data.layer_2)
        },
        vision_distance = 30,
        movement_speed = data.movement_speed or 0.17,
        distance_per_frame = 0.2,
        absorptions_to_join_attack = { pollution = pollution },
        corpse = size .. '-biter-corpse',
        dying_explosion = 'blood-explosion-big',
        working_sound = sounds.biter_calls_big(0.9),
        dying_sound = sounds.biter_dying_big(1.0),
        walking_sound = sounds.biter_walk_big(0.7),
        run_animation = biterrunanimation(data.scale, data.layer_1, data.layer_2),
        damaged_trigger_effect = hit_effects.biter(),
        running_sound_animation_positions = { 2 },
        ai_settings = biter_ai_settings,
        water_reflection = biter_water_reflection(data.scale)
    }
end

--- Creates a new spitter entity
---@param data { name: string, health: number, size: string, resistances: table, healing_per_tick: number, target_effects: table, range: number, movement_speed: number, scale: number, layer_1: Color, layer_2: Color, cooldown: number, damage_modifier: number, min_attack_distance: number }
---@return table
Public.common.create_new_spitter = function(data)
    local size = 'small'
    local order = 'b-d-a'
    local pollution = 4

    if data.size == 'medium' then
        size = 'medium'
        order = 'b-d-b'
        pollution = 25
    end
    if data.size == 'big' then
        size = 'big'
        order = 'b-d-c'
        pollution = 100
    end
    if data.size == 'huge' then
        size = 'big'
        order = 'b-d-d'
        pollution = 120
    end
    if data.size == 'giant' then
        size = 'behemoth'
        order = 'b-d-e'
        pollution = 420
    end
    if data.size == 'massive' then
        size = 'behemoth'
        order = 'b-d-f'
        pollution = 500
    end
    if data.size == 'behemoth' then
        size = 'behemoth'
        order = 'b-d-g'
        pollution = 600
    end
    if data.size == 'godzilla_scale' then
        size = 'behemoth'
        order = 'b-d-h'
        pollution = 700
    end

    return {
        type = 'unit',
        name = data.name,
        order = order,
        icon = '__base__/graphics/icons/' .. size .. '-spitter.png',
        icon_size = 64,
        flags = { 'placeable-player', 'placeable-enemy', 'placeable-off-grid', 'breaths-air', 'not-repairable' },
        max_health = data.health or 375,
        subgroup = 'enemies',
        resistances = data.resistances or
            {
                {
                    type = 'explosion',
                    percent = 2
                },
                {
                    type = 'laser',
                    percent = 2
                },
                {
                    type = 'mtn-addon-pierce',
                    decrease = 2,
                    percent = 4
                },
                {
                    type = 'poison',
                    percent = 5
                },
                {
                    type = 'acid',
                    percent = 5
                }
            },
        spawning_time_modifier = 2,
        healing_per_tick = data.healing_per_tick or 0.02,
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        selection_box = { { -0.7, -1.5 }, { 0.7, 0.3 } },
        sticker_box = { { -0.6, -0.8 }, { 0.6, 0 } },
        distraction_cooldown = 300,
        min_pursue_time = 10 * 60,
        max_pursue_distance = 50,
        attack_parameters = {
            type = "stream",
            ammo_category = "biological",
            cooldown = data.cooldown or 100,
            cooldown_deviation = 0.15,
            range = data.range or 13,
            range_mode = "bounding-box-to-bounding-box",
            min_attack_distance = data.min_attack_distance or 10,
            --projectile_creation_distance = 1.9,
            damage_modifier = data.damage_modifier or 12,
            warmup = 30,
            projectile_creation_parameters = spitter_shoot_shiftings(data.scale,
                data.scale * scale_spitter_stream),
            use_shooter_direction = true,

            lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5, -- this is same as particle horizontal speed of flamethrower fire stream

            ammo_type =
            {
                action =
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "stream",
                        stream = 'acid-stream-spitter-' .. size
                    }
                }
            },
            cyclic_sound =
            {
                begin_sound =
                {
                    category = "enemy",
                    variations = sound_variations("__base__/sound/creatures/spitter-spit-start", 4, 0.27),
                    aggregation = { max_count = 1, remove = true, count_already_playing = true }
                }
            },
            animation = spitterattackanimation(data.scale, data.layer_1, data.layer_2)
        },

        vision_distance = 30,
        movement_speed = data.movement_speed or 0.17,
        distance_per_frame = 0.2,
        absorptions_to_join_attack = { pollution = pollution },
        corpse = size .. '-spitter-corpse',
        dying_explosion = 'blood-explosion-big',
        working_sound = sounds.spitter_calls(0.1, 0.44),
        dying_sound = sounds.spitter_dying(0.45),
        walking_sound = sounds.spitter_walk(0, 0.3),
        run_animation = spitterrunanimation(data.scale, data.layer_1, data.layer_2),
        damaged_trigger_effect = hit_effects.biter(),
        running_sound_animation_positions = { 2 },
        ai_settings = biter_ai_settings,
        water_reflection = spitter_water_reflection(data.scale)
    }
end

Public.common.make_heavy_gunshot_sounds = function()
    return {
        {
            filename = '__base__/sound/fight/heavy-gunshot-1.ogg',
            volume = 0.45
        },
        {
            filename = '__base__/sound/fight/heavy-gunshot-2.ogg',
            volume = 0.45
        },
        {
            filename = '__base__/sound/fight/heavy-gunshot-3.ogg',
            volume = 0.45
        },
        {
            filename = '__base__/sound/fight/heavy-gunshot-4.ogg',
            volume = 0.45
        }
    }
end

Public.common.rock_autoplace_settings = function(multiplier, order_suffix, rectangle)
    return {
        order = 'a[doodad]-a[rock]-' .. order_suffix,
        probability_expression = "multiplier * control * (region_box + rock_density - penalty)",
        local_expressions =
        {
            multiplier = 0.07,
            penalty = 1.7,
            region_box = "range_select_base(moisture, 0.35, 1, 0.2, -10, 0)",
            control = "control:rocks:size"
        }
    }
end

function Public.sound_entity_higher(offset_deviation, offset)
    offset = offset or { 0, 1.5 }
    return {
        type = 'create-entity',
        entity_name = 'spark-explosion-higher',
        offset_deviation = offset_deviation or { { -0.5, -0.5 }, { 0.5, 0.5 } },
        offsets = { offset },
        damage_type_filters = 'fire'
    }
end

function Public.tint_icon_crafting_grid(name, inputs)
    local inputs_copy = util.copy(inputs)
    inputs_copy.icon_size = inputs.icon_size or 64

    local folder_path = inputs_copy.group
    if inputs_copy.subgroup then
        folder_path = inputs_copy.group .. "/" .. inputs_copy.subgroup
    end

    local icon_tint = inputs_copy.tint
    if inputs_copy.untinted_icon_mask then
        icon_tint = nil
    elseif not inputs_copy.tint then
        inputs_copy.untinted_icon_mask = true
    end

    local icon_layers
    if inputs_copy.icon_filename then
        icon_layers = inputs_copy.icon_layers or 1
    else
        icon_layers = inputs_copy.icon_layers or 3
    end

    local icon_base = inputs_copy.icon_base or inputs_copy.icon_name
    local icon_mask = inputs_copy.icon_mask or inputs_copy.icon_name
    local icon_highlights = inputs_copy.icon_highlights or inputs_copy.icon_name

    local icon_base_layer = {
        icon = inputs_copy.icon_filename or
            Public.mod_prefix ..
            "/graphics/reskins/icons/" ..
            folder_path .. "/" .. inputs_copy.icon_name .. "/" .. icon_base .. "-icon-base.png",
        icon_size = inputs_copy.icon_size,
    }

    local icon_mask_layer, icon_highlights_layer
    if icon_layers > 1 then
        icon_mask_layer = {
            icon = inputs_copy.icon_filename or Public.mod_prefix ..
                "/graphics/reskins/icons/" ..
                folder_path .. "/" .. inputs_copy.icon_name .. "/" .. icon_mask .. "-icon-mask.png",
            icon_size = inputs_copy.icon_size,
            tint = icon_tint,
        }

        icon_highlights_layer = {
            icon = inputs_copy.icon_filename or Public.mod_prefix ..
                "/graphics/reskins/icons/" ..
                folder_path .. "/" .. inputs_copy.icon_name .. "/" .. icon_highlights .. "-icon-highlights.png",
            icon_size = inputs_copy.icon_size,
            tint = { 1, 1, 1, 0 },
        }
    end

    local icon_data = { icon_base_layer }

    if icon_layers > 1 then
        table.insert(icon_data, icon_mask_layer)
    end

    if icon_layers > 2 then
        table.insert(icon_data, icon_highlights_layer)
    end

    local pictures = create_sprite(icon_data, 1.0)

    if inputs_copy.icon_extras then
        for n = 1, #inputs_copy.icon_extras do
            table.insert(icon_data, inputs_copy.icon_extras[n])
        end
    end

    if inputs_copy.icon_picture_extras then
        if not pictures.layers then
            pictures = {
                layers = { pictures },
            }
        end

        for n = 1, #inputs_copy.icon_picture_extras do
            table.insert(pictures.layers, inputs_copy.icon_picture_extras[n])
        end
    end

    local new_icon_data = {}
    for n = 1, #icon_data do
        new_icon_data[n] = check_missing_icons(icon_data[n])
    end

    local item = data.raw["item"][name]
    if item then
        item.icons = new_icon_data
        item.pictures = pictures
    end
    local armor = data.raw["armor"][name]
    if armor then
        armor.icons = new_icon_data
        armor.pictures = pictures
    end
end

function Public.accumulator_picture_tinted(inputs, repeat_count)
    return {
        layers = {
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/accumulator/wires/accumulator-' ..
                    inputs.wire .. '.png',
                priority = 'high',
                width = 130,
                height = 189,
                repeat_count = repeat_count,
                shift = util.by_pixel(0, -11),
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/accumulator/accumulator-mask.png',
                priority = 'high',
                width = 130,
                height = 189,
                repeat_count = repeat_count,
                shift = util.by_pixel(0, -11),
                tint = inputs.tint,
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/accumulator/accumulator-highlights.png',
                priority = 'high',
                width = 130,
                height = 189,
                repeat_count = repeat_count,
                shift = util.by_pixel(0, -11),
                blend_mode = 'additive',
                scale = 0.5,
            },
            {
                filename = '__base__/graphics/entity/accumulator/accumulator-shadow.png',
                priority = 'high',
                width = 234,
                height = 106,
                repeat_count = repeat_count,
                shift = util.by_pixel(29, 6),
                draw_as_shadow = true,
                scale = 0.5,
            },
        },
    }
end

function Public.accumulator_charge_tinted(inputs)
    return {
        layers = {
            Public.accumulator_picture_tinted(inputs, 24),
            {
                filename = '__base__/graphics/entity/accumulator/accumulator-charge.png',
                priority = 'high',
                width = 178,
                height = 206,
                line_length = 6,
                frame_count = 24,
                draw_as_glow = true,
                shift = util.by_pixel(0, -22),
                scale = 0.5,
            },
        },
    }
end

function Public.accumulator_discharge_tinted(inputs)
    return {
        layers = {
            Public.accumulator_picture_tinted(inputs, 24),
            {
                filename = '__base__/graphics/entity/accumulator/accumulator-discharge.png',
                priority = 'high',
                width = 170,
                height = 210,
                line_length = 6,
                frame_count = 24,
                draw_as_glow = true,
                shift = util.by_pixel(-1, -23),
                scale = 0.5,
            },
        },
    }
end

function Public.customize_boiler(entity, inputs)
    entity.pictures.north.structure = {
        layers = {
            {
                filename = '__base__/graphics/entity/boiler/boiler-N-idle.png',
                priority = 'extra-high',
                width = 269,
                height = 221,
                shift = util.by_pixel(-1.25, 5.25),
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/boiler/boiler-N-idle-mask.png',
                priority = 'extra-high',
                width = 269,
                height = 221,
                shift = util.by_pixel(-1.25, 5.25),
                tint = inputs.tint,
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/boiler/boiler-N-idle-highlights.png',
                priority = 'extra-high',
                width = 269,
                height = 221,
                shift = util.by_pixel(-1.25, 5.25),
                blend_mode = 'additive',
                scale = 0.5,
            },
            {
                filename = '__base__/graphics/entity/boiler/boiler-N-shadow.png',
                priority = 'extra-high',
                width = 274,
                height = 164,
                scale = 0.5,
                shift = util.by_pixel(20.5, 9),
                draw_as_shadow = true,
            },
        },
    }

    entity.pictures.east.structure = {
        layers = {
            {
                filename = '__base__/graphics/entity/boiler/boiler-E-idle.png',
                priority = 'extra-high',
                width = 216,
                height = 301,
                shift = util.by_pixel(-3, 1.25),
                scale = 0.5,
            },
            -- Color mask
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/boiler/boiler-E-idle-mask.png',
                priority = 'extra-high',
                width = 216,
                height = 301,
                shift = util.by_pixel(-3, 1.25),
                tint = inputs.tint,
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/boiler/boiler-E-idle-highlights.png',
                priority = 'extra-high',
                width = 216,
                height = 301,
                shift = util.by_pixel(-3, 1.25),
                blend_mode = 'additive',
                scale = 0.5,
            },
            {
                filename = '__base__/graphics/entity/boiler/boiler-E-shadow.png',
                priority = 'extra-high',
                width = 184,
                height = 194,
                scale = 0.5,
                shift = util.by_pixel(30, 9.5),
                draw_as_shadow = true,
            },
        },
    }

    entity.pictures.south.structure = {
        layers = {
            {
                filename = '__base__/graphics/entity/boiler/boiler-S-idle.png',
                priority = 'extra-high',
                width = 260,
                height = 192,
                shift = util.by_pixel(4, 13),
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/boiler/boiler-S-idle-mask.png',
                priority = 'extra-high',
                width = 260,
                height = 192,
                shift = util.by_pixel(4, 13),
                tint = inputs.tint,
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/boiler/boiler-S-idle-highlights.png',
                priority = 'extra-high',
                width = 260,
                height = 192,
                shift = util.by_pixel(4, 13),
                blend_mode = 'additive',
                scale = 0.5,
            },
            {
                filename = '__base__/graphics/entity/boiler/boiler-S-shadow.png',
                priority = 'extra-high',
                width = 311,
                height = 131,
                scale = 0.5,
                shift = util.by_pixel(29.75, 15.75),
                draw_as_shadow = true,
            },
        },
    }

    entity.pictures.west.structure = {
        layers = {
            {
                filename = '__base__/graphics/entity/boiler/boiler-W-idle.png',
                priority = 'extra-high',
                width = 196,
                height = 273,
                shift = util.by_pixel(1.5, 7.75),
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/boiler/boiler-W-idle-mask.png',
                priority = 'extra-high',
                width = 196,
                height = 273,
                shift = util.by_pixel(1.5, 7.75),
                tint = inputs.tint,
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/boiler/boiler-W-idle-highlights.png',
                priority = 'extra-high',
                width = 196,
                height = 273,
                shift = util.by_pixel(1.5, 7.75),
                blend_mode = 'additive',
                scale = 0.5,
            },
            {
                filename = '__base__/graphics/entity/boiler/boiler-W-shadow.png',
                priority = 'extra-high',
                width = 206,
                height = 218,
                scale = 0.5,
                shift = util.by_pixel(19.5, 6.5),
                draw_as_shadow = true,
            },
        },
    }

    -- Handle ambient-light
    entity.energy_source.light_flicker = {
        color = { 0, 0, 0 },
        minimum_light_size = 0,
        light_intensity_to_size_coefficient = 0,
    }
end

function Public.customize_engine(entity, inputs)
    entity.horizontal_animation = {
        layers = {
            {
                filename = '__base__/graphics/entity/steam-engine/steam-engine-H.png',
                width = 352,
                height = 257,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(1, -4.75),
                scale = 0.5,
            },
            -- Color Mask
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/steam-engine/steam-engine-H-mask.png',
                width = 352,
                height = 257,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(1, -4.75),
                tint = inputs.tint,
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix ..
                    '/graphics/reskins/entity/power/steam-engine/steam-engine-H-highlights.png',
                width = 352,
                height = 257,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(1, -4.75),
                blend_mode = 'additive',
                scale = 0.5,
            },
            {
                filename = '__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png',
                width = 508,
                height = 160,
                frame_count = 32,
                line_length = 8,
                draw_as_shadow = true,
                shift = util.by_pixel(48, 24),
                scale = 0.5,
            },
        },
    }

    entity.vertical_animation = {
        layers = {
            {
                filename = '__base__/graphics/entity/steam-engine/steam-engine-V.png',
                width = 225,
                height = 391,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(4.75, -6.25),
                scale = 0.5,
            },
            -- Color mask
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/steam-engine/steam-engine-V-mask.png',
                width = 225,
                height = 391,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(4.75, -6.25),
                tint = inputs.tint,
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix ..
                    '/graphics/reskins/entity/power/steam-engine/steam-engine-V-highlights.png',
                width = 225,
                height = 391,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(4.75, -6.25),
                blend_mode = 'additive',
                scale = 0.5,
            },
            {
                filename = '__base__/graphics/entity/steam-engine/steam-engine-V-shadow.png',
                width = 330,
                height = 307,
                frame_count = 32,
                line_length = 8,
                draw_as_shadow = true,
                shift = util.by_pixel(40.5, 9.25),
                scale = 0.5,
            },
        },
    }
end

function Public.customize_solar_panels(entity, inputs)
    entity.picture = {
        layers = {
            {
                filename = '__base__/graphics/entity/solar-panel/solar-panel.png',
                priority = 'high',
                width = 230,
                height = 224,
                shift = util.by_pixel(-3, 3.5),
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/solar-panel/solar-panel-mask.png',
                priority = 'high',
                width = 230,
                height = 224,
                shift = util.by_pixel(-3, 3.5),
                tint = inputs.tint,
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix .. '/graphics/reskins/entity/power/solar-panel/solar-panel-highlights.png',
                priority = 'high',
                width = 230,
                height = 224,
                shift = util.by_pixel(-3, 3.5),
                blend_mode = 'additive',
                scale = 0.5,
            },
            {
                filename = '__base__/graphics/entity/solar-panel/solar-panel-shadow.png',
                priority = 'high',
                width = 220,
                height = 180,
                shift = util.by_pixel(9.5, 6),
                draw_as_shadow = true,
                scale = 0.5,
            },
        },
    }

    entity.overlay = {
        layers = {
            {
                filename = '__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png',
                priority = 'high',
                width = 214,
                height = 180,
                shift = util.by_pixel(10.5, 6),
                scale = 0.5,
            },
        },
    }
end

function Public.customize_equipment(equipment, inputs)
    equipment.sprite = {
        layers = {
            {
                filename = Public.mod_prefix ..
                    '/graphics/reskins/equipment/equipment/' ..
                    inputs.icon_name .. '/' .. inputs.icon_name .. '-equipment-base.png',
                width = inputs.width or 64,
                height = inputs.height or 128,
                priority = 'medium',
                flags = { 'no-crop' },
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix ..
                    '/graphics/reskins/equipment/equipment/' ..
                    inputs.icon_name .. '/' .. inputs.icon_name .. '-equipment-mask.png',
                width = inputs.width or 64,
                height = inputs.height or 128,
                priority = 'medium',
                flags = { 'no-crop' },
                tint = inputs.tint,
                scale = 0.5,
            },
            {
                filename = Public.mod_prefix ..
                    '/graphics/reskins/equipment/equipment/' ..
                    inputs.icon_name .. '/' .. inputs.icon_name .. '-equipment-highlights.png',
                width = inputs.width or 64,
                height = inputs.height or 128,
                priority = 'medium',
                flags = { 'no-crop' },
                blend_mode = 'additive',
                scale = 0.5,
            },
        },
    }
end

function Public.customize_character(character, inputs)
    local anim =
    {
        dead =
        {
            filename = "__base__/graphics/entity/character/level3addon_dead.png",
            width = 88,
            height = 68,
            shift = util.by_pixel(-0.5, -5.0),
            frame_count = 2,
            apply_runtime_tint = true,
            tint = inputs.tint,
            blend_mode = 'additive',
            scale = 0.5,
            usage = "player"
        },
        dead_mask =
        {
            filename = "__base__/graphics/entity/character/level3addon_dead_mask.png",
            width = 72,
            height = 60,
            shift = util.by_pixel(3.0, -3.5),
            frame_count = 2,
            scale = 0.5,
            usage = "player"
        },
        idle =
        {
            filename = "__base__/graphics/entity/character/level3addon_idle.png",
            width = 74,
            height = 86,
            shift = util.by_pixel(0.0, -28.0),
            frame_count = 22,
            direction_count = 8,
            animation_speed = 0.15,
            tint = inputs.tint,
            blend_mode = 'additive',
            scale = 0.5,
            usage = "player"
        },
        idle_mask =
        {
            priority = "high",
            filename = "__base__/graphics/entity/character/level3addon_idle_mask.png",
            width = 74,
            height = 72,
            shift = util.by_pixel(0.0, -31.5),
            frame_count = 22,
            direction_count = 8,
            animation_speed = 0.15,
            apply_runtime_tint = true,
            scale = 0.5,
            usage = "player"
        },
        idle_shadow =
        {
            filename = "__base__/graphics/entity/character/level3addon_idle_shadow.png",
            width = 132,
            height = 64,
            shift = util.by_pixel(38.5, 0.0),
            frame_count = 22,
            direction_count = 8,
            animation_speed = 0.15,
            draw_as_shadow = true,
            scale = 0.5,
            usage = "player"
        },
        idle_gun =
        {
            filename = "__base__/graphics/entity/character/level3addon_idle_gun.png",
            width = 78,
            height = 88,
            shift = util.by_pixel(0.0, -24.5),
            frame_count = 22,
            direction_count = 8,
            animation_speed = 0.15,
            tint = inputs.tint,
            blend_mode = 'additive',
            scale = 0.5,
            usage = "player"
        },
        idle_gun_mask =
        {
            priority = "high",
            filename = "__base__/graphics/entity/character/level3addon_idle_gun_mask.png",
            width = 76,
            height = 68,
            shift = util.by_pixel(0.0, -28.5),
            frame_count = 22,
            direction_count = 8,
            animation_speed = 0.15,
            apply_runtime_tint = true,
            scale = 0.5,
            usage = "player"
        },
        idle_gun_shadow =
        {
            filename = "__base__/graphics/entity/character/level3addon_idle_gun_shadow.png",
            width = 130,
            height = 64,
            shift = util.by_pixel(33.5, 0.0),
            frame_count = 22,
            direction_count = 8,
            animation_speed = 0.15,
            draw_as_shadow = true,
            scale = 0.5,
            usage = "player"
        },
        mining_tool =
        {
            filename = "__base__/graphics/entity/character/level3addon_mining_tool.png",
            width = 144,
            height = 124,
            shift = util.by_pixel(0.0, -21.5),
            frame_count = 26,
            direction_count = 8,
            animation_speed = 0.9,
            tint = inputs.tint,
            blend_mode = 'additive',
            scale = 0.5,
            usage = "player"
        },
        mining_tool_mask =
        {
            priority = "high",
            filename = "__base__/graphics/entity/character/level3addon_mining_tool_mask.png",
            width = 138,
            height = 112,
            shift = util.by_pixel(0.0, -24.0),
            frame_count = 26,
            direction_count = 8,
            animation_speed = 0.9,
            apply_runtime_tint = true,
            scale = 0.5,
            usage = "player"
        },
        mining_tool_shadow =
        {
            stripes =
            {
                {
                    filename = "__base__/graphics/entity/character/level3addon_mining_tool_shadow-1.png",
                    width_in_frames = 13,
                    height_in_frames = 8
                },
                {
                    filename = "__base__/graphics/entity/character/level3addon_mining_tool_shadow-2.png",
                    width_in_frames = 13,
                    height_in_frames = 8
                }
            },
            width = 184,
            height = 116,
            shift = util.by_pixel(30.0, 0.0),
            frame_count = 26,
            direction_count = 8,
            animation_speed = 0.9,
            draw_as_shadow = true,
            scale = 0.5,
            usage = "player"
        },
        running =
        {
            filename = "__base__/graphics/entity/character/level3addon_running.png",
            width = 80,
            height = 108,
            shift = util.by_pixel(0.0, -25.0),
            frame_count = 22,
            direction_count = 8,
            animation_speed = 0.6,
            tint = inputs.tint,
            blend_mode = 'additive',
            scale = 0.5,
            usage = "player"
        },
        running_mask =
        {
            priority = "high",
            filename = "__base__/graphics/entity/character/level3addon_running_mask.png",
            width = 78,
            height = 88,
            shift = util.by_pixel(0.0, -28.5),
            frame_count = 22,
            direction_count = 8,
            animation_speed = 0.6,
            apply_runtime_tint = true,
            scale = 0.5,
            usage = "player"
        },
        running_shadow =
        {
            filename = "__base__/graphics/entity/character/level3addon_running_shadow.png",
            width = 168,
            height = 68,
            shift = util.by_pixel(38.0, 2.5),
            frame_count = 22,
            direction_count = 8,
            animation_speed = 0.6,
            draw_as_shadow = true,
            scale = 0.5,
            usage = "player"
        },
        running_gun =
        {
            filename = "__base__/graphics/entity/character/level3addon_running_gun.png",
            width = 76,
            height = 96,
            shift = util.by_pixel(0.5, -24.5),
            frame_count = 22,
            direction_count = 18,
            animation_speed = 0.6,
            tint = inputs.tint,
            blend_mode = 'additive',
            scale = 0.5,
            usage = "player"
        },
        running_gun_mask =
        {
            priority = "high",
            filename = "__base__/graphics/entity/character/level3addon_running_gun_mask.png",
            width = 74,
            height = 74,
            shift = util.by_pixel(0.5, -29.5),
            frame_count = 22,
            direction_count = 18,
            animation_speed = 0.6,
            apply_runtime_tint = true,
            scale = 0.5,
            usage = "player"
        },
        running_gun_shadow =
        {
            filename = "__base__/graphics/entity/character/level3addon_running_gun_shadow.png",
            width = 136,
            height = 64,
            shift = util.by_pixel(36.0, 0.5),
            frame_count = 22,
            direction_count = 18,
            animation_speed = 0.6,
            draw_as_shadow = true,
            scale = 0.5,
            usage = "player"
        },
        running_gun_shadow_flipped =
        {
            filename = "__base__/graphics/entity/character/level3addon_running_gun_shadow_flipped.png",
            line_length = 22,
            width = 142,
            height = 64,
            shift = util.by_pixel(33.5, 0.5),
            frame_count = 22,
            direction_count = 18,
            animation_speed = 0.6,
            draw_as_shadow = true,
            scale = 0.5,
            usage = "player"
        }
    }

    table.insert(character.animations,
        {
            armors = { inputs.icon_name },
            idle =
            {
                layers =
                {
                    character_animations.level1.idle,
                    character_animations.level1.idle_mask,
                    anim.idle,
                    anim.idle_mask,
                    character_animations.level1.idle_shadow,
                    anim.idle_shadow
                }
            },
            idle_with_gun =
            {
                layers =
                {
                    character_animations.level1.idle_gun,
                    character_animations.level1.idle_gun_mask,
                    anim.idle_gun,
                    anim.idle_gun_mask,
                    character_animations.level1.idle_gun_shadow,
                    anim.idle_gun_shadow
                }
            },
            mining_with_tool =
            {
                layers =
                {
                    character_animations.level1.mining_tool,
                    character_animations.level1.mining_tool_mask,
                    anim.mining_tool,
                    anim.mining_tool_mask,
                    character_animations.level1.mining_tool_shadow,
                    anim.mining_tool_shadow
                }
            },
            running_with_gun =
            {
                layers =
                {
                    character_animations.level1.running_gun,
                    character_animations.level1.running_gun_mask,
                    anim.running_gun,
                    anim.running_gun_mask,
                    character_animations.level1.running_gun_shadow,
                    anim.running_gun_shadow
                }
            },
            flipped_shadow_running_with_gun =
            {
                layers =
                {
                    character_animations.level1.running_gun_shadow_flipped,
                    anim.running_gun_shadow_flipped
                }
            },
            running =
            {
                layers =
                {
                    character_animations.level1.running,
                    character_animations.level1.running_mask,
                    anim.running,
                    anim.running_mask,
                    character_animations.level1.running_shadow,
                    anim.running_shadow
                }
            }
        }
    )
end

return Public
