local mu = require('snips.utils.module')
local ip = mu.importer('snips.javascript.primitives')

local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt
local c = ls.choice_node

local variable = ip('variable')
local constant_variable = ip('constant_variable')

return function()
	return fmt('{}', {
		c(1, {
			constant_variable(),
			variable(),
		}),
	})
end