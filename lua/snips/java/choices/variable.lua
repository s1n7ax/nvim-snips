local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt
local r = ls.restore_node
local i = ls.insert_node
local c = ls.choice_node
local t = ls.text_node

-- public String name = "srinesh";
local instance_var = '{modifier} {type} {name} = {value};'
local static_var = '{modifier} static {type} {name} = {value};'

return function()
  return c(1, {
    fmt(instance_var, {
      modifier = c(1, {
        t('private'),
        t('public'),
        t('protected'),
      }),

      type = r(2, 'type', i(nil, 'type')),
      name = r(3, 'name', i(nil, 'name')),
      value = r(4, 'value', i(nil, 'value')),
    }),
    fmt(static_var, {
      modifier = c(1, {
        t('private'),
        t('public'),
        t('protected'),
      }),

      type = r(2, 'type', i(nil, 'type')),
      name = r(3, 'name', i(nil, 'name')),
      value = r(4, 'value', i(nil, 'value')),
    }),
  })
end
