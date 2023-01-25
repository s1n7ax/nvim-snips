local module_util = require('snips.utils.module')
local ip = module_util.importer('snips.kubernetes.primitives')

local M = {
  primitives = {
    pod = ip('pod'),
    replicaset = ip('replicaset'),
    deployment = ip('deployment'),
    service = ip('service'),
  }
}

return M
