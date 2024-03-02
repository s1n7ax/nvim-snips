local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return function()
	return fmt(
		[[
		import React from "react";

		export default () => {{
			return({})
		}}
		]],
		{
			i(1, '<></>'),
		}
	)
end