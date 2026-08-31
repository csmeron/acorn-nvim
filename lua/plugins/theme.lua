--[[
-- Spec for setting up colorschemes
--]]

local theme_list = {
  "oxocarbon",
  "rose-pine",
  "rose-pine-moon",
  "rose-pine-dawn",
  "onedark",
  "catppuccin",
  "moonfly",
}

return {
   -- Oxocarbon
  {
    "nyoom-engineering/oxocarbon.nvim",
    build = false,
    priority = 1000
  },

  -- Rose Pine + Variations
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000
  },

  -- Onedark (Warmer)
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup {
        style = "warmer"
      }
      require("onedark").load()
    end
  },

  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },

  -- Moonfly
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    priority = 1000,
    lazy = false
  },

  
}
