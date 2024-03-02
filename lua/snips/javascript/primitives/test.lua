local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return function()
	return fmt(
		[[
		test('should {}', async() => {{
			{}
		}})
		]],
		{
			i(1, 'do something'),
			i(2),
		}
	)
end