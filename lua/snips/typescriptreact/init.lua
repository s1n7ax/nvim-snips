local mu = require('snips.utils.module')
local ip = mu.importer('snips.typescriptreact.primitives')
local id = mu.importer('snips.typescriptreact.dynamic')

local M = {
	primitives = {
		use_state = ip('use_state'),
		use_effect = ip('use_effect'),
		use_ref = ip('use_ref'),
	},
	dynamic = {
		component_props = id('component_props'),
		component = id('component'),
	},
}

return M
