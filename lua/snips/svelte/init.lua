local mu = require('snips.utils.module')
local ip = mu.importer('snips.svelte.primitives')

local M = {
	primitives = {
		script = ip('script'),
	},
}

return M
