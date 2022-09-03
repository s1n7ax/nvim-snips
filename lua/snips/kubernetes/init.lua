local module_util = require('snips.utils.module')
local im = module_util.importer('snips.kubernetes')

local M = {
  pod = im('pod'),
  replicaset = im('replicaset'),
  deployment = im('deployment')
}

return M
