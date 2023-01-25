local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local str = require('snips.utils.str')

local i = ls.insert_node
local t = ls.text_node
local bt = str.box_trim_lines

local indentation = str.get_indent_str()

return function()
  return fmt(
    bt([[
      function ({})
        {}{}
      end
    ]]),
    {
      i(1),
      t(indentation),
      i(2),
    }
  )
end
