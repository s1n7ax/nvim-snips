local module_util = require('snips.utils.module')
local ip = module_util.importer('snips.bash.primitives')
local ic = module_util.importer('snips.bash.choices')

local M = {
	primitives = {
		default_flags = ip('default_flags'),
	},

	choices = {
		variable = ic('variable'),
	},
}

return M
