local deepcopy = table.deepcopy
local rare_grid = deepcopy(data.raw['equipment-grid']['large-equipment-grid'])
rare_grid.width = 11
rare_grid.height = 11
rare_grid.name = 'rare-equipment-grid'

local epic_grid = deepcopy(data.raw['equipment-grid']['large-equipment-grid'])
epic_grid.width = 12
epic_grid.height = 12
epic_grid.name = 'epic-equipment-grid'

local legendary_grid = deepcopy(data.raw['equipment-grid']['large-equipment-grid'])
legendary_grid.width = 14
legendary_grid.height = 14
legendary_grid.name = 'legendary-equipment-grid'

data:extend {rare_grid, epic_grid, legendary_grid}
