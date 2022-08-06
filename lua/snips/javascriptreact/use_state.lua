local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt
local str = require('snips.utils.str')

local i = ls.insert_node
local f = ls.function_node

local bt = str.box_trim_lines

return function()
  return fmt(
    bt([[
      const [{}, {}] = useState({})
    ]]),
    {
      i(1),
      f(function(args)
        local name = args[1][1]

        return string.format('set%s', name:sub(1, 1):upper() .. name:sub(2, -1))
      end, { 1 }),
      i(2),
    }
  )
end
