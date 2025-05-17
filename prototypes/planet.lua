local Common = require 'common'
local planet_map_gen = require('__base__/prototypes/planet/planet-map-gen')
local effects = require('__core__/lualib/surface-render-parameter-effects')
local procession_graphic_catalogue_types = require('__base__/prototypes/planet/procession-graphic-catalogue-types')
data:extend {
    {
        type = 'trivial-smoke',
        name = 'mtn-smoke',
        duration = 600,
        fade_in_duration = 200,
        fade_away_duration = 200,
        spread_duration = 400,
        start_scale = 1,
        end_scale = 1,
        color = util.color("#CD2E2E"),
        cyclic = true,
        affected_by_wind = true,
        animation = {
            width = 64,
            height = 64,
            line_length = 16,
            frame_count = 16,
            shift = { -0.53125, -0.4375 },
            priority = 'high',
            animation_speed = 0.0001,
            filename = Common.mod_prefix .. '/graphics/terrain/particles.png',
            flags = { 'smoke' }
        }
    }
}

data:extend {
    {
        type = 'planet',
        name = 'fortress',
        icon = '__base__/graphics/icons/nauvis.png',
        starmap_icon = '__base__/graphics/icons/starmap-planet-nauvis.png',
        starmap_icon_size = 512,
        gravity_pull = 10,
        distance = 20,
        orientation = 0.225,
        magnitude = 0.8,
        order = 'g[fortress]',
        map_seed_offset = 0,
        map_gen_settings = planet_map_gen.nauvis(),
        pollutant_type = 'pollution',
        solar_power_in_space = 300,

        surface_properties = {
            ['day-night-cycle'] = 7 * minute
        },
        surface_render_parameters = {
            clouds = effects.default_clouds_effect_properties()
        },
        persistent_ambient_sounds = {
            base_ambience = { filename = '__base__/sound/world/world_base_wind.ogg', volume = 0.3 },
            wind = { filename = '__base__/sound/wind/wind.ogg', volume = 0.8 },
            crossfade = {
                order = { 'wind', 'base_ambience' },
                curve_type = 'cosine',
                from = { control = 0.35, volume_percentage = 0.0 },
                to = { control = 2, volume_percentage = 100.0 }
            }
        },
        procession_graphic_catalogue = {
            {
                index = procession_graphic_catalogue_types.planet_hatch_emission_in_1,
                sprite = util.sprite_load(
                    '__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-A',
                    {
                        priority = 'medium',
                        draw_as_glow = true,
                        blend_mode = 'additive',
                        scale = 0.5,
                        shift = util.by_pixel(-16, 96) --32 x ({0.5, -3.5} + {0, 0.5})
                    }
                )
            },
            {
                index = procession_graphic_catalogue_types.planet_hatch_emission_in_2,
                sprite = util.sprite_load(
                    '__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-B',
                    {
                        priority = 'medium',
                        draw_as_glow = true,
                        blend_mode = 'additive',
                        scale = 0.5,
                        shift = util.by_pixel(-64, 96) --32 x ({2, -3.5} + {0, 0.5})
                    }
                )
            },
            {
                index = procession_graphic_catalogue_types.planet_hatch_emission_in_3,
                sprite = util.sprite_load(
                    '__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-C',
                    {
                        priority = 'medium',
                        draw_as_glow = true,
                        blend_mode = 'additive',
                        scale = 0.5,
                        shift = util.by_pixel(-40, 64) --32 x ({1.25, -2.5} + {0, 0.5})
                    }
                )
            }
        },
        player_effects = {
            type = 'direct',
            action_delivery = {
                type = 'instant',
                source_effects = {
                    type = 'create-trivial-smoke',
                    smoke_name = 'mtn-smoke',
                    speed = { 0, 0.1 },
                    initial_height = 0.5,
                    speed_multiplier = 1,
                    speed_multiplier_deviation = 0.5,
                    starting_frame = 8,
                    starting_frame_deviation = 8,
                    offset_deviation = { { -96, -48 }, { 96, 48 } },
                    speed_from_center = 0.14,
                    speed_from_center_deviation = 0.2
                }
            }
        },
        ticks_between_player_effects = 2
    },
}
