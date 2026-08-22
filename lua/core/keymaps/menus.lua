--[[
-- All maps related to menus, other windows, etc.
--]]

local map = require("core.util").map

-- Exit to netrw
map("n", "<leader>pv", vim.cmd.Ex, opts, { desc = "Open netrw" })
-- View diagnostic inline
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic (inline)" })
