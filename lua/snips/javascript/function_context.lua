local ls = require('luasnip')
local JSTS = require('ts-utils.javascript')
local List = require('snips.utils.list')

local anonymous_function_choice = require(
  'snips.javascript.anonymous_function_choice'
)
local lexical_declarative_arrow_function = require(
  'snips.javascript.lexical_declarative_arrow_function'
)

local method = require('snips.javascript.method')
local fmt = require('luasnip.extras.fmt').fmt

local sn = ls.sn
local d = ls.dynamic_node

local js_ts = JSTS:new()

local get_snip = function()
  js_ts:refresh()

  ---@diagnostic disable-next-line: undefined-global
  local row, column = table.unpack(vim.api.nvim_win_get_cursor(0))

  row = row - 1

  ---@diagnostic disable-next-line: undefined-global
  if vim.fn.mode() == 'i' and column > 0 then
    column = column - 1
  end

  local scope = List:new()

  for _, node in ipairs(js_ts:get_scope_at_pos(row, column)) do
    scope:add(node:type())
  end

  if scope:contains('=') or scope:contains('return_statement') then
    return sn(nil, anonymous_function_choice())
  end

  if scope:contains('method_definition') then
    return sn(nil, lexical_declarative_arrow_function())
  end

  if scope:contains('class_declaration') then
    return sn(nil, method())
  end

  return sn(nil, lexical_declarative_arrow_function())
end

return function()
  return fmt('{}', {
    d(1, get_snip),
  })
end
