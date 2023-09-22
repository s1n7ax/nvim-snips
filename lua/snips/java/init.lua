local module_util = require('snips.utils.module')
local im_prim = module_util.importer('snips.java.primitives')
local im_choices = module_util.importer('snips.java.choices')

local M = {
  primitives = {
    stdout = im_prim('stdout'),
    class = im_prim('class'),
    main = im_prim('main'),
    main_class = im_prim('main_class'),
  },
  choices = {
    variable = im_choices('variable'),
  },
}

return M
