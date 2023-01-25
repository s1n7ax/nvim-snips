local module_util = require('snips.utils.module')
local im = module_util.importer('snips.java.primitives')

local M = {
  primitives = {
    stdout = im('stdout'),
  }
}

return M
