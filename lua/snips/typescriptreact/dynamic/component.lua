local ls = require('luasnip')
-- local TSReact = require('ts-utils.typescriptreact')

local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node

local curr_file = function()
	return vim.fn.expand('%:t:r')
end
-- local curr_file = f(function()
-- 	return vim.fn.expand('%:t:r')
-- end)

return function()
	return c(1, {
		fmt(
			[[
			export interface {}Props {{
				{}
			}}

			export default function {}({{}}: {}Props) {{
				return({})
			}}
			]],
			{
				f(curr_file),
				i(2, ''),
				f(curr_file),
				f(curr_file),
				i(1, ''),
			}
		),
		fmt(
			[[
			export interface {}Props {{
				{}
			}}

			const {} = ({{}}: {}Props) => {{
				return({})
			}}

			export default {}
			]],
			{
				f(curr_file),
				i(2, ''),
				f(curr_file),
				f(curr_file),
				i(1, ''),
				f(curr_file),
			}
		),
	})
end