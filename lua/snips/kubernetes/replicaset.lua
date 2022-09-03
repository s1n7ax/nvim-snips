local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

local i = ls.insert_node

return function()
  return fmt(
    [[
      apiVersion: apps/v1
      kind: ReplicaSet
      metadata:
        name: {}
        labels:
          {}
      spec:
        replicas: {}

        selector:
          matchLabels:
            {}

        template:
          metadata:
            labels:
              {}
          spec:
            containers:
            - name: {}
              image: {}:{}
              ports:
              - containerPort: {}
    ]],
    {
      i(1, 'name'),
      i(2, 'label'),
      i(3, '5'),
      i(4, 'label'),
      rep(4),
      i(5, 'container_name'),
      i(6, 'image'),
      i(7, '1.0'),
      i(8, '80'),
    }
  )
end
