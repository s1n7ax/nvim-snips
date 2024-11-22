local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local r = ls.restore_node
local i = ls.insert_node

return function()
	return fmt('let {} = {}', {
		r(1, 'name', i(nil, 'name')),
		r(2, 'value'),
	})
end
