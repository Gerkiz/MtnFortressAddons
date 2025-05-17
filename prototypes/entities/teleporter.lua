local Common = require 'common'

local sticker =
{
  type = "sticker",
  name = 'warp-sticker',
  flags = {},
  animation = util.empty_sprite(),
  duration_in_ticks = 1,
}

local warp = util.copy(data.raw["land-mine"]["land-mine"])
local localised_name = { 'warp' }
local name = 'warp'

warp.name = name
warp.icon = Common.mod_prefix .. "/graphics/icons/warp.png"
warp.localised_name = localised_name
warp.trigger_radius = 1
warp.timeout = 5 * 60
warp.max_health = 200
warp.dying_explosion = nil
warp.minable = nil
warp.action =
{
  type = "direct",
  action_delivery =
  {
    type = "instant",
    target_effects =
    {
      {
        type = "create-sticker",
        sticker = 'warp-sticker',
        trigger_created_entity = true
      }
    }
  }
}
warp.force_die_on_attack = false
warp.trigger_force = "all"
warp.order = name
warp.picture_safe =
{
  filename = Common.mod_prefix .. "/graphics/entity/warp.png",
  priority = "medium",
  width = 160,
  height = 160,
  scale = 0.5,
}
warp.picture_set =
{
  filename = Common.mod_prefix .. "/graphics/entity/warp-opened.png",
  priority = "medium",
  width = 160,
  height = 160,
  scale = 0.5,
}
warp.picture_set_enemy =
{
  filename = Common.mod_prefix .. "/graphics/entity/warp-opened.png",
  priority = "medium",
  width = 160,
  height = 160,
  scale = 0.5,
}
warp.flags =
{
  "placeable-neutral",
  "placeable-player",
  "player-creation",
  "not-upgradable"
}
warp.collision_box = { { -1, -1 }, { 1, 1 } }
warp.selection_box = { { -1, -1 }, { 1, 1 } }
warp.map_color = { r = 0.5, g = 1, b = 1 }

data:extend { sticker }
---@diagnostic disable-next-line: assign-type-mismatch
data:extend { warp }
