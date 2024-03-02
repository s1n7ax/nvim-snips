local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return function()
	return fmt(
		[[
			class {} {{
				{}
			}}
		]],
		{
			i(1, 'Name'),
			i(2),
		}
	)
end