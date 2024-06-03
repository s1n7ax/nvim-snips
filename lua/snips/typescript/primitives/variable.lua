local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return function()
	return fmt('let {} = {}', {
		i(1, 'name'),
		i(2, 'value'),
	})
end