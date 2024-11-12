local Public = require 'common'

function Public.metal_scrap()
    return math.random(0.5, 1)
end

function Public.make_unit_melee_ammo_type(value)
    if not value then
        return
    end
    return {
        category = 'melee',
        target_type = 'entity',
        action = {
            type = 'direct',
            action_delivery = {
                type = 'instant',
                target_effects = {
                    type = 'damage',
                    damage = { amount = value, type = 'physical' }
                }
            }
        }
    }
end

function Public.biter_roars(volume)
    return {
        {
            filename = '__base__/sounds/creatures/biter-roar-1.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-roar-2.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-roar-3.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-roar-4.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-roar-4.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-roar-5.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-roar-6.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-roar-7.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-roar-8.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-roar-9.ogg',
            volume = volume
        }
    }
end

function Public.biter_calls(volume)
    return {
        sound = {
            {
                filename = '__base__/sounds/creatures/biter-call-1.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-call-3.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-call-5.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-call-6.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-call-7.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-call-8.ogg',
                volume = volume
            }
        },
        probability = 1 / (4 * 60),
        max_sounds_per_type = 2
    }
end

function Public.biter_dying(volume)
    return {
        {
            filename = '__base__/sounds/creatures/biter-death-1.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-death-2.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-death-3.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-death-4.ogg',
            volume = volume
        },
        {
            filename = '__base__/sounds/creatures/biter-death-5.ogg',
            volume = volume
        }
    }
end

function Public.biter_walk(volume)
    return {
        aggregation = {
            max_count = 2,
            remove = true
        },
        variations = {
            {
                filename = '__base__/sounds/creatures/biter-walk-1.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-walk-2.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-walk-3.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-walk-4.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-walk-5.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-walk-6.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-walk-7.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-walk-8.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-walk-9.ogg',
                volume = volume
            },
            {
                filename = '__base__/sounds/creatures/biter-walk-10.ogg',
                volume = volume
            }
        }
    }
end

function Public.biterattackanimation(scale, tint1, tint2)
    return {
        layers = {
            {
                filenames = {
                    '__base__/graphics/entity/biter/biter-attack-01.png',
                    '__base__/graphics/entity/biter/biter-attack-02.png',
                    '__base__/graphics/entity/biter/biter-attack-03.png',
                    '__base__/graphics/entity/biter/biter-attack-04.png'
                },
                slice = 11,
                lines_per_file = 4,
                line_length = 16,
                width = 182,
                height = 176,
                frame_count = 11,
                direction_count = 16,
                animation_speed = 0.4,
                shift = util.mul_shift(util.by_pixel(-2, -26), scale),
                scale = scale,
                hr_version = {
                    filenames = {
                        '__base__/graphics/entity/biter/hr-biter-attack-01.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-02.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-03.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-04.png'
                    },
                    slice = 11,
                    lines_per_file = 4,
                    line_length = 16,
                    width = 356,
                    height = 348,
                    frame_count = 11,
                    shift = util.mul_shift(util.by_pixel(0, -25), scale),
                    direction_count = 16,
                    animation_speed = 0.4,
                    scale = 0.5 * scale
                }
            },
            {
                filenames = {
                    '__base__/graphics/entity/biter/biter-attack-mask1-01.png',
                    '__base__/graphics/entity/biter/biter-attack-mask1-02.png',
                    '__base__/graphics/entity/biter/biter-attack-mask1-03.png',
                    '__base__/graphics/entity/biter/biter-attack-mask1-04.png'
                },
                slice = 11,
                lines_per_file = 4,
                flags = { 'mask' },
                line_length = 16,
                width = 178,
                height = 144,
                frame_count = 11,
                direction_count = 16,
                animation_speed = 0.4,
                shift = util.mul_shift(util.by_pixel(0, -42), scale),
                scale = scale,
                tint = tint1,
                hr_version = {
                    filenames = {
                        '__base__/graphics/entity/biter/hr-biter-attack-mask1-01.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-mask1-02.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-mask1-03.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-mask1-04.png'
                    },
                    slice = 11,
                    lines_per_file = 4,
                    line_length = 16,
                    width = 360,
                    height = 282,
                    frame_count = 11,
                    shift = util.mul_shift(util.by_pixel(-1, -41), scale),
                    direction_count = 16,
                    animation_speed = 0.4,
                    scale = 0.5 * scale,
                    tint = tint1
                }
            },
            {
                filenames = {
                    '__base__/graphics/entity/biter/biter-attack-mask2-01.png',
                    '__base__/graphics/entity/biter/biter-attack-mask2-02.png',
                    '__base__/graphics/entity/biter/biter-attack-mask2-03.png',
                    '__base__/graphics/entity/biter/biter-attack-mask2-04.png'
                },
                slice = 11,
                lines_per_file = 4,
                flags = { 'mask' },
                line_length = 16,
                width = 182,
                height = 144,
                frame_count = 11,
                direction_count = 16,
                animation_speed = 0.4,
                shift = util.mul_shift(util.by_pixel(-2, -42), scale),
                scale = scale,
                tint = tint2,
                hr_version = {
                    filenames = {
                        '__base__/graphics/entity/biter/hr-biter-attack-mask2-01.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-mask2-02.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-mask2-03.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-mask2-04.png'
                    },
                    slice = 11,
                    lines_per_file = 4,
                    line_length = 16,
                    width = 358,
                    height = 282,
                    frame_count = 11,
                    shift = util.mul_shift(util.by_pixel(-1, -41), scale),
                    direction_count = 16,
                    animation_speed = 0.4,
                    scale = 0.5 * scale,
                    tint = tint2
                }
            },
            {
                filenames = {
                    '__base__/graphics/entity/biter/biter-attack-shadow-01.png',
                    '__base__/graphics/entity/biter/biter-attack-shadow-02.png',
                    '__base__/graphics/entity/biter/biter-attack-shadow-03.png',
                    '__base__/graphics/entity/biter/biter-attack-shadow-04.png'
                },
                slice = 11,
                lines_per_file = 4,
                line_length = 16,
                width = 240,
                height = 128,
                frame_count = 11,
                shift = util.mul_shift(util.by_pixel(30, 0), scale),
                direction_count = 16,
                animation_speed = 0.4,
                scale = scale,
                draw_as_shadow = true,
                hr_version = {
                    filenames = {
                        '__base__/graphics/entity/biter/hr-biter-attack-shadow-01.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-shadow-02.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-shadow-03.png',
                        '__base__/graphics/entity/biter/hr-biter-attack-shadow-04.png'
                    },
                    slice = 11,
                    lines_per_file = 4,
                    line_length = 16,
                    width = 476,
                    height = 258,
                    frame_count = 11,
                    shift = util.mul_shift(util.by_pixel(31, -1), scale),
                    direction_count = 16,
                    animation_speed = 0.4,
                    scale = 0.5 * scale,
                    draw_as_shadow = true
                }
            }
        }
    }
end

function Public.biter_water_reflection(scale)
    return {
        pictures = {
            filename = '__base__/graphics/entity/biter/biter-reflection.png',
            priority = 'extra-high',
            width = 20,
            height = 28,
            shift = util.by_pixel(5, 15),
            scale = 5 * scale,
            variation_count = 1
        },
        rotate = true,
        orientation_to_variation = false
    }
end

return Public
