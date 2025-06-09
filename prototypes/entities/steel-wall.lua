local tints = require 'utils.layers'.tints

local steel_walls = table.deepcopy(data.raw['wall']['stone-wall'])
steel_walls.name = 'steel-wall'
steel_walls.max_health = 1000
steel_walls.icons = {
    {
        icon = steel_walls.icon,
        tint = {r = 0.5, g = 0.5, b = 0.5}
    }
}

for _, picture in pairs(steel_walls.pictures) do
    if picture.layers then
        picture.layers[1].tint = tints['steel']
        picture.layers[2].tint = tints['steel']
    end
end

data:extend{steel_walls}
