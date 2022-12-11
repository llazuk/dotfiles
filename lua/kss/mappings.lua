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
k.set('n', '<leader>ff', builtin.find_files, {})
k.set('n', '<leader>fg', builtin.live_grep, {})
k.set('n', '<leader>fb', builtin.buffers, {})
k.set('n', '<leader>fh', builtin.help_tags, {})

-- Nerdtree replacement
k.set({'n', 'v', 'i'}, '<leader>t', ':Explore<Cr>')

-- Easymotion
k.set('n', 's', '<Plug>(easymotion-overwin-f2)')

-- LSP
k.set('n','gd', ':lua vim.lsp.buf.definition()<cr>')
k.set('n','gD', ':lua vim.lsp.buf.declaration()<cr>')
k.set('n','gi', ':lua vim.lsp.buf.implementation()<cr>')
k.set('n','gw', ':lua vim.lsp.buf.document_symbol()<cr>')
k.set('n','gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
k.set('n','gr', ':lua vim.lsp.buf.references()<cr>')
k.set('n','gt', ':lua vim.lsp.buf.type_definition()<cr>')
k.set('n','K', ':lua vim.lsp.buf.hover()<cr>')
k.set('n','<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
k.set('n','<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
k.set('n','<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
