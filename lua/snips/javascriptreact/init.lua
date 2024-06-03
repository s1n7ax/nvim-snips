local mu = require('snips.utils.module')
local ip = mu.importer('snips.javascriptreact.primitives')
local id = mu.importer('snips.javascriptreact.dynamic')

local M = {
	primitives = {
		use_state = ip('use_state'),
		use_effect = ip('use_effect'),
	},
	dynamic = {
		component_props = id('component_props'),
		component = id('component'),
	},
}

return M