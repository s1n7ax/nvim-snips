local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

-- local sn = ls.snippet_node
local i = ls.insert_node
-- local c = ls.choice_node
-- local t = ls.text_node
-- local d = ls.dynamic_node

return function()
	return fmt(
		[[
		apiVersion: v1
		kind: Secret
		metadata:
			name: {}
			labels:
				{}
		type: Opaque
		data:
			{}
		]],
		{
			i(1, 'name'),
			i(2),
			i(3),
		}
	)
end
