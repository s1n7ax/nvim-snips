local module_util = require('snips.utils.module')
local ip = module_util.importer('snips.bash.primitives')

local M = {
  primitives = {
    default_flags = ip('default_flags'),
  },

  choices = {},
}

return M
