require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "javascript", "json", "python", "latex"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true
    }
}
