local module_util = require('snips.utils.module')
local im = module_util.importer('snips.javascript')

local M = {
  class = im('class'),
  constructor = im('constructor'),
  method = im('method'),
  declarative_function = im('declarative_function'),
  lexical_declarative_arrow_function = im('lexical_declarative_arrow_function'),
  inline_anonymous_function = im('inline_anonymous_function'),
  multiline_anonymous_function = im('multiline_anonymous_function'),

  ----------------------------------------------------------------------
  --                              choice                              --
  ----------------------------------------------------------------------
  stdout_choice = im('stdout_choice'),
  function_choice = im('function_choice'),
  anonymous_function_choice = im('anonymous_function_choice'),

  ----------------------------------------------------------------------
  --                             context                              --
  ----------------------------------------------------------------------
  function_context = im('function_context'),
}

return M
