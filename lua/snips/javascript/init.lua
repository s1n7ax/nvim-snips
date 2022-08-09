local func = require('snips.javascript.function')
local stdout = require('snips.javascript.stdout')
local class = require('snips.javascript.class')
local constructor = require('snips.javascript.constructor')

local M = {
  func = func,
  stdout = stdout,
  class = class,
  constructor = constructor,
}

return M
