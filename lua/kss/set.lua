local g = vim.g
local o = vim.o

-- Globals
o.number = true
o.relativenumber = true
vim.cmd.colorscheme("gruvbox")
o.showtabline = 2
o.modeline = false
o.clipboard = 'unnamedplus'
o.ignorecase = true
o.termguicolors = true

-- craftzdog/dotfiles-public/
o.smartindent = true
o.wrap = false

-- Highlighting the line after entering in Insert Mode
o.cursorline = true
-- o.cursorcolumn = true

-- Python settings
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
o.smartindent = true

-- Trimming Whitespaces
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.py", "*.lua"},
  callback = require('kss.utilities.utils').trim_trailing_whitespaces,
})

-- Undo Dir
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true
