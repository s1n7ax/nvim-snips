local cwd = vim.fn.getcwd()
vim.opt.runtimepath:prepend(cwd)

--[[
-- plugin name will be used to reload the loaded modules
--]]
local package_name = 'snips'

-- add the escape character to special characters
local escape_pattern = function(text)
  return text:gsub('([^%w])', '%%%1')
end

local function starts_with(str, starts_with_str)
  return string.sub(str, 1, string.len(starts_with_str)) == starts_with_str
end

-- unload loaded modules by the matching text
local unload_packages = function(pkg)
  -- local esc_package_name = escape_pattern(pkg)
  local esc_package_name = pkg

  for module_name, _ in pairs(package.loaded) do
    if starts_with(module_name, esc_package_name) then
      package.loaded[module_name] = nil
    end
  end
end

-- executes the run method in the package
local run_action = function()
  require(package_name).run()
end

-- unload and run the function from the package
function Reload_and_run()
  unload_packages('snips')
  unload_packages('ts-utils')
  run_action()
end

---@diagnostic disable-next-line: undefined-global
local set_keymap = vim.api.nvim_set_keymap

set_keymap('n', ',r', '<cmd>luafile dev/init.lua<cr>', {})
set_keymap('n', '<leader><leader>w', '<cmd>lua Reload_and_run()<cr>', {})
