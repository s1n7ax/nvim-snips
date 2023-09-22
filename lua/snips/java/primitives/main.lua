local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt
local r = ls.restore_node
local i = ls.insert_node

local template = [[public static void main(String []args) {{
	{}
}}
]]

return function()
  return fmt(template, {
    i(1),
  })
end
