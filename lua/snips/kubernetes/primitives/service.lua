local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep
local str = require('snips.utils.str')

local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local i = ls.insert_node
local c = ls.choice_node
local t = ls.text_node
local d = ls.dynamic_node

local bt = str.box_trim_lines
local indentation = str.get_indent_str()

local function get_port_snip(args)
  if #args < 1 and not args[1][1] then
    return sn(nil, t('hello world'))
  end

  local type = args[1][1]
  local indent = '      '

  if type == 'NodePort' or type == 'LoadBalancer' then
    return sn(
      nil,
      fmt(
        bt([[
        - port: {}
          {}targetPort: {}
          {}nodePort: {}
        ]]),
        {
          i(1, '30000'),
          indent,
          i(2, '80'),
          indent,
          i(3, '30000'),
        }
      )
    )
  end

  if type == 'ClusterIP' then
    return sn(
      nil,
      fmt(
        [[
        - port: {}
        {}targetPort: {}
        ]],
        {
          i(1, '30000'),
          indent,
          i(2, '80'),
        }
      )
    )
  end
end

return function()
  return fmt(
    [[
        apiVersion: v1
        kind: Service
        metadata:
          name: {}
          labels:
            {}
        spec:
          selector:
            {}
          type: {}
          ports:
            {}
        ]],
    {
      i(1, 'name'),
      i(2),
      i(3),
      c(4, {
        t('ClusterIP'),
        t('NodePort'),
        t('LoadBalancer'),
      }),
      d(5, get_port_snip, { 4 }),
    }
  )
end
