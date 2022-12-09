local k = vim.keymap

-- Unmapping keyboard arrows
k.set({'n', 'v', 'i'}, '<Down>', '<Nop>', {noremap = true})
k.set({'n', 'v', 'i'}, '<Left>', '<Nop>', {noremap = true})
k.set({'n', 'v', 'i'}, '<Right>', '<Nop>', {noremap = true})
k.set({'n', 'v', 'i'}, '<Up>', '<Nop>', {noremap = true})

-- Tabs navigation
k.set({'n', 'v', 'i'}, '<Leader>n', ':tabprevious<CR>', {noremap = true, silent = true})
k.set({'n', 'v', 'i'}, '<Leader>m', ':tabnext<CR>', {noremap = true, silent = true})

-- Better Indentation
k.set('v', '<', '<gv', {noremap = true, silent = true})
k.set('v', '>', '>gv', {noremap = true, silent = true})

-- Turn on Calendar
k.set({'n', 'v', 'i'}, '<leader>c', ':Calendar<CR>')

-- VimWiki Search
k.set({'n', 'v', 'i'}, '<leader>wf', ':VWS ')

-- Limelight and TrueZen
k.set({'n', 'v', 'i'}, '<F11>', ':Limelight!! <Bar> :TZAtaraxis <Cr>')

-- Work Functions
--Add UTM at the end of the string
k.set('n', 'utmf', 'A?utm_source=facebook&utm_medium=newsfeed&utm_campaign=XXX<esc>')
k.set('n', 'utmfv', 'A?utm_source=facebook&utm_medium=video&utm_campaign=XXX<esc>')
k.set('n', 'utmd', 'A?utm_source=display&utm_medium=programmatic&utm_campaign=XXX<esc>')
k.set('n', 'utma', 'A?utm_source=adwords&utm_medium=search&utm_campaign=XXX<esc>')

-- FZF
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Nerdtree replacement
k.set({'n', 'v', 'i'}, '<leader>t', ':Explore<Cr>')

-- Easymotion
k.set('n', 's', '<Plug>(easymotion-overwin-f2)')

