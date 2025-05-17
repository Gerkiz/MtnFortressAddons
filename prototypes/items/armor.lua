local Common = require 'common'
local deepcopy = table.deepcopy

local power_armor_mk3 = deepcopy(data.raw['armor']['power-armor-mk2'])
power_armor_mk3.name = 'power-armor-mk3'
power_armor_mk3.equipment_grid = 'rare-equipment-grid'
power_armor_mk3.inventory_size_bonus = 30
power_armor_mk3.resistances = {
    {
        type = 'physical',
        decrease = 10,
        percent = 45
    },
    {
        type = 'acid',
        decrease = 0,
        percent = 75
    },
    {
        type = 'explosion',
        decrease = 60,
        percent = 55
    },
    {
        type = 'fire',
        decrease = 0,
        percent = 75
    },
    {
        type = 'mtn-addon-pierce',
        decrease = 0,
        percent = 40
    },
    {
        type = 'poison',
        decrease = 0,
        percent = 40
    }
}
power_armor_mk3.order = 'e[power-armor-mk3]'
power_armor_mk3.subgroup = 'armor-mtn'

local power_armor_mk4 = deepcopy(data.raw['armor']['power-armor-mk2'])
power_armor_mk4.name = 'power-armor-mk4'
power_armor_mk4.equipment_grid = 'epic-equipment-grid'
power_armor_mk4.inventory_size_bonus = 40
power_armor_mk4.resistances = {
    {
        type = 'physical',
        decrease = 10,
        percent = 50
    },
    {
        type = 'acid',
        decrease = 0,
        percent = 80
    },
    {
        type = 'explosion',
        decrease = 60,
        percent = 60
    },
    {
        type = 'fire',
        decrease = 0,
        percent = 80
    },
    {
        type = 'mtn-addon-pierce',
        decrease = 0,
        percent = 50
    },
    {
        type = 'poison',
        decrease = 0,
        percent = 50
    }
}
power_armor_mk4.order = 'e[power-armor-mk4]'
power_armor_mk4.subgroup = 'armor-mtn'

local power_armor_mk5 = deepcopy(data.raw['armor']['power-armor-mk2'])
power_armor_mk5.name = 'power-armor-mk5'
power_armor_mk5.equipment_grid = 'legendary-equipment-grid'
power_armor_mk5.inventory_size_bonus = 50
power_armor_mk5.resistances = {
    {
        type = 'physical',
        decrease = 10,
        percent = 60
    },
    {
        type = 'acid',
        decrease = 0,
        percent = 85
    },
    {
        type = 'explosion',
        decrease = 60,
        percent = 70
    },
    {
        type = 'fire',
        decrease = 0,
        percent = 85
    },
    {
        type = 'mtn-addon-pierce',
        decrease = 0,
        percent = 60
    },
    {
        type = 'poison',
        decrease = 0,
        percent = 60
    }
}
power_armor_mk5.order = 'e[power-armor-mk5]'
power_armor_mk5.subgroup = 'armor-mtn'

data:extend { power_armor_mk3, power_armor_mk4, power_armor_mk5 }

--## ARMORS =======================================================================
-- needs to be changed because it looks awful
-- local character = data.raw['character']['character']

-- local power_armor_mk3_inputs = {
--     icon_name = 'power-armor-mk3',
--     tint = Common.tiers[2],
-- }

-- Common.customize_character(character, power_armor_mk3_inputs)

-- local power_armor_mk4_inputs = {
--     icon_name = 'power-armor-mk4',
--     tint = Common.tiers[6],
-- }

-- Common.customize_character(character, power_armor_mk4_inputs)

-- local power_armor_mk5_inputs = {
--     icon_name = 'power-armor-mk5',
--     tint = Common.tiers[7],
-- }

-- Common.customize_character(character, power_armor_mk5_inputs)

local item_types = {
    ['power-armor-mk3'] = { tier = 8, name = 'power-armor', icon_filename = Common.mod_prefix .. '/graphics/reskins/icons/warfare/armor/power-armor-mk3.png' },
    ['power-armor-mk4'] = { tier = 9, name = 'power-armor', icon_filename = Common.mod_prefix .. '/graphics/reskins/icons/warfare/armor/power-armor-mk4.png' },
    ['power-armor-mk5'] = { tier = 10, name = 'power-armor', icon_filename = Common.mod_prefix .. '/graphics/reskins/icons/warfare/armor/power-armor-mk5.png' },
}

for item_name, data in pairs(item_types) do
    local inputs = {
        group = 'warfare',
        subgroup = 'armor',
        tint = Common.tiers[data.tier],
        icon_filename = data.icon_filename
    }
    Common.tint_icon_crafting_grid(item_name, inputs)
end
