local ls = require('luasnip')

local rep = require('luasnip.extras').rep
local fmt = require('luasnip.extras.fmt').fmt
local i = ls.insert_node
local c = ls.choice_node
local t = ls.text_node
local r = ls.restore_node

return function()
	return fmt('{}', {
		c(1, {
			fmt(
				[[
					local {} = {{}}

					{}

					return {}
				]],
				{
					r(1, 'name', i(1, 'name')),
					i(2),
					rep(1),
				}
			),

			fmt(
				[[
					---@class {}
					local {} = {{}}

					function {}:new(args)
						local o = {{{}}}
						setmetatable(o, self)
						self.__index = self
						return o
					end

					{}

					return {}
				]],
				{
					i(1, 'ClassName'),
					t('M'),
					t('M'),
					i(2),
					i(3),
					t('M'),
				}
			),
		}),
	})
end