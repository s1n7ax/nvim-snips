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
      spec:
        containers:
        - name: {}
          image: {}:{}
          ports:
          - containerPort: {}
    ]],
    {
      i(1, 'name'),
      i(2, 'container_name'),
      i(3, 'image'),
      i(4, '1.0'),
      i(5, '80'),
    }
  )
end
