local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local noarg_anonymous_func = require('snips.lua.primitives.noarg_anonymous_func')
local str = require('snips.utils.str')

local sn = ls.sn
local i = ls.insert_node
local bt = str.box_trim_lines

return function()
  return fmt(bt("it('{}', {})"), {
    i(1, 'what are you testing'),
    sn(2, noarg_anonymous_func()),
  })
end
