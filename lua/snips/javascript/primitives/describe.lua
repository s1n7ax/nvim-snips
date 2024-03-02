local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return function()
	return fmt(
		[[
		describe('{}', () => {{
			{}
		}})
		]],
		{
			i(1, 'description'),
			i(2),
		}
	)
end