# Kuberenetes snippets

```lua
local ls = require('luasnip')
local kubernetes = require('snips.kubernetes')
local s = ls.s

ls.add_snippets('yaml', {
    s('pod', kubernetes.pod()),
    s('rs', kubernetes.replicaset()),
    s('dep', kubernetes.deployment()),
    s('ser', kubernetes.service()),
})
```
