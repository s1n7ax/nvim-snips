local M = {}

function M.get_index_iter()
  local index = 1

  return function()
    local temp = index
    index = index + 1
    return temp
  end
end

return M
