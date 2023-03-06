local ls = require('luasnip')

local i = ls.insert_node
local f = ls.function_node
local fmt = require('luasnip.extras.fmt').fmt

return function()
  return fmt('print!("{}{}"{});', {
    i(1),
    f(function(values)
      local param_str = values[1][1]
      local params = vim.split(param_str, ',')

      local filtered_params = vim.tbl_filter(function(param)
        return param:gsub(' ', '') ~= ''
      end, params)

      return string.rep('{}', #filtered_params, ', ')
    end, { 2 }),
    i(2),
  })
end
