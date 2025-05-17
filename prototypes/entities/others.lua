---@diagnostic disable: assign-type-mismatch
local Common = require 'common'
local deepcopy = table.deepcopy

-- BOILERS ==================================================================
local boiler_mk1 = data.raw['boiler']['boiler']
local boiler_mk1_inputs = {
    icon_name = 'boiler',
    group = 'power',
    tint = Common.tiers[1]
}
Common.tint_icon_crafting_grid('boiler', boiler_mk1_inputs)

Common.customize_boiler(boiler_mk1, boiler_mk1_inputs)

local boiler_mk2 = deepcopy(data.raw['boiler']['boiler'])
boiler_mk2.name = 'boiler-mk2'
boiler_mk2.icons = {
    {
        icon = boiler_mk2.icon,
        tint = Common.tiers[2]
    }
}
local boiler_mk2_inputs = {
    icon_name = 'boiler',
    group = 'power',
    tint = Common.tiers[2]
}
boiler_mk2.max_health = 400
boiler_mk2.energy_source.effectivity = 1.5
boiler_mk2.minable = { mining_time = 0.2, result = 'boiler-mk2' }
Common.customize_boiler(boiler_mk2, boiler_mk2_inputs)
Common.tint_icon_crafting_grid('boiler-mk2', boiler_mk2_inputs)

local boiler_mk3 = deepcopy(data.raw['boiler']['boiler'])
boiler_mk3.name = 'boiler-mk3'
boiler_mk3.icons = {
    {
        icon = boiler_mk3.icon,
        tint = Common.tiers[3]
    }
}
local boiler_mk3_inputs = {
    icon_name = 'boiler',
    group = 'power',
    tint = Common.tiers[3]
}
boiler_mk3.max_health = 600
boiler_mk3.energy_source.effectivity = 2
boiler_mk3.minable = { mining_time = 0.2, result = 'boiler-mk3' }
Common.customize_boiler(boiler_mk3, boiler_mk3_inputs)
Common.tint_icon_crafting_grid('boiler-mk3', boiler_mk3_inputs)


-- STEAM ENGINES ==================================================================
local steam_engine_mk1 = data.raw['generator']['steam-engine']
local steam_engine_mk1_inputs = {
    type = 'steam-engine',
    tint = Common.tiers[1]
}
Common.customize_engine(steam_engine_mk1, steam_engine_mk1_inputs)

local steam_engine_mk2 = deepcopy(data.raw['generator']['steam-engine'])
steam_engine_mk2.name = 'steam-engine-mk2'
steam_engine_mk2.icons = {
    {
        icon = steam_engine_mk2.icon,
        tint = Common.tiers[2]
    }
}

local steam_engine_mk2_inputs = {
    type = 'steam-engine',
    tint = Common.tiers[2]
}
Common.customize_engine(steam_engine_mk2, steam_engine_mk2_inputs)

steam_engine_mk2.max_health = 600
steam_engine_mk2.effectivity = 1.5
steam_engine_mk2.minable = { mining_time = 0.2, result = 'steam-engine-mk2' }


local steam_engine_mk3 = deepcopy(data.raw['generator']['steam-engine'])
steam_engine_mk3.name = 'steam-engine-mk3'
steam_engine_mk3.icons = {
    {
        icon = steam_engine_mk3.icon,
        tint = Common.tiers[3]
    }
}

local steam_engine_mk3_inputs = {
    type = 'steam-engine',
    tint = Common.tiers[3]
}
Common.customize_engine(steam_engine_mk3, steam_engine_mk3_inputs)

steam_engine_mk3.max_health = 800
steam_engine_mk3.effectivity = 2
steam_engine_mk3.minable = { mining_time = 0.2, result = 'steam-engine-mk3' }

-- SOLAR PANELS ==================================================================

local solar_panel_mk1 = data.raw['solar-panel']['solar-panel']
local solar_panel_mk1_inputs = {
    type = 'solar-panel',
    tint = Common.tiers[1]
}
Common.customize_solar_panels(solar_panel_mk1, solar_panel_mk1_inputs)

local solar_panel_mk2 = deepcopy(data.raw['solar-panel']['solar-panel'])
solar_panel_mk2.name = 'solar-panel-mk2'
solar_panel_mk2.icons = {
    {
        icon = solar_panel_mk2.icon,
        tint = Common.tiers[2]
    }
}
solar_panel_mk2.max_health = 400
solar_panel_mk2.production = '120kW'
solar_panel_mk2.minable = { mining_time = 0.2, result = 'solar-panel-mk2' }
local solar_panel_mk2_inputs = {
    type = 'solar-panel',
    tint = Common.tiers[2]
}
Common.customize_solar_panels(solar_panel_mk2, solar_panel_mk2_inputs)

local solar_panel_mk3 = deepcopy(data.raw['solar-panel']['solar-panel'])
solar_panel_mk3.name = 'solar-panel-mk3'
solar_panel_mk3.icons = {
    {
        icon = solar_panel_mk3.icon,
        tint = Common.tiers[3]
    }
}
solar_panel_mk3.max_health = 600
solar_panel_mk3.production = '180kW'
solar_panel_mk3.minable = { mining_time = 0.2, result = 'solar-panel-mk3' }
local solar_panel_mk3_inputs = {
    type = 'solar-panel',
    tint = Common.tiers[3]
}
Common.customize_solar_panels(solar_panel_mk3, solar_panel_mk3_inputs)

-- ACCUMULATORS ==================================================================

local accumulator_mk1 = data.raw['accumulator']['accumulator']
local accumulator_mk1_inputs = {
    type = 'accumulator',
    wire = 1,
    tint = Common.tiers[1]
}
accumulator_mk1.chargable_graphics.picture = Common.accumulator_picture_tinted(accumulator_mk1_inputs)
accumulator_mk1.chargable_graphics.charge_animation = Common.accumulator_charge_tinted(accumulator_mk1_inputs)
accumulator_mk1.chargable_graphics.discharge_animation = Common.accumulator_discharge_tinted(accumulator_mk1_inputs)
accumulator_mk1.chargable_graphics.charge_light = nil
accumulator_mk1.chargable_graphics.discharge_light = nil

local accumulator_mk2 = deepcopy(data.raw['accumulator']['accumulator'])
accumulator_mk2.name = 'accumulator-mk2'
accumulator_mk2.icons = {
    {
        icon = accumulator_mk2.icon,
        tint = Common.tiers[2]
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
accumulator_mk2.minable = { mining_time = 0.2, result = 'accumulator-mk2' }



local accumulator_mk2_inputs = {
    type = 'accumulator',
    wire = 1,
    tint = Common.tiers[2]
}
accumulator_mk2.chargable_graphics.picture = Common.accumulator_picture_tinted(accumulator_mk2_inputs)
accumulator_mk2.chargable_graphics.charge_animation = Common.accumulator_charge_tinted(accumulator_mk2_inputs)
accumulator_mk2.chargable_graphics.discharge_animation = Common.accumulator_discharge_tinted(accumulator_mk2_inputs)
accumulator_mk2.chargable_graphics.charge_light = nil
accumulator_mk2.chargable_graphics.discharge_light = nil


local accumulator_mk3 = deepcopy(data.raw['accumulator']['accumulator'])
accumulator_mk3.name = 'accumulator-mk3'
accumulator_mk3.icons = {
    {
        icon = accumulator_mk3.icon,
        tint = Common.tiers[3]
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
accumulator_mk3.minable = { mining_time = 0.2, result = 'accumulator-mk3' }
local accumulator_mk3_inputs = {
    type = 'accumulator',
    wire = 1,
    tint = Common.tiers[3]
}
accumulator_mk3.chargable_graphics.picture = Common.accumulator_picture_tinted(accumulator_mk3_inputs)
accumulator_mk3.chargable_graphics.charge_animation = Common.accumulator_charge_tinted(accumulator_mk3_inputs)
accumulator_mk3.chargable_graphics.discharge_animation = Common.accumulator_discharge_tinted(accumulator_mk3_inputs)
accumulator_mk3.chargable_graphics.charge_light = nil
accumulator_mk3.chargable_graphics.discharge_light = nil

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
