local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local str = require('snips.utils.str')

local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node
local r = ls.restore_node

local indentation = str.get_indent_str()
local bt = str.box_trim_lines

return function()
	return fmt('{}', {
		c(1, {
			fmt(
				bt([[
          function M:{}({})
            {}{}
          end
        ]]),
				{
					r(1, 'name', i(1, 'name')),
					r(2, 'param'),
					t(indentation),
					r(3, 'body'),
				}
			),
			fmt(
				bt([[
          function M.{}({})
            {}{}
          end
        ]]),
				{
					r(1, 'name'),
					r(2, 'param'),
					t(indentation),
					r(3, 'body'),
				}
			),
			fmt(
				bt([[
          local function {}({})
            {}{}
          end
        ]]),
				{
					r(1, 'name'),
					r(2, 'param'),
					t(indentation),
					r(3, 'body'),
				}
			),

			fmt(
				bt([[
          local {} = function({})
            {}{}
          end
        ]]),
				{
					r(1, 'name'),
					r(2, 'param'),
					t(indentation),
					r(3, 'body'),
				}
			),
		}),
	})
end