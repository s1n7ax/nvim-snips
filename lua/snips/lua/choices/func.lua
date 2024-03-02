local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node
local r = ls.restore_node

return function()
	return fmt('{}', {
		c(1, {
			fmt(
				[[
          function M:{}({})
						{}
          end
        ]],
				{
					r(1, 'name', i(1, 'name')),
					r(2, 'param'),
					r(3, 'body'),
				}
			),
			fmt(
				[[
          function M.{}({})
						{}
          end
        ]],
				{
					r(1, 'name'),
					r(2, 'param'),
					r(3, 'body'),
				}
			),
			fmt(
				[[
					local function {}({})
						{}
					end
				]],
				{
					r(1, 'name'),
					r(2, 'param'),
					r(3, 'body'),
				}
			),

			fmt(
				[[
					local {} = function({})
						{}
					end
				]],
				{
					r(1, 'name'),
					r(2, 'param'),
					r(3, 'body'),
				}
			),
		}),
	})
end