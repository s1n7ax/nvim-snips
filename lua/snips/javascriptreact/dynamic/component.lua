local ls = require('luasnip')
local TSReact = require('ts-utils.typescriptreact')

local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local f = ls.function_node
local t = ls.text_node

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
				if not ts_react:has_react_import() then
					vim.api.nvim_buf_set_lines(0, 0, 0, true, {
						'import React from "react"',
						'',
					})
				end

				return {}
			end, {}),
			t(vim.fn.expand('%:t:r')),
			i(1, ''),
		}
	)
end