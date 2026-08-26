--[[
-- Spec for setting up colorschemes
--]]

local theme_list = {
  "oxocarbon",
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
