--[[
-- Navigation-related keymaps
--]]

local map = require("core.util").map

-- Allows navigation with the vimkeys while in
-- INSERT mode if CTRL is held
map("i", "<C-b>", "<ESC>^i", { desc = "Move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Move end of line" })
map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

-- Window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

-- Buffer/Tab navigation
map("n", "<tab>", "<cmd>bnext<CR>", { desc = "Move to next buffer" })
map("n", "<S-tab>", "<cmd>bprevious<CR>", { desc = "Move to previous buffer" })
map("n", "<leader>x", "<cmd>bdelete!<CR>", { desc = "Close current buffer" })

-- Resizing via arrows
-- (Not really nav related but just throwing it in with window nav)
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Browse (Explorer/Netrw)
map("n", "<leader>pv", vim.cmd.Ex, opts, { desc = "Open netrw" }) -- netrw
map("n", "<leader>e", function()
  require("snacks").explorer()
end, { desc = "Toggle Explorer" })

-- View diagnostic inline
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic (inline)" })
