local module_util = require('snips.utils.module')
local im = module_util.importer('snips.lua')

local M = {
  anonymous_func = im('anonymous_function'),
  noarg_anonymous_func = im('noarg_anonymous_function'),
  import = im('import'),
  stdout = im('stdout'),
  pretty_print = im('pretty_print'),

  ----------------------------------------------------------------------
  --                              choice                              --
  ----------------------------------------------------------------------
  function_choice = im('function_choice'),
  func_with_doc_choice = im('function_with_doc_choice'),
  module_choice = im('module_choice'),
  variable_choice = im('variable_choice'),
}

return M
