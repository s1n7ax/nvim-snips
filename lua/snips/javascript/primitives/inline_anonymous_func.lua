local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local r = ls.restore_node

return function()
  return fmt('({}) => {}', { r(1, 'param'), r(2, 'body') })
end
