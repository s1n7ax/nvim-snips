local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return function()
	return fmt(
		[[
			const {} = useRef({})
		]],
		{
			i(1),
			i(2),
		}
	)
end
