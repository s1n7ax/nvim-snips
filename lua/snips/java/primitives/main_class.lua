local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt
local r = ls.restore_node
local i = ls.insert_node

local template = [[public class {} {{
	public static void main(String[] args) {{
		{}
	}}
}}]]

return function()
	return fmt(template, {
		r(1, 'name'),
		i(2),
	})
end