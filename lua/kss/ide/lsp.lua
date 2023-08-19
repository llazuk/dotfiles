require("mason").setup()
require("mason-lspconfig").setup()

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['lua_ls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['jedi_language_server'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

require('lspconfig')['texlab'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

require('lspconfig')['rnix'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

