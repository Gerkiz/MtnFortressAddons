local tints = require 'utils.layers'.tints
local deepcopy = table.deepcopy

data.raw['character']['character'].collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } }

local anim_mk3 = deepcopy(data.raw['character']['character'].animations[3])

for _, cat in pairs(anim_mk3) do
    if cat.layers then
        for _, sec in pairs(cat.layers) do
            sec.tint = tints['steel']
            if sec.stripes then
                for _, stripe in pairs(sec.stripes) do
                    stripe.tint = tints['steel']
                end
            end
        end
    end
end
anim_mk3.armors = { 'power-armor-mk3' }

data.raw['character']['character'].animations[4] = anim_mk3

local anim_mk4 = deepcopy(data.raw['character']['character'].animations[3])

for _, cat in pairs(anim_mk4) do
    if cat.layers then
        for _, sec in pairs(cat.layers) do
            sec.tint = tints['steel']
            if sec.stripes then
                for _, stripe in pairs(sec.stripes) do
                    stripe.tint = tints['steel']
                end
            end
        end
    end
end
anim_mk4.armors = { 'power-armor-mk4' }

data.raw['character']['character'].animations[5] = anim_mk4

local anim_mk5 = deepcopy(data.raw['character']['character'].animations[3])

for _, cat in pairs(anim_mk5) do
    if cat.layers then
        for _, sec in pairs(cat.layers) do
            sec.tint = tints['steel']
            if sec.stripes then
                for _, stripe in pairs(sec.stripes) do
                    stripe.tint = tints['steel']
                end
            end
        end
    end
end
anim_mk5.armors = { 'power-armor-mk5' }

data.raw['character']['character'].animations[6] = anim_mk5
