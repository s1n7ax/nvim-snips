local ls = require('luasnip')
local inline_anonymous_function = require(
  'snips.javascript.inline_anonymous_function'
)
local multiline_anonymous_function = require(
  'snips.javascript.multiline_anonymous_function'
)

local fmt = require('luasnip.extras.fmt').fmt

local c = ls.choice_node

return function()
  return fmt('{}', {
    c(1, {
      inline_anonymous_function(),
      multiline_anonymous_function(),
    }),
  })
end
