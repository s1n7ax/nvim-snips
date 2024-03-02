local mu = require('snips.utils.module')
local ip = mu.importer('snips.typescript.primitives')
local ic = mu.importer('snips.typescript.choices')

local M = {
	primitives = {
		interface = ip('interface'),
		enum = ip('enum'),

		variable = ip('variable'),
		constant_variable = ip('constant_variable'),
	},

	choices = {
		variable = ic('variable'),
	},
}

return M