local func = require('snips.lua.function')
local function_with_doc = require('snips.lua.function_with_doc')
local anonymous_func = require('snips.lua.anonymous_function')
local import = require('snips.lua.import')
local module = require('snips.lua.module')
local variable = require('snips.lua.variable')
local stdout = require('snips.lua.stdout')

local M = {
  anonymous_func = anonymous_func,
  func = func,
  func_with_doc = function_with_doc,
  import = import,
  module = module,
  stdout = stdout,
  variable = variable,
}

return M
