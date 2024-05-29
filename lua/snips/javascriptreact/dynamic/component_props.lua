local ls = require('luasnip')
local TSReact = require('ts-utils.typescriptreact')

local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local f = ls.function_node
local t = ls.text_node
local d = ls.dynamic_node
local sn = ls.snippet_node

local ts_react = TSReact:new()

return function()
	return d(1, function()
		local cmp_name = ts_react:get_component_name()

		if cmp_name then
			return sn(
				1,
				fmt(
					[[
					export interface {}Prop {{
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
					export interface {}Prop {{
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