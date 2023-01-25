local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local r = ls.restore_node
local c = ls.choice_node

return function()
  return fmt('console.{}', {
    c(1, {
      fmt('log({})', { r(1, 'value') }),
      fmt('error({})', { r(1, 'value') }),
      fmt('info({})', { r(1, 'value') }),
      fmt('debug({})', { r(1, 'value') }),
    }),
  })
end
