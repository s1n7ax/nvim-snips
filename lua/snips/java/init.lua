local module_util = require('snips.utils.module')
local im = module_util.importer('snips.java')

local M = {
  stdout = im('stdout'),
}

return M
