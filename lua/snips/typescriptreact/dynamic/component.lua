local ls = require('luasnip')

local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node

local page_to_prefix_map = {
	['page.tsx'] = 'Page',
	['layout.tsx'] = 'Layout',
	['error.tsx'] = 'ErrorPage',
	['loading.tsx'] = 'LoadingPage',
}

local is_special_file = function(file_name)
	for k in pairs(page_to_prefix_map) do
		if k == file_name then
			return true
		end
	end
	return false
end

local curr_file = function()
	local curr_file_with_ext = vim.fn.expand('%:t')

	if is_special_file(curr_file_with_ext) then
		local dir_name = vim.fn.expand('%:h:t')
		return string.upper(dir_name:sub(1, 1))
			.. dir_name:sub(2)
			.. page_to_prefix_map[curr_file_with_ext]
	end

	-- use the current file name
	return vim.fn.expand('%:t:r')
end

return function()
	return c(1, {
		fmt(
			[[
			export default function {}() {{
				return({})
			}}
			]],
			{
				f(curr_file),
				i(1, ''),
			}
		),
		fmt(
			[[
			export interface {}Props {{
				{}
			}}

			export default function {}({{}}: {}Props) {{
				return({})
			}}
			]],
			{
				f(curr_file),
				i(2, ''),
				f(curr_file),
				f(curr_file),
				i(1, ''),
			}
		),
		fmt(
			[[
			export interface {}Props {{
				{}
			}}

			const {} = ({{}}: {}Props) => {{
				return({})
			}}

			export default {}
			]],
			{
				f(curr_file),
				i(2, ''),
				f(curr_file),
				f(curr_file),
				i(1, ''),
				f(curr_file),
			}
		),
	})
end
