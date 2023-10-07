local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local r = ls.restore_node
local c = ls.choice_node

return function()
	return c(1, {
		fmt('local {name}={value}', {
			name = r(1, 'name', i(nil, 'name')),
			value = r(2, 'value', i(nil, 'value')),
		}),

		fmt('{name}={value}', {
			name = r(1, 'name', i(nil, 'name')),
			value = r(2, 'value', i(nil, 'value')),
		}),
	})
end
