local ls = require('luasnip')
local lua = require('snips.lua')
local s = ls.s

local M = {}

function M.run()
  ls.cleanup()

  ls.add_snippets('lua', {
    s('v', lua.dynamic.variable()),
  })
end

return M
