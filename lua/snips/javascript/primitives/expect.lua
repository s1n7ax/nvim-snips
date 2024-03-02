local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return function()
	return fmt("expect('{}').to{}", {
		i(1, 'actual'),
		i(2),
	})
end