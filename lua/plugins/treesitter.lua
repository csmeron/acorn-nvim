return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  confg = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "markdown",
        "markdown_inline",
        "javascript",
        "typescript",
      },
      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
