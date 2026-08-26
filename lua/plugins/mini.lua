return {

  "echasnovski/mini.nvim",
  version = false,
  config = function()
    local icons = require("mini.icons")
    icons.setup()
    icons.tweak_lsp_kind()

    require("mini.basics").setup({
      options = { basic = false, extra_ui = false },
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
  end

}
