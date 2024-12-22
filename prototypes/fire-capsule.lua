local Public = require 'common'
local sounds = require('__base__.prototypes.entity.sounds')
local tints = require 'utils.layers'.tints
local item_sounds = require('__base__.prototypes.item_sounds')

data:extend {
    {
        type = 'smoke-with-trigger',
        name = 'fire-cloud-visual-dummy',
        flags = {'not-on-map'},
        hidden = true,
        show_when_smoke_off = true,
        particle_count = 24,
        particle_spread = {3.6 * 1.05, 3.6 * 0.6 * 1.05},
        particle_distance_scale_factor = 0.5,
        particle_scale_factor = {1, 0.707},
        particle_duration_variation = 60 * 3,
        wave_speed = {0.5 / 80, 0.5 / 60},
        wave_distance = {1, 0.5},
        spread_duration_variation = 300 - 20,
        render_layer = 'object',
        affected_by_wind = false,
        cyclic = true,
        duration = 60 * 20 + 4 * 60,
        fade_away_duration = 3 * 60,
        spread_duration = (300 - 20) / 2,
        color = {201, 48, 48, 0.322}, -- #c93030
        animation = {
            width = 152,
            height = 120,
            line_length = 5,
            frame_count = 60,
            shift = {-0.53125, -0.4375},
            priority = 'high',
            animation_speed = 0.25,
            filename = '__base__/graphics/entity/smoke/smoke.png',
            flags = {'smoke'}
        },
        working_sound = {
            sound = {filename = '__base__/sound/fight/poison-cloud.ogg', volume = 0.5},
            max_sounds_per_type = 1,
            audible_distance_modifier = 0.8,
            match_volume_to_activity = true
        }
    }
}

data:extend {
    {
        name = 'fire-cloud',
        type = 'smoke-with-trigger',
        flags = {'not-on-map'},
        hidden = true,
        show_when_smoke_off = true,
        particle_count = 16,
        particle_spread = {3.6 * 1.05, 3.6 * 0.6 * 1.05},
        particle_distance_scale_factor = 0.5,
        particle_scale_factor = {1, 0.707},
        wave_speed = {1 / 80, 1 / 60},
        wave_distance = {0.3, 0.2},
        spread_duration_variation = 20,
        particle_duration_variation = 60 * 3,
        render_layer = 'object',
        affected_by_wind = false,
        cyclic = true,
        duration = 60 * 20,
        fade_away_duration = 2 * 60,
        spread_duration = 20,
        color = {209, 37, 37, 0.690}, -- #d12525
        animation = {
            width = 152,
            height = 120,
            line_length = 5,
            frame_count = 60,
            shift = {-0.53125, -0.4375},
            priority = 'high',
            animation_speed = 0.25,
            filename = '__base__/graphics/entity/smoke/smoke.png',
            flags = {'smoke'}
        },
        created_effect = {
            {
                type = 'cluster',
                cluster_count = 10,
                distance = 4,
                distance_deviation = 5,
                action_delivery = {
                    type = 'instant',
                    target_effects = {
                        {
                            type = 'create-smoke',
                            show_in_tooltip = false,
                            entity_name = 'fire-cloud-visual-dummy',
                            initial_height = 0
                        },
                        {
                            type = 'play-sound',
                            sound = sounds.poison_capsule_explosion
                        }
                    }
                }
            },
            {
                type = 'cluster',
                cluster_count = 11,
                distance = 8 * 1.1,
                distance_deviation = 2,
                action_delivery = {
                    type = 'instant',
                    target_effects = {
                        {
                            type = 'create-smoke',
                            show_in_tooltip = false,
                            entity_name = 'fire-cloud-visual-dummy',
                            initial_height = 0
                        }
                    }
                }
            }
        },
        action = {
            type = 'direct',
            action_delivery = {
                type = 'instant',
                target_effects = {
                    type = 'nested-result',
                    action = {
                        type = 'area',
                        radius = 11,
                        entity_flags = {'breaths-air'},
                        action_delivery = {
                            type = 'instant',
                            target_effects = {
                                type = 'damage',
                                damage = {amount = 8, type = 'fire'}
                            }
                        }
                    }
                }
            }
        },
        action_cooldown = 30
    }
}

data:extend {
    {
        type = 'projectile',
        name = 'fire-capsule',
        flags = {'not-on-map'},
        hidden = true,
        acceleration = 0.005,
        action = {
            {
                type = 'direct',
                action_delivery = {
                    type = 'instant',
                    target_effects = {
                        {
                            type = 'create-smoke',
                            show_in_tooltip = true,
                            entity_name = 'fire-cloud',
                            initial_height = 0
                        },
                        {
                            type = 'create-particle',
                            particle_name = 'flame-thrower-turret-metal-particle-big',
                            repeat_count = 8,
                            initial_height = 1,
                            initial_vertical_speed = 0.1,
                            initial_vertical_speed_deviation = 0.05,
                            offset_deviation = {{-0.1, -0.1}, {0.1, 0.1}},
                            speed_from_center = 0.05,
                            speed_from_center_deviation = 0.01
                        }
                    }
                }
            }
        },
        --light = {intensity = 0.5, size = 4},
        animation = {
            filename = Public.mod_prefix .. '/graphics/icons/fire-capsule.png',
            draw_as_glow = true,
            frame_count = 1,
            line_length = 8,
            animation_speed = 0.250,
            width = 32,
            height = 32,
            priority = 'high',
            scale = 0.5
        },
        shadow = {
            filename = '__base__/graphics/entity/poison-capsule/poison-capsule-shadow.png',
            tint = tints.red,
            frame_count = 16,
            line_length = 8,
            animation_speed = 0.250,
            width = 54,
            height = 42,
            shift = util.by_pixel(1, 2),
            priority = 'high',
            draw_as_shadow = true,
            scale = 0.5
        },
        smoke = {
            {
                name = 'fire-smoke',
                deviation = {0.15, 0.15},
                frequency = 1,
                position = {0, 0},
                starting_frame = 3,
                starting_frame_deviation = 5
            }
        }
    }
}

data:extend {
    {
        type = 'capsule',
        name = 'fire-capsule',
        icons = {
            {
                icon = Public.mod_prefix .. '/graphics/icons/fire-capsule.png',
                icon_size = 64,
                icon_mipmaps = 4
            }
        },
        capsule_action = {
            type = 'throw',
            attack_parameters = {
                type = 'projectile',
                activation_type = 'throw',
                ammo_category = 'capsule',
                cooldown = 30,
                projectile_creation_distance = 0.6,
                range = 25,
                ammo_type = {
                    target_type = 'position',
                    action = {
                        {
                            type = 'direct',
                            action_delivery = {
                                type = 'projectile',
                                projectile = 'fire-capsule',
                                starting_speed = 0.3
                            }
                        },
                        {
                            type = 'direct',
                            action_delivery = {
                                type = 'instant',
                                target_effects = {
                                    {
                                        type = 'play-sound',
                                        sound = sounds.throw_projectile
                                    }
                                }
                            }
                        }
                    }
                }
            }
        },
        subgroup = 'capsule',
        order = 'b[fire-capsule]',
        inventory_move_sound = item_sounds.grenade_inventory_move,
        pick_sound = item_sounds.grenade_inventory_pickup,
        drop_sound = item_sounds.grenade_inventory_move,
        stack_size = 100,
        weight = 10 * kg
    }
}
