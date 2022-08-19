local ls = require('luasnip')
local lexical_declarative_arrow_function = require(
  'snips.javascript.lexical_declarative_arrow_function'
)
local declarative_function = require('snips.javascript.declarative_function')

local fmt = require('luasnip.extras.fmt').fmt

local c = ls.choice_node

return function()
  return fmt('{}', {
    c(1, {
      lexical_declarative_arrow_function(),
      declarative_function(),
    }),
  })
end
