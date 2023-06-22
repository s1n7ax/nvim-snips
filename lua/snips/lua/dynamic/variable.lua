local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local c = ls.choice_node
local d = ls.dynamic_node
local sn = ls.snippet_node
local r = ls.restore_node

return function()
  return d(1, function()
    local cur = vim.api.nvim_win_get_cursor(0)
    local row, col = cur[1], cur[2]

    local line = vim.api.nvim_buf_get_text(0, row - 1, col, row - 1, -1, {})[1]

    if line == '' then
      return sn(1, {
        c(1, {
          fmt('local {} = {}', {
            r(1, 'name', i(1, 'name')),
            r(2, 'value', i(2, 'value')),
          }),
          fmt('{} = {}', {
            r(1, 'name', i(1, 'name')),
            r(2, 'value', i(2, 'value')),
          }),
        }),
      })
    end

    return sn(1, {
      c(1, {
        fmt('local {} = ', {
          r(1, 'name', i(1, 'name')),
        }),
        fmt('{} = ', {
          r(1, 'name', i(1, 'name')),
        }),
      }),
    })
  end)
end
