local ls = require('luasnip')
local sn = ls.snippet_node
local t = ls.text_node
local d = ls.dynamic_node

return function()
	return {
		d(1, function(_, parent)
			return sn(1, t('return ' .. parent.snippet.env.POSTFIX_MATCH))
		end),
	}
end