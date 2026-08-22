-- Lazy bootstrap

local M = {}

-- Nest Lazy Bootstrap in a function for config modularity
function M.setup(spec)
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
      vim.api.nvim_echo({
        { "Failed to clone lazy/nvim:\n", "ErrorMsg" },
	{ out, "WarningMsg" },
	{ "\nPress any key to exit..." },
      }, true, {})
      vim.fn.getchar()
      os.exit(1)
    end
  end
  vim.opt.rtp:prepend(lazypath)

  -- Make sure to set up mapleader and maplocalleader
  -- before loading lazy.nvim so mappings are correct
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "

  -- Setup lazy.nvim
  require("lazy").setup({
    spec = spec,
    defaults = {
      autocmds = true,
      keymaps = true,
    },
    icons = {
      misc = {
	dots = "󰇘",
      },
      ft = {
        octo = "",
      },
      dap = {
        Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
	Breakpoint = " ",
	BreakpointCondition = " ",
	BreakpointRejected = { " ", "DiagnosticError" },
	LogPoint = ".>",
      },
      diagnostics = {
        Error = " ",
	Warn = " ",
	Hint = " ",
	Info = " ",
      },
      git = {
        added = " ",
	modified = " ",
	removed = " ",
      },
      kinds = {
        Array = " ",
	Boolean = "󰨙 ",
	Class = " ",
	Codeium = "󰘦 ",
	Color = " ",
	Control = " ",
	Collapsed = " ",
	Constant = "󰏿 ",
	Constructor = " ",
	Copilot = " ",
	Enum = " ",
	EnumMember = " ",
	Event = " ",
	Field = " ",
	File = " ",
	Folder = " ",
	Function = "󰊕 ",
	Interface = " ",
	Key = " ",
	Keyword = " ",
	Method = "󰊕 ",
	Module = " ",
	Namespace = "󰦮 ",
	Null = " ",
	Number = "󰎠 ",
	Object = " ",
	Operator = " ",
	Package = " ",
	Property = " ",
	Reference = " ",
	Snippet = "󱄽 ",
	String = " ",
	Struct = "󰆼 ",
	Supermaven = " ",
	TabNine = "󰏚 ",
	Text = " ",
	TypeParameter = " ",
	Unit = " ",
	Value = " ",
	Variable = "󰀫 ",
      },
    },
    kind_filter = {
      default = {
        "Class",
	"Constructor",
	"Enum",
	"Field",
	"Function",
	"Interface",
	"Method",
	"Module",
	"Namespace",
	"Package",
	"Property",
	"Struct",
	"Trait",
      },
      markdown = false,
      help = false,
      lua = {
        "Class",
	"Constructor",
	"Enum",
	"Field",
	"Function",
	"Interface",
	"Method",
	"Module",
	"Namespace",
	"Property",
	"Struct",
	"Trait",
      },
    },

    install = { colorscheme = "oxocarbon" },
    checker = {
      enabled = true,
      notify = false,
    },
  })
end

return M
