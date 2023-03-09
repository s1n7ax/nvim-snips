local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local i = ls.insert_node

return function()
  return fmt('Vec::<{}>::new();', {
    i(1, 'i32'),
  })
end
