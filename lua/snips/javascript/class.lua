local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local str = require('snips.utils.str')

local i = ls.insert_node
local t = ls.text_node

local indentation = str.get_indent_str()
local bt = str.box_trim_lines

return function()
  return fmt(
    bt([[
      class {} {{
        {}{}
      }}
    ]]),
    {
      i(1, 'name'),
      t(indentation),
      i(2),
    }
  )
end
