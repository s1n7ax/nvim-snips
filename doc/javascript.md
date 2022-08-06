# JavaScript snippets

```lua
local ls = require('luasnip')
local js = require('snips.javascript')

local s = ls.s
local i = ls.insert_node

local snippets = function()
    return {
        s('f', js.func(), {
            stored = {
                name = i(1, 'name'),
            },
        }),
        s('o', js.stdout(), {
            stored = {
                value = i(1, 'value'),
            },
        }),
    }
end

ls.add_snippets('javascript', snippets())
ls.add_snippets('typescript', snippets())
ls.add_snippets('javascriptreact', snippets())
ls.add_snippets('typescriptreact', snippets())
```
