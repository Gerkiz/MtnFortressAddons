data:extend(
    {
        {
            type = 'recipe',
            name = 'cooked-fish',
            category = 'smelting',
            enabled = false,
            energy_required = 5,
            ingredients = { { type = 'item', name = 'raw-fish', amount = 2 } },
            results = { { type = 'item', name = 'cooked-fish', amount = 1 } },
            allow_productivity = true
        },
        {
            type = 'recipe',
            name = 'grilled-fish',
            category = 'smelting',
            enabled = false,
            energy_required = 8,
            ingredients = { { type = 'item', name = 'cooked-fish', amount = 2 } },
            results = { { type = 'item', name = 'grilled-fish', amount = 1 } },
            allow_productivity = true
        },
        {
            type = 'recipe',
            name = 'steel-wall',
            enabled = false,
            category = 'crafting-with-fluid',
            ingredients = {
                { type = 'item',  name = 'concrete',    amount = 5 },
                { type = 'fluid', name = 'water',       amount = 100 },
                { type = 'item',  name = 'steel-plate', amount = 5 }
            },
            results = { { type = 'item', name = 'steel-wall', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'power-armor-mk3',
            enabled = false,
            energy_required = 30,
            ingredients = {
                { type = 'item', name = 'power-armor-mk2',       amount = 1 },
                { type = 'item', name = 'efficiency-module-3',   amount = 50 },
                { type = 'item', name = 'speed-module-3',        amount = 50 },
                { type = 'item', name = 'processing-unit',       amount = 100 },
                { type = 'item', name = 'electric-engine-unit',  amount = 100 },
                { type = 'item', name = 'low-density-structure', amount = 100 }
            },
            results = { { type = 'item', name = 'power-armor-mk3', amount = 1 } },
            requester_paste_multiplier = 1
        },
        {
            type = 'recipe',
            name = 'power-armor-mk4',
            enabled = false,
            energy_required = 35,
            ingredients = {
                { type = 'item', name = 'power-armor-mk3',       amount = 1 },
                { type = 'item', name = 'efficiency-module-3',   amount = 60 },
                { type = 'item', name = 'speed-module-3',        amount = 60 },
                { type = 'item', name = 'processing-unit',       amount = 150 },
                { type = 'item', name = 'electric-engine-unit',  amount = 125 },
                { type = 'item', name = 'low-density-structure', amount = 125 }
            },
            results = { { type = 'item', name = 'power-armor-mk4', amount = 1 } },
            requester_paste_multiplier = 1
        },
        {
            type = 'recipe',
            name = 'power-armor-mk5',
            enabled = false,
            energy_required = 40,
            ingredients = {
                { type = 'item', name = 'power-armor-mk4',       amount = 1 },
                { type = 'item', name = 'efficiency-module-3',   amount = 100 },
                { type = 'item', name = 'speed-module-3',        amount = 100 },
                { type = 'item', name = 'processing-unit',       amount = 200 },
                { type = 'item', name = 'electric-engine-unit',  amount = 150 },
                { type = 'item', name = 'low-density-structure', amount = 150 }
            },
            results = { { type = 'item', name = 'power-armor-mk5', amount = 1 } },
            requester_paste_multiplier = 1
        },
        {
            type = 'recipe',
            name = 'personal-laser-defense-mk2-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'personal-laser-defense-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',                  amount = 40 },
                { type = 'item', name = 'low-density-structure',            amount = 10 },
                { type = 'item', name = 'laser-turret',                     amount = 10 }
            },
            results = { { type = 'item', name = 'personal-laser-defense-mk2-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'personal-laser-defense-mk3-equipment',
            enabled = false,
            energy_required = 15,
            ingredients = {
                { type = 'item', name = 'personal-laser-defense-mk2-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',                      amount = 50 },
                { type = 'item', name = 'low-density-structure',                amount = 15 },
                { type = 'item', name = 'laser-turret',                         amount = 15 }
            },
            results = { { type = 'item', name = 'personal-laser-defense-mk3-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'personal-laser-defense-mk4-equipment',
            enabled = false,
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'personal-laser-defense-mk3-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',                      amount = 75 },
                { type = 'item', name = 'low-density-structure',                amount = 20 },
                { type = 'item', name = 'laser-turret',                         amount = 20 }
            },
            results = { { type = 'item', name = 'personal-laser-defense-mk4-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'personal-laser-defense-mk5-equipment',
            enabled = false,
            energy_required = 25,
            ingredients = {
                { type = 'item', name = 'personal-laser-defense-mk4-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',                      amount = 90 },
                { type = 'item', name = 'low-density-structure',                amount = 35 },
                { type = 'item', name = 'laser-turret',                         amount = 35 }
            },
            results = { { type = 'item', name = 'personal-laser-defense-mk5-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'energy-shield-mk3-equipment',
            enabled = false,
            energy_required = 15,
            ingredients = {
                { type = 'item', name = 'energy-shield-mk2-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',             amount = 20 },
                { type = 'item', name = 'low-density-structure',       amount = 10 }
            },
            results = { { type = 'item', name = 'energy-shield-mk3-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'energy-shield-mk4-equipment',
            enabled = false,
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'energy-shield-mk3-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',             amount = 30 },
                { type = 'item', name = 'low-density-structure',       amount = 15 }
            },
            results = { { type = 'item', name = 'energy-shield-mk4-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'energy-shield-mk5-equipment',
            enabled = false,
            energy_required = 25,
            ingredients = {
                { type = 'item', name = 'energy-shield-mk4-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',             amount = 40 },
                { type = 'item', name = 'low-density-structure',       amount = 20 }
            },
            results = { { type = 'item', name = 'energy-shield-mk5-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'battery-mk3-equipment',
            enabled = false,
            energy_required = 15,
            ingredients = {
                { type = 'item', name = 'battery-mk2-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',       amount = 25 },
                { type = 'item', name = 'low-density-structure', amount = 15 }
            },
            results = { { type = 'item', name = 'battery-mk3-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'battery-mk4-equipment',
            enabled = false,
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'battery-mk3-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',       amount = 35 },
                { type = 'item', name = 'low-density-structure', amount = 20 }
            },
            results = { { type = 'item', name = 'battery-mk4-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'battery-mk5-equipment',
            enabled = false,
            energy_required = 25,
            ingredients = {
                { type = 'item', name = 'battery-mk4-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',       amount = 50 },
                { type = 'item', name = 'low-density-structure', amount = 25 }
            },
            results = { { type = 'item', name = 'battery-mk5-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'solar-panel-mk2-equipment',
            enabled = false,
            energy_required = 15,
            ingredients = {
                { type = 'item', name = 'solar-panel-equipment', amount = 1 },
                { type = 'item', name = 'advanced-circuit',      amount = 25 },
                { type = 'item', name = 'steel-plate',           amount = 15 }
            },
            results = { { type = 'item', name = 'solar-panel-mk2-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'solar-panel-mk3-equipment',
            enabled = false,
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'solar-panel-mk2-equipment', amount = 1 },
                { type = 'item', name = 'processing-unit',           amount = 25 },
                { type = 'item', name = 'low-density-structure',     amount = 10 }
            },
            results = { { type = 'item', name = 'solar-panel-mk3-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'fire-capsule',
            enabled = false,
            category = 'crafting-with-fluid',
            energy_required = 10,
            ingredients = {
                { type = 'fluid', name = 'petroleum-gas',      amount = 30 },
                { type = 'item',  name = 'electronic-circuit', amount = 5 },
                { type = 'item',  name = 'iron-plate',         amount = 10 }
            },
            results = { { type = 'item', name = 'fire-capsule', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'fission-reactor-mk2-equipment',
            enabled = false,
            energy_required = 15,
            ingredients = {
                { type = 'item', name = 'processing-unit',           amount = 300 },
                { type = 'item', name = 'low-density-structure',     amount = 75 },
                { type = 'item', name = 'uranium-fuel-cell',         amount = 8 },
                { type = 'item', name = 'fission-reactor-equipment', amount = 1 }
            },
            results = { { type = 'item', name = 'fission-reactor-mk2-equipment', amount = 1 } }
        },
        {
            type = 'recipe',
            name = 'fission-reactor-mk3-equipment',
            enabled = false,
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'processing-unit',               amount = 350 },
                { type = 'item', name = 'low-density-structure',         amount = 100 },
                { type = 'item', name = 'uranium-fuel-cell',             amount = 10 },
                { type = 'item', name = 'fission-reactor-mk2-equipment', amount = 1 }
            },
            results = { { type = 'item', name = 'fission-reactor-mk3-equipment', amount = 1 } }
        }
    }
)

data.raw['technology']['military-3'].effects[4] = {
    type = 'unlock-recipe',
    recipe = 'fire-capsule'
}

data:extend {
    {
        type = 'recipe',
        name = 'boiler-mk2',
        enabled = false,
        ingredients = {
            { type = 'item', name = 'stone-furnace', amount = 2 },
            { type = 'item', name = 'pipe',          amount = 8 },
            { type = 'item', name = 'boiler',        amount = 1 }
        },
        results = { { type = 'item', name = 'boiler-mk2', amount = 1 } }
    },
    {
        type = 'recipe',
        name = 'boiler-mk3',
        enabled = false,
        ingredients = {
            { type = 'item', name = 'stone-furnace', amount = 3 },
            { type = 'item', name = 'pipe',          amount = 12 },
            { type = 'item', name = 'boiler-mk2',    amount = 1 }
        },
        results = { { type = 'item', name = 'boiler-mk3', amount = 1 } }
    },
    {
        type = 'recipe',
        name = 'steam-engine-mk2',
        ingredients = {
            { type = 'item', name = 'iron-gear-wheel', amount = 16 },
            { type = 'item', name = 'pipe',            amount = 10 },
            { type = 'item', name = 'iron-plate',      amount = 20 },
            { type = 'item', name = 'steam-engine',    amount = 1 }
        },
        results = { { type = 'item', name = 'steam-engine-mk2', amount = 1 } },
        enabled = false
    },
    {
        type = 'recipe',
        name = 'steam-engine-mk3',
        ingredients = {
            { type = 'item', name = 'iron-gear-wheel',  amount = 32 },
            { type = 'item', name = 'pipe',             amount = 20 },
            { type = 'item', name = 'iron-plate',       amount = 40 },
            { type = 'item', name = 'steam-engine-mk2', amount = 1 }
        },
        results = { { type = 'item', name = 'steam-engine-mk3', amount = 1 } },
        enabled = false
    },
    {
        type = 'recipe',
        name = 'solar-panel-mk2',
        energy_required = 15,
        enabled = false,
        ingredients = {
            { type = 'item', name = 'steel-plate',        amount = 10 },
            { type = 'item', name = 'electronic-circuit', amount = 30 },
            { type = 'item', name = 'copper-plate',       amount = 10 },
            { type = 'item', name = 'solar-panel',        amount = 1 }
        },
        results = { { type = 'item', name = 'solar-panel-mk2', amount = 1 } }
    },
    {
        type = 'recipe',
        name = 'solar-panel-mk3',
        energy_required = 20,
        enabled = false,
        ingredients = {
            { type = 'item', name = 'steel-plate',        amount = 20 },
            { type = 'item', name = 'electronic-circuit', amount = 45 },
            { type = 'item', name = 'copper-plate',       amount = 20 },
            { type = 'item', name = 'solar-panel-mk2',    amount = 1 }
        },
        results = { { type = 'item', name = 'solar-panel-mk3', amount = 1 } }
    },
    {
        type = 'recipe',
        name = 'accumulator-mk2',
        energy_required = 15,
        enabled = false,
        ingredients = {
            { type = 'item', name = 'iron-plate',  amount = 4 },
            { type = 'item', name = 'battery',     amount = 20 },
            { type = 'item', name = 'accumulator', amount = 1 }
        },
        results = { { type = 'item', name = 'accumulator-mk2', amount = 1 } }
    },
    {
        type = 'recipe',
        name = 'accumulator-mk3',
        energy_required = 20,
        enabled = false,
        ingredients = {
            { type = 'item', name = 'iron-plate',      amount = 12 },
            { type = 'item', name = 'battery',         amount = 30 },
            { type = 'item', name = 'accumulator-mk2', amount = 1 }
        },
        results = { { type = 'item', name = 'accumulator-mk3', amount = 1 } }
    }
}
