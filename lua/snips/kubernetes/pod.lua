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
      i(2, 'value'),
      i(3, 'container_name'),
      i(4, 'image'),
      i(5, '1.0'),
      i(6, '80'),
    }
  )
end
