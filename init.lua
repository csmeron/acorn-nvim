--[[
-- Init for Bootstrap and Module/Spec Import
-- Uses lazy.nvim for plugin management
-- Uses mini.nvim as primary plugin/modules
--]]

-- Import core modules
local core = {
  "core.options",
  "core.keymaps",
  "config.lualine.basic",
}

-- Send plugins to the Lazy bootstrap
require("core.lazy").setup({import = "plugins"})
-- Requires all core modules
for _, mod in ipairs(core) do
  require(mod)
end

-- colorscheme (temporary until mangement plugin is added)
vim.cmd.colorscheme "rose-pine-moon"
