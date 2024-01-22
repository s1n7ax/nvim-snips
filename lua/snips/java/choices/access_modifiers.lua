local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local str = require('snips.utils.str')

local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node
local r = ls.restore_node

return function()
	return c(1, {
		t('public'),
		t('private'),
		t('protected'),
	})
end
