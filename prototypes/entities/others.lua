local tints = require 'utils.layers'.tints
local deepcopy = table.deepcopy

local boiler_mk2 = deepcopy(data.raw['boiler']['boiler'])
boiler_mk2.name = 'boiler-mk2'
boiler_mk2.icons = {
    {
        icon = boiler_mk2.icon,
        tint = tints.mk2
    }
}
boiler_mk2.max_health = 400
boiler_mk2.energy_source.effectivity = 1.5
boiler_mk2.minable = {mining_time = 0.2, result = 'boiler-mk2'}
for _, picture in pairs(boiler_mk2.pictures) do
    if picture then
        for _, direction in pairs(picture) do
            if direction and direction.layers then
                direction.layers[1].tint = tints.mk2
                direction.layers[2].tint = tints.mk2
            end
        end
    end
end
for _, picture in pairs(boiler_mk2.fluid_box.pipe_covers) do
    if picture and picture.layers then
        picture.layers[1].tint = tints.mk2
        picture.layers[2].tint = tints.mk2
    end
end
for _, picture in pairs(boiler_mk2.output_fluid_box.pipe_covers) do
    if picture and picture.layers then
        picture.layers[1].tint = tints.mk2
        picture.layers[2].tint = tints.mk2
    end
end

local boiler_mk3 = deepcopy(data.raw['boiler']['boiler'])
boiler_mk3.name = 'boiler-mk3'
boiler_mk3.icons = {
    {
        icon = boiler_mk3.icon,
        tint = tints.yellow
    }
}
boiler_mk3.max_health = 600
boiler_mk3.energy_source.effectivity = 2
boiler_mk3.minable = {mining_time = 0.2, result = 'boiler-mk3'}
for _, picture in pairs(boiler_mk3.pictures) do
    if picture then
        for _, direction in pairs(picture) do
            if direction and direction.layers then
                direction.layers[1].tint = tints.mk3
                direction.layers[2].tint = tints.mk3
            end
        end
    end
end
for _, picture in pairs(boiler_mk3.fluid_box.pipe_covers) do
    if picture and picture.layers then
        picture.layers[1].tint = tints.mk3
        picture.layers[2].tint = tints.mk3
    end
end
for _, picture in pairs(boiler_mk3.output_fluid_box.pipe_covers) do
    if picture and picture.layers then
        picture.layers[1].tint = tints.mk3
        picture.layers[2].tint = tints.mk3
    end
end

local steam_engine_mk2 = deepcopy(data.raw['generator']['steam-engine'])
steam_engine_mk2.name = 'steam-engine-mk2'
steam_engine_mk2.icons = {
    {
        icon = steam_engine_mk2.icon,
        tint = tints.mk2
    }
}
steam_engine_mk2.max_health = 600
steam_engine_mk2.effectivity = 1.5
steam_engine_mk2.minable = {mining_time = 0.2, result = 'steam-engine-mk2'}
for _, picture in pairs(steam_engine_mk2.horizontal_animation) do
    if picture then
        picture[1].tint = tints.mk2
        picture[2].tint = tints.mk2
    end
end
for _, picture in pairs(steam_engine_mk2.vertical_animation) do
    if picture then
        picture[1].tint = tints.mk2
        picture[2].tint = tints.mk2
    end
end
for _, picture in pairs(steam_engine_mk2.fluid_box.pipe_covers) do
    if picture and picture.layers then
        picture.layers[1].tint = tints.mk2
        picture.layers[2].tint = tints.mk2
    end
end

local steam_engine_mk3 = deepcopy(data.raw['generator']['steam-engine'])
steam_engine_mk3.name = 'steam-engine-mk3'
steam_engine_mk3.icons = {
    {
        icon = steam_engine_mk3.icon,
        tint = tints.yellow
    }
}
steam_engine_mk3.max_health = 800
steam_engine_mk3.effectivity = 2
steam_engine_mk3.minable = {mining_time = 0.2, result = 'steam-engine-mk3'}
for _, picture in pairs(steam_engine_mk3.horizontal_animation) do
    if picture then
        picture[1].tint = tints.mk3
        picture[2].tint = tints.mk3
    end
end
for _, picture in pairs(steam_engine_mk3.vertical_animation) do
    if picture then
        picture[1].tint = tints.mk3
        picture[2].tint = tints.mk3
    end
end
for _, picture in pairs(steam_engine_mk3.fluid_box.pipe_covers) do
    if picture and picture.layers then
        picture.layers[1].tint = tints.mk3
        picture.layers[2].tint = tints.mk3
    end
end

local solar_panel_mk2 = deepcopy(data.raw['solar-panel']['solar-panel'])
solar_panel_mk2.name = 'solar-panel-mk2'
solar_panel_mk2.icons = {
    {
        icon = solar_panel_mk2.icon,
        tint = tints.mk2
    }
}
solar_panel_mk2.max_health = 400
solar_panel_mk2.production = '120kW'
solar_panel_mk2.minable = {mining_time = 0.2, result = 'solar-panel-mk2'}
for _, picture in pairs(solar_panel_mk2.picture) do
    if picture then
        picture[1].tint = tints.mk2
        picture[2].tint = tints.mk2
    end
end

local solar_panel_mk3 = deepcopy(data.raw['solar-panel']['solar-panel'])
solar_panel_mk3.name = 'solar-panel-mk3'
solar_panel_mk3.icons = {
    {
        icon = solar_panel_mk3.icon,
        tint = tints.yellow
    }
}
solar_panel_mk3.max_health = 600
solar_panel_mk3.production = '180kW'
solar_panel_mk3.minable = {mining_time = 0.2, result = 'solar-panel-mk3'}
for _, picture in pairs(solar_panel_mk3.picture) do
    if picture then
        picture[1].tint = tints.mk3
        picture[2].tint = tints.mk3
    end
end

local accumulator_mk2 = deepcopy(data.raw['accumulator']['accumulator'])
accumulator_mk2.name = 'accumulator-mk2'
accumulator_mk2.icons = {
    {
        icon = accumulator_mk2.icon,
        tint = tints.mk2
    }
}
accumulator_mk2.max_health = 300
accumulator_mk2.energy_source = {
    type = 'electric',
    buffer_capacity = '10MJ',
    usage_priority = 'tertiary',
    input_flow_limit = '600kW',
    output_flow_limit = '600kW'
}
accumulator_mk2.minable = {mining_time = 0.2, result = 'accumulator-mk2'}
for _, picture in pairs(accumulator_mk2.chargable_graphics.picture) do
    if picture then
        picture[1].tint = tints.mk2
        picture[2].tint = tints.mk2
    end
end
for _, picture in pairs(accumulator_mk2.chargable_graphics.charge_animation) do
    if picture then
        picture[1].tint = tints.mk2
        picture[2].tint = tints.mk2
    end
end
for _, picture in pairs(accumulator_mk2.chargable_graphics.discharge_animation) do
    if picture then
        picture[1].tint = tints.mk2
        picture[2].tint = tints.mk2
    end
end

local accumulator_mk3 = deepcopy(data.raw['accumulator']['accumulator'])
accumulator_mk3.name = 'accumulator-mk3'
accumulator_mk3.icons = {
    {
        icon = accumulator_mk3.icon,
        tint = tints.mk3
    }
}
accumulator_mk3.max_health = 450
accumulator_mk3.energy_source = {
    type = 'electric',
    buffer_capacity = '15MJ',
    usage_priority = 'tertiary',
    input_flow_limit = '900kW',
    output_flow_limit = '900kW'
}
accumulator_mk3.minable = {mining_time = 0.2, result = 'accumulator-mk3'}
for _, picture in pairs(accumulator_mk3.chargable_graphics.picture) do
    if picture then
        picture[1].tint = tints.mk3
        picture[2].tint = tints.mk3
    end
end
for _, picture in pairs(accumulator_mk3.chargable_graphics.charge_animation) do
    if picture then
        picture[1].tint = tints.mk3
        picture[2].tint = tints.mk3
    end
end
for _, picture in pairs(accumulator_mk3.chargable_graphics.discharge_animation) do
    if picture then
        picture[1].tint = tints.mk3
        picture[2].tint = tints.mk3
    end
end

data:extend {
    boiler_mk2,
    boiler_mk3,
    steam_engine_mk2,
    steam_engine_mk3,
    solar_panel_mk2,
    solar_panel_mk3,
    accumulator_mk2,
    accumulator_mk3
}
