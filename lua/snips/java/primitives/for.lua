local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep
local i = ls.insert_node

local template =
	[[for(int {index} = 0; {repIndex} < {list}.length; {repIndex}++) {{
	{body}
}}]]

return function()
	return fmt(template, {
		index = i(1, 'i'),
		list = i(2, 'list'),
		repIndex = rep(1),
		body = i(3),
	})
end
