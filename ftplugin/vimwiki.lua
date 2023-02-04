local k = vim.keymap
local o = vim.opt

-- Line wrapping for Vimwiki
o.wrap = true

-- Turn on Calendar
k.set({'n', 'v', 'i'}, '<leader>c', ':Calendar<CR>')
