--[[
-- Init for Bootstrap and Module/Spec Import
-- Uses lazy.nvim for plugin management
--]]


-- Import core modules
local core = {
  "core.options",
  "core.keymaps",
}

local plugs = {
  { import = "plugins.ui" } ,
}

-- Send plugins to the Lazy bootstrap
require("core.lazy").setup(plugs)
-- Requires all core modules
for _, mod in ipairs(core) do
  require(mod)
end

-- colorscheme (temporary until mangement plugin is added)
vim.cmd.colorscheme "oxocarbon"
