-- Spec for UI-based plugins that *aren't* from Mini

return {

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "Smiteshp/nvim-navic",
      "meuter/lualine-so-fancy.nvim",
      "nvim-tree/nvim-web-devicons",
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (Which-Key)",
      },
    },
  },

}
