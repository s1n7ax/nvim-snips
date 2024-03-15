local mu = require('snips.utils.module')
local ip = mu.importer('snips.javascript.primitives')

local ls = require('luasnip')
local inline_anonymous_function = ip('inline_anonymous_func')
local multiline_anonymous_function = ip('multiline_anonymous_func')

local fmt = require('luasnip.extras.fmt').fmt

local c = ls.choice_node

return function()
	return fmt('{}', {
		c(1, {
			multiline_anonymous_function(),
			inline_anonymous_function(),
		}),
	})
end