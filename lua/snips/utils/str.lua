local M = {}

function M.get_indent_str()
  ---@diagnostic disable-next-line: undefined-global
  local tab_stop = vim.opt.softtabstop:get()

  ---@diagnostic disable-next-line: undefined-global
  if vim.o.expandtab then
    return string.rep(' ', tab_stop)
  end

  return '\t'
end

function M.get_line_iter(str)
  if str:sub(-1) ~= '\n' then
    str = str .. '\n'
  end

  return str:gmatch('(.-)\n')
end

function M.box_trim_lines(str)
  local new_str = ''

  for line in M.get_line_iter(str) do
    line = line:gsub('^%s+', '')
    line = string.gsub(line, '%s+$', '')
    new_str = new_str .. '\n' .. line
  end

  return new_str
end

return M
