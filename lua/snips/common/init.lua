local module_util = require('snips.utils.module')
local im = module_util.importer('snips.common.primitives')

local M = {
  primitives = {
    returns = im('returns'),
  }
}

return M
