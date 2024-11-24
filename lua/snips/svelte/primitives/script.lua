local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local r = ls.restore_node

return function()
	return fmt(
		[[
			<script lang="ts">
				{}
			</script>
		]],
		{
			r(1, 'content'),
		}
	)
end
