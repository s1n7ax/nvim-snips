local mu = require('snips.utils.module')
local ip = mu.importer('snips.javascriptreact.primitives')

local component = ip('component')
local use_state = ip('use_state')
local use_effect = ip('use_effect')

local M = {
  primitives = {
    component = component,
    use_state = use_state,
    use_effect = use_effect,
  }
}

return M
