local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt
local str = require('snips.utils.str')

local t = ls.text_node
local r = ls.restore_node

local indentation = str.get_indent_str()
local bt = str.box_trim_lines

return function()
  return fmt(
    bt([[
    ({}) => {{
      {}{}
    }}]]),
    { r(1, 'param'), t(indentation), r(2, 'body') }
  )
end
