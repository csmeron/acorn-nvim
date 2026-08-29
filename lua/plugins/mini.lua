return {

  -- main mini init
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    local icons = require("mini.icons")
    icons.setup()
    icons.tweak_lsp_kind()
    

    -- mini.basics
    require("mini.basics").setup({
      options = { basic = false, extra_ui = true },
      mappings = {
        basic = true,
        windows = true,
        move_with_alt = true,
      },
      autocommands = {
        basic = true,
        relnum_in_visual_mode = true,
      },
      silent = true,
    })

    -- mini.notify and starter dash
    local notify = require ("mini.notify")
    notify.setup()
    vim.notify = notify.make_notify()
    require("mini.starter").setup()

    -- text editing basics (thank the lord)
    require("mini.surround").setup()
    require("mini.pairs").setup()
    require("mini.comment").setup()

    -- basic git functionality
    require("mini.git").setup()
    require("mini.diff").setup()

    -- statusline and tabline? might go back to lualine and tabbuf we'll see, good enough for now tho
    require("mini.statusline").setup()
    require("mini.tabline").setup()
  end
}
