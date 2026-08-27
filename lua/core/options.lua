--[[
-- Base Neovim Options
--]]

local o = vim.opt

-- General Options
o.clipboard = "unnamedplus" -- use system clipboard
o.mouse = "a" -- enable mouse support
o.mousescroll = "ver:25,hor:6" -- customize mouse scroll
o.switchbuf = "usetab"
o.undofile = true
o.cursorline = true -- comment/uncomment to disable cursor line highlighting
o.cursorlineopt = "number" -- highlight the number under the cursor
o.updatetime = 250
o.timeoutlen = 400

-- Tab/Indent-related Options
o.expandtab = true -- sets indents to use spaces instead of tabs
o.shiftwidth = 2 -- number of spaces to use for each indent step
o.tabstop = 2 -- number of spaces that a <Tab> counts for
o.softtabstop = 2 -- number of spaces that a <Tab> counts for while editing
o.smartindent = true -- enables smart indentation (duh)
o.breakindent = true
o.breakindentopt = "list:-1"

-- UI-related Options
o.number = true -- enables line numbers
o.conceallevel = 2
o.signcolumn = "yes:1"
o.list = true
o.winborder = "single"
o.pumborder = "single"
o.pumheight = 10
o.pummaxwidth = 100
o.ruler = false -- dont show cursor coordinates
o.shortmess = "CFOSWaco" -- disables some builtin completion msgs (from minimax)
o.cursorlineopt = 'screenline,number' -- show cursorline per screenline
o.splitbelow = true
o.splitright = true
o.splitkeep = "screen"
o.showmode = true -- temporarily, will use lualine in the future

-- Editing
o.autoindent = true
o.expandtab = true
o.formatoptions = "rqnl1j" -- improve comment editing
o.ignorecase = true
o.incsearch = true
o.infercase = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
o.spelloptions = "camel"
o.iskeyword = '@,48-57,_,192-255,-' -- Treat dash as `word` textobject part

-- Built-in Completion
o.complete = ".,w,b,kspell"
o.completeopt = "menuone,noselect,fuzzy,nosort"
o.completetimeout = 100

-- better grep
o.gdefault = true
o.grepprg = "rg --vimgrep"
o.grepformat = "%f:%l:%c:%m"
o.path = ".", "**"

-- Simpler built-in diagnostics (taken from MiniMax)
local diagnostic_opts = {
  -- Show signs on top of any other sign, but only for warnings and errors
  signs = { priority = 9999, severity = { min = 'WARN', max = 'ERROR' } },

  -- Show all diagnostics as underline (for their messages type `<Leader>ld`)
  underline = { severity = { min = 'HINT', max = 'ERROR' } },

  -- Show more details immediately for errors on the current line
  virtual_lines = false,
  virtual_text = {
    current_line = true,
    severity = { min = 'ERROR', max = 'ERROR' },
  },

  -- Don't update diagnostics when typing
  update_in_insert = false,
}
