local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local c = ls.choice_node

local input = i(1, 'value')

return fmt('console.{}', {
  c(1, {
    fmt('log({})', { input }),
    fmt('error({})', { input }),
    fmt('info({})', { input }),
    fmt('debug({})', { input }),
  }),
})
