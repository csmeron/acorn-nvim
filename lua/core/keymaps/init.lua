--[[
-- Keymaps Init File
--]]

local util = require("core.util") -- binds `vim.keymap.set` to `util.map`

vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = false })

-- General mappings
util.map("n", "<C-s>", "<cmd>w<CR>", opts) -- general save file
util.map("n", "<C-C>", "<cmd>%y+<CR>", opts) -- general copy (entire file)
util.map("v", "<", "<gv", opts)
util.map("v", ">", ">gv", opts)

-- Toggles and whatnot
util.map("n", "<leader>n", "<cmd>set nu!<CR>", opts) -- toggles line numbers
util.map("n", "<leader>rn", "<cmd>set rnu!<CR>", opts) -- toggles relative line nums
util.map("n", "<leader>/", "gcc", { remap = true, silent = true }) -- toggle comment
util.map("n", "<leader>/", "gc", { remap = true, silent = true }) -- toggle comment


-- Load other keymap files from `core.keymaps`
util.load_directory("core.keymaps", { exclude = { "init" } })
