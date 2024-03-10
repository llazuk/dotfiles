require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "javascript", "json", "python", "latex", "nix"},
    highlight = {
        enable = true,
        disable = { "latex" },
        additional_vim_regex_highlighting = {"latex"}
    },
    indent = {
        enable = true
    }
}
