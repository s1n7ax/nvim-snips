local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt

local r = ls.restore_node

return function()
	return fmt([[new Promise((res, rej) => {{{}}})]], {
		r(1, 'param'),
	})
end
