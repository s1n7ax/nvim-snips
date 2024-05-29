local ls = require('luasnip')
local TSReact = require('ts-utils.typescriptreact')

local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local f = ls.function_node

local ts_react = TSReact:new()

return function()
	return fmt(
		[[
		{}export default function {}() {{
			return({})
		}}
		]],
		{
			f(function()
				vim.print('>>>', ts_react:has_react_import())

				if not ts_react:has_react_import() then
					return {
						'import React from "react"',
						'',
						'',
					}
				end

				return ''
			end, {}),
			i(1, 'Name'),
			i(2, ''),
		}
	)
end