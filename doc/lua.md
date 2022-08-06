# Lua snippets

```lua
local ls = require('luasnip')
local lua = require('snips.lua')
local s = ls.s
local i = ls.insert_node

ls.add_snippets('lua', {
    s('f', lua.func(), {
        stored = {
            name = i(1, 'name'),
        },
    }),
    s('fd', lua.func_with_doc(), {
        stored = {
            name = i(1, 'name'),
        },
    }),
    s('fa', lua.anonymous_func()),
    s('i', lua.import()),
    s('v', lua.variable()),
    s('o', lua.stdout()),
    s('mod', lua.module()),
})
```
