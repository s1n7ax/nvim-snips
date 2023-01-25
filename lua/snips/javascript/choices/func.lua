local mu = require('snips.utils.module')
local ip = mu.importer('snips.javascript.primitives')

local ls = require('luasnip')


local lexical_declarative_arrow_function = ip('lexical_declarative_arrow_func')
local declarative_function = ip('declarative_func')

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
