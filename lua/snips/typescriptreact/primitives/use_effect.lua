local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return function()
	return fmt(
		[[
			useEffect(() => {{
				{}
			}}, [{}])
		]],
		{
			i(2),
			i(1),
		}
	)
end