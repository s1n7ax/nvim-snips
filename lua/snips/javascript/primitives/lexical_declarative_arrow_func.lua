local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt

local r = ls.restore_node

return function()
	return fmt(
		[[
			const {} = ({}) => {{
				{}
			}}
		]],
		{
			r(1, 'name'),
			r(2, 'param'),
			r(3, 'body'),
		}
	)
end