# nvim-snips (WIP)

These are my [LuaSnip](https://github.com/L3MON4D3/LuaSnip) snippets. Feel free
to get an inspiration, personalize.

## How to install

Using [packer](https://github.com/wbthomason/packer.nvim)

```lua
use({
    's1n7ax/nvim-snips',
    requires = {
        's1n7ax/nvim-ts-utils',
        'L3MON4D3/LuaSnip',
    },
    config = function()
        -- configure
    end,
})
```

## Snippets

* [Lua](doc/lua.md)
* [JavaScript](doc/javascript.md)
* [JavaScript + React](doc/javascriptreact.md)
