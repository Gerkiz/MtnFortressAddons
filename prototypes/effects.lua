local Public = require 'common'

data:extend(
    {
        {
            type = 'sticker',
            name = 'raw-poison-damage-sticker',
            flags = {'not-on-map'},
            animation = {
                filename = '__base__/graphics/entity/fire-flame/fire-flame-03.png',
                line_length = 8,
                width = 65,
                height = 108,
                frame_count = 25,
                direction_count = 1,
                blend_mode = 'additive',
                animation_speed = 1,
                scale = 0.4,
                tint = {r = 0.1, g = 0.5, b = 0.1}
            },
            duration_in_ticks = 30 * 60,
            damage_interval = 10,
            target_movement_modifier = 0.8,
            damage_per_tick = {amount = 8, type = 'poison'}
        },
        {
            name = 'small-poison-cloud',
            action = {
                action_delivery = {
                    target_effects = {
                        action = {
                            action_delivery = {
                                target_effects = {
                                    damage = {
                                        amount = 4,
                                        type = 'poison'
                                    },
                                    type = 'damage'
                                },
                                type = 'instant'
                            },
                            entity_flags = {
                                'breaths-air'
                            },
                            radius = 4,
                            type = 'area'
                        },
                        type = 'nested-result'
                    },
                    type = 'instant'
                },
                type = 'direct'
            },
            action_cooldown = 30,
            affected_by_wind = false,
            animation = {
                animation_speed = 0.25,
                filename = '__base__/graphics/entity/smoke/smoke.png',
                flags = {
                    'smoke'
                },
                frame_count = 60,
                height = 120,
                line_length = 5,
                priority = 'high',
                shift = {
                    -0.53125,
                    -0.4375
                },
                width = 152
            },
            color = {
                a = 0.68999999,
                b = 0.99199999,
                g = 0.872,
                r = 0.23899999
            },
            created_effect = {
                {
                    action_delivery = {
                        type = 'instant',
                        target_effects = {
                            type = 'create-smoke',
                            show_in_tooltip = false,
                            entity_name = 'poison-cloud-visual-dummy',
                            initial_height = 0
                        }
                    },
                    cluster_count = 4,
                    distance = 2,
                    distance_deviation = 1,
                    type = 'cluster'
                }
            },
            cyclic = true,
            duration = 60 * 10,
            fade_away_duration = 60 * 2,
            flags = {
                'not-on-map'
            },
            particle_count = 16,
            particle_distance_scale_factor = 0.5,
            particle_duration_variation = 180,
            particle_scale_factor = {
                1,
                0.70699999
            },
            particle_spread = {
                3.78000000,
                2.26800000
            },
            render_layer = 'object',
            show_when_smoke_off = true,
            spread_duration = 20,
            spread_duration_variation = 20,
            type = 'smoke-with-trigger',
            wave_distance = {
                0.3,
                0.2
            },
            wave_speed = {
                0.0125,
                0.016666666
            }
        },
        {
            type = 'explosion',
            name = 'mtn-atton-turret-trail',
            flags = {'not-on-map', 'placeable-off-grid'},
            random_target_offset = true,
            animation_speed = 1,
            rotate = true,
            beam = true,
            animations = {
                {
                    filename = Public.mod_prefix .. '/graphics/effects/trail.png',
                    priority = 'extra-high',
                    width = 7,
                    height = 90,
                    frame_count = 5
                }
            },
            light = {intensity = 0.1, size = 20},
            smoke = 'smoke-fast',
            smoke_count = 1,
            smoke_slow_down_factor = 1
        }
    }
)
