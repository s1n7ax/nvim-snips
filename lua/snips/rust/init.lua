local module_util = require('snips.utils.module')
local id = module_util.importer('snips.rust.dynamic')

return {
  dynamic = {
    stdout = id('stdout'),
  },
}
