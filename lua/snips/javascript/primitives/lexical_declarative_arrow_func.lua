local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local r = ls.restore_node

return function()
	return fmt(
		[[
			const {} = ({}) => {{
				{}
			}}
		]],
		{
			r(1, 'name', i(nil, 'name')),
			r(2, 'param'),
			r(3, 'body'),
		}
	)
end
