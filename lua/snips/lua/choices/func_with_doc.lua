local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local num = require('snips.utils.number')
local LuaTS = require('ts-utils.lua')
local List = require('snips.utils.list')
local Set = require('snips.utils.set')

local sn = ls.sn
local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node

local lua_ts = LuaTS:new()

local function get_doc_comment_snip()
	local comment_lines = List:new()
	local snip_nodes = List:new()
	local index = num.get_index_iter()

	lua_ts:refresh()
	local info = lua_ts:get_curr_container_func_info()

	if not info then
		return sn(nil, t(''))
	end

	comment_lines:add('{}')
	snip_nodes:add(i(index(), 'Does mysterious stuff'))

	for _, param in ipairs(info.parameters) do
		local name = param.name

		comment_lines:add('@param {{{}}} ' .. name .. ' {}')
		snip_nodes:add(i(index(), 'any'))
		snip_nodes:add(i(index(), 'is a mysterious parameter'))
	end

	if info.returns then
		local types = Set:new()

		for _, returns in ipairs(info.returns) do
			for _, return_type in ipairs(returns) do
				types:add(return_type)
			end
		end

		local types_str = types:concat('|')

		comment_lines:add('@returns {{{}}} {}')
		snip_nodes:add(i(index(), types_str))
		snip_nodes:add(
			i(
				index(),
				string.format('%s mysterious data', #types_str > 1 and 'are' or 'is')
			)
		)
	end

	local lines = comment_lines
		:map(function(line)
			return string.format('---%s', line)
		end)
		:concat('\n')

	return sn(nil, fmt(lines, snip_nodes.tbl))
end

return function()
	return fmt('{}', {
		c(1, {
			fmt(
				[[
					{}
					function {}({})
						{}
					end
				]],
				{
					d(4, get_doc_comment_snip, { 1, 2, 3 }),
					r(1, 'name', i(1, 'name')),
					i(2),
					i(3),
				}
			),
			fmt(
				[[
					{}
					local function {}({})
						{}
					end
				]],
				{
					d(4, get_doc_comment_snip, { 1, 2, 3 }),
					r(1, 'name'),
					i(2),
					i(3),
				}
			),
			fmt(
				[[
					{}
					local {} = function({})
						{}
					end
				]],
				{
					d(4, get_doc_comment_snip, { 1, 2, 3 }),
					r(1, 'name'),
					i(2),
					i(3),
				}
			),
		}),
	})
end