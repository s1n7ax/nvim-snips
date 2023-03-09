local module_util = require('snips.utils.module')
local id = module_util.importer('snips.rust.dynamic')
local ip = module_util.importer('snips.rust.primitives')

return {
  primitives = {
    variable = ip('variable'),
    vector_macro = ip('vector-macro'),
    vector_struct = ip('vector-struct'),
  },
  dynamic = {
    stdout = id('stdout'),
  },
}
