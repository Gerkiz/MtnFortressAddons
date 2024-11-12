function trails(ammo)
    if not ammo or not ammo.ammo_type or not ammo.ammo_type.action then
        return
    end

    local action = ammo.ammo_type.action[1] or ammo.ammo_type.action
    if not action then
        return
    end

    local action_delivery = action.action_delivery[1] or action.action_delivery
    if not action_delivery then
        return
    end

    action_delivery.target_effects = action_delivery.target_effects or {}

    if not action_delivery.target_effects[1] and action_delivery.target_effects.type then
        action_delivery.target_effects = { action_delivery.target_effects }
    end

    local target_effects = action_delivery.target_effects
    if target_effects then
        target_effects[#target_effects + 1] = { type = 'create-explosion', entity_name = 'mtn-atton-turret-trail' }
    end
end

local prot_type = data.raw['ammo']
for _, ammo in pairs(prot_type) do
    trails(ammo)
end
