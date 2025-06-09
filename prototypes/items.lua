local Common = require 'common'
local deepcopy = table.deepcopy
require 'prototypes.items.armor'
require 'prototypes.items.equipment'
require 'prototypes.items.others'

local cooked_fish = deepcopy(data.raw['capsule']['raw-fish'])
cooked_fish.name = 'cooked-fish'
cooked_fish.localised_description = { 'mtn.cooked-fish' }
cooked_fish.icon = Common.mod_prefix .. '/graphics/icons/cooked-fish.png'
cooked_fish.capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects[1].damage.amount = -120
cooked_fish.capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects[3] = {
    type = 'create-entity',
    entity_name = 'water-splash'
}

data:extend { cooked_fish }

local grilled_fish = deepcopy(data.raw['capsule']['raw-fish'])
grilled_fish.name = 'grilled-fish'
grilled_fish.localised_description = { 'mtn.grilled-fish' }
grilled_fish.icon = Common.mod_prefix .. '/graphics/icons/grilled-fish.png'
grilled_fish.capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects[1].damage.amount = -180
grilled_fish.capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects[3] = {
    type = 'create-entity',
    entity_name = 'medium-worm-die'
}

data:extend { grilled_fish }

local steel_wall = deepcopy(data.raw['item']['stone-wall'])
steel_wall.name = 'steel-wall'
steel_wall.order = 'a[stone-wall]-b[steel-wall]'
steel_wall.icons = {
    {
        icon = steel_wall.icon,
        tint = { r = 0.5, g = 0.5, b = 0.5 }
    }
}
steel_wall.place_result = 'steel-wall'
data:extend { steel_wall }

local ores_misc = {
    'iron-ore',
    'copper-ore',
    'coal',
    'stone',
    'uranium-ore',
    'wood',
    'iron-plate',
    'copper-plate',
    'steel-plate',
    'plastic-bar',
    'stone-brick',
    'concrete',
    'landfill',
    'explosives',
    'solid-fuel',
}

for _, ore in pairs(ores_misc) do
    data.raw['item'][ore].stack_size = 200
end

local ammos = {
    'firearm-magazine',
    'piercing-rounds-magazine',
    'uranium-rounds-magazine',
    'shotgun-shell',
    'piercing-shotgun-shell',
    'cannon-shell',
    'explosive-cannon-shell',
    'uranium-cannon-shell',
    'explosive-uranium-cannon-shell',
    'artillery-shell',
    'rocket',
    'explosive-rocket',
}

for _, ammo in pairs(ammos) do
    data.raw['ammo'][ammo].stack_size = data.raw['ammo'][ammo].stack_size * 2
end

local grenades = {
    'grenade',
    'cluster-grenade',
}

for _, grenade in pairs(grenades) do
    data.raw['capsule'][grenade].stack_size = data.raw['capsule'][grenade].stack_size * 2
end
