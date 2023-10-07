local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return function()
	return fmt(
		[[
	function {name} {{
		{body}
	}}
	]],
		{
			name = i(1, 'name'),
			body = i(2),
		}
	)
end
