local M = {}

function M:new(o)
  o = o or {
    tbl = {},
  }

  assert(
    type(o.tbl) == 'table',
    '"tbl" property should be present in the instance'
  )

  setmetatable(o, self)
  self.__index = self
  return o
end

function M:add(value)
  table.insert(self.tbl, value)
end

function M:remove(index)
  table.remove(self.tbl, index)
end

function M:index_of(value)
  for index, ele in ipairs(self.tbl) do
    if ele == value then
      return index
    end
  end

  return -1
end

function M:contains(value)
  for _, ele in ipairs(self.tbl) do
    if value == ele then
      return true
    end
  end

  return false
end

function M:map(callback)
  local new_list = M:new()

  for _, ele in ipairs(self.tbl) do
    local res = callback(ele)

    new_list:add(res)
  end

  return new_list
end

function M:concat(str)
  return table.concat(self.tbl, str)
end

return M
