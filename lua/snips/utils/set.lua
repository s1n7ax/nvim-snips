local List = require('snips.utils.list')

local M = List:new()

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
  if not self:contains(value) then
    table.insert(self.tbl, value)
  end
end

return M
