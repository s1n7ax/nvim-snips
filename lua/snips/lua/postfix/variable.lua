local ls = require('luasnip')
local sn = ls.snippet_node
local i = ls.insert_node
local d = ls.dynamic_node
local fmt = require('luasnip.extras.fmt').fmt

return function()
	return {
		d(1, function(_, parent)
			return sn(
				1,
				fmt('local {} = ' .. parent.snippet.env.POSTFIX_MATCH, {
					i(1, 'name'),
				})
			)
		end),
	}
end