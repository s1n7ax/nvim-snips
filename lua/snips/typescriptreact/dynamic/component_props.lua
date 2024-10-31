local ls = require('luasnip')
local TSReact = require('ts-utils.typescriptreact')

local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local t = ls.text_node
local d = ls.dynamic_node
local sn = ls.snippet_node

local ts_react = TSReact:new()

return function()
	return d(1, function()
		local cmp_name = ts_react:get_component_name()

		if cmp_name then
			local s_row, s_col, e_row, e_col = ts_react:component_prop_range()

			vim.api.nvim_buf_set_text(
				0,
				s_row,
				s_col + 1,
				e_row,
				e_col - 1,
				{ string.format('{}: %sProps', cmp_name) }
			)

			return sn(
				1,
				fmt(
					[[
					export interface {}Props {{
						{}
					}}
					]],
					{
						t(cmp_name),
						i(1),
					}
				)
			)
		else
			return sn(
				1,
				fmt(
					[[
					export interface {}Props {{
						{}
					}}
					]],
					{
						i(1, 'Component'),
						i(2),
					}
				)
			)
		end
	end, {})
end