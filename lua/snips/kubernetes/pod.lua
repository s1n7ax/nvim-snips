local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return function()
  return fmt(
    [[
      apiVersion: v1
      kind: Pod
      metadata:
        name: {}
        labels:
          {}:{}
      spec:
        containers:
        - name: {}
          image: {}:{}
          ports:
          - containerPort: {}
    ]],
    {
      i(1, 'name'),
      i(2, 'key'),
      i(3, 'value'),
      i(4, 'container_name'),
      i(5, 'image'),
      i(6, '1.0'),
      i(7, '80'),
    }
  )
end
