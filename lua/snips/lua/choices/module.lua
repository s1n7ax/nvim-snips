local ls = require('luasnip')
local su = require('snips.utils.string')

local rep = require('luasnip.extras').rep
local fmt = require('luasnip.extras.fmt').fmt
local i = ls.insert_node
local c = ls.choice_node
local t = ls.text_node
local r = ls.restore_node

local tl = su.box_trim_lines

local indentation = string.rep(' ', vim.opt.softtabstop:get())

return function()
  return fmt('{}', {
    c(1, {
      fmt(
        tl([[
          local {} = {{}}

          {}

          return {}
        ]]),
        {
          r(1, 'name'),
          i(2),
          rep(1),
        }
      ),

      fmt(
        tl([[
          local {} = {{}}

          function {}:new(o)
              {}o = o or {{}}
              {}setmetatable(o, self)
              {}self.__index = self
              {}return o
          end

          {}

          return {}
        ]]),
        {
          r(1, 'name'),
          rep(1),
          t(indentation),
          t(indentation),
          t(indentation),
          t(indentation),
          i(2),
          rep(1),
        }
      ),
    }),
  })
end
