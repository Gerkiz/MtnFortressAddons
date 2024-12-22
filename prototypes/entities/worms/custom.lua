---@diagnostic disable-next-line: different-requires
local sounds = require('__base__.prototypes.entity.sounds')
local Public = require 'common'

data:extend(
    {
        {
            type = 'turret',
            name = 'mtn-addon-giant-worm-turret',
            icon = '__base__/graphics/icons/big-worm.png',
            icon_size = 64,
            flags = {'placeable-player', 'placeable-enemy', 'not-repairable', 'breaths-air'},
            max_health = 1000,
            order = 'b-b-i',
            subgroup = 'enemies',
            resistances = {
                {
                    type = 'physical',
                    decrease = 20
                },
                {
                    type = 'explosion',
                    decrease = 10,
                    percent = 35
                },
                {
                    type = 'fire',
                    decrease = 3,
                    percent = 70
                },
                {
                    type = 'laser',
                    percent = 70
                }
            },
            graphics_set = {},
            healing_per_tick = 0.03,
            collision_box = {{-2.1, -1.8}, {2.1, 1.8}},
            selection_box = {{-2.1, -1.8}, {2.1, 1.8}},
            map_generator_bounding_box = {{-3.1, -2.8}, {3.1, 2.8}},
            shooting_cursor_size = 6,
            rotation_speed = 1,
            corpse = 'behemoth-worm-corpse',
            dying_explosion = 'blood-explosion-big',
            dying_sound = sounds.worm_dying(1.0),
            folded_speed = 0.01,
            folded_speed_secondary = 0.024,
            folded_animation = worm_folded_animation(Public.scales.giant_scale, Public.layers.giant_worm_layer_1),
            preparing_speed = 0.025,
            preparing_animation = worm_preparing_animation(Public.scales.giant_scale, Public.layers.giant_worm_layer_1, 'forward'),
            preparing_sound = sounds.worm_standup(1),
            prepared_speed = 0.015,
            prepared_speed_secondary = 0.012,
            prepared_animation = worm_prepared_animation(Public.scales.giant_scale, Public.layers.giant_worm_layer_1),
            prepared_sound = sounds.worm_breath(0.8),
            prepared_alternative_speed = 0.014,
            prepared_alternative_speed_secondary = 0.010,
            prepared_alternative_chance = 0.2,
            prepared_alternative_animation = worm_prepared_alternative_animation(Public.scales.giant_scale, Public.layers.giant_worm_layer_1),
            prepared_alternative_sound = sounds.worm_roar_alternative(0.7),
            starting_attack_speed = 0.03,
            starting_attack_animation = worm_start_attack_animation(Public.scales.giant_scale, Public.layers.giant_worm_layer_1),
            starting_attack_sound = sounds.worm_roars(1.0),
            ending_attack_speed = 0.03,
            ending_attack_animation = worm_end_attack_animation(Public.scales.giant_scale, Public.layers.giant_worm_layer_1),
            folding_speed = 0.015,
            folding_animation = worm_preparing_animation(Public.scales.giant_scale, Public.layers.giant_worm_layer_1, 'backward'),
            folding_sound = sounds.worm_fold(1),
            integration = worm_integration(Public.scales.giant_scale),
            random_animation_offset = true,
            attack_from_start_frame = true,
            prepare_range = 70,
            allow_turning_when_starting_attack = true,
            attack_parameters = {
                type = 'stream',
                damage_modifier = 8,
                cooldown = 4,
                range = 42,
                min_range = 0,
                projectile_creation_parameters = worm_shoot_shiftings(Public.scales.giant_scale, Public.scales.giant_scale * scale_worm_stream),
                use_shooter_direction = true,
                lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5,
                ammo_category = 'biological',
                ammo_type = {
                    action = {
                        type = 'direct',
                        action_delivery = {
                            type = 'stream',
                            stream = 'mtn-addon-all-the-streams',
                            source_offset = {0.15, -0.5}
                        }
                    }
                }
            },
            build_base_evolution_requirement = 0.75,
            autoplace = enemy_autoplace.enemy_worm_autoplace('enemy_autoplace_base(8, 5)'),
            call_for_help_radius = 40
        }
    }
)
