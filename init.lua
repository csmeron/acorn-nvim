--[[
-- Init for Bootstrap and Module/Spec Import
-- Uses lazy.nvim for plugin management
--]]

-- Import core modules
local core = {
  "core.options",
  "core.keymaps",
}

for _, mod in ipairs(core) do
  require(mod)
end
