local module_util = require('snips.utils.module')
local im_choices = module_util.importer('snips.java.choices')

local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep
local i = ls.insert_node

local template = [[{access_modifiler} {return_type} {name}({param}) {{
	{body}
}}]]

return function()
	return fmt(template, {
		access_modifiler = im_choices('access_modifiers')(),
		return_type = i(2, 'void'),
		name = i(3, 'name'),
		param = i(4),
		body = i(5),
	})
end