local module_util = require('snips.utils.module')
local ip = module_util.importer('snips.lua.primitives')
local ic = module_util.importer('snips.lua.choices')
local id = module_util.importer('snips.lua.dynamic')

local M = {
  primitives = {
    anonymous_func = ip('anonymous_func'),
    noarg_anonymous_func = ip('noarg_anonymous_func'),
    import = ip('import'),
    stdout = ip('stdout'),
    pretty_print = ip('pretty_print'),
    test_desc = ip('test_desc'),
    test_it = ip('test_it'),
  },

  choices = {
    func = ic('func'),
    func_with_doc = ic('func_with_doc'),
    module = ic('module'),
    variable = ic('variable'),
  },

  dynamic = {
    variable = id('variable'),
  },
}

return M
