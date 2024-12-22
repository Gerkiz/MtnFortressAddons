require 'common'
require 'prototypes.entities.biters.small'
require 'prototypes.entities.biters.medium'
require 'prototypes.entities.biters.big'
require 'prototypes.entities.biters.behemoth'
require 'prototypes.entities.biters.boss'

require 'prototypes.entities.spitters.small'
require 'prototypes.entities.spitters.medium'
require 'prototypes.entities.spitters.big'
require 'prototypes.entities.spitters.behemoth'
require 'prototypes.entities.spitters.boss'

require 'prototypes.entities.worms.small'
require 'prototypes.entities.worms.medium'
require 'prototypes.entities.worms.big'
require 'prototypes.entities.worms.custom'

require 'prototypes.entities.mineable-wreckage'

require 'prototypes.entities.ammo-turret'
require 'prototypes.entities.laser-turret'

require 'prototypes.entities.steel-wall'

require 'prototypes.entities.character'

require 'prototypes.entities.pump'

require 'prototypes.entities.trains'

require 'prototypes.entities.vehicles'

require 'prototypes.entities.containers'

require 'prototypes.entities.others'

for _, unit in pairs(data.raw['unit']) do
    if unit.collision_box then
        unit.collision_box = {{-0.1, -0.1}, {0.1, 0.1}}
        unit.vision_distance = 50
    end
    if unit.overkill_fraction then
        unit.overkill_fraction = 0
    end
end
