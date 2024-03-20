local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local plugins = { -- Package management
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    -- Colorschemes
    'gruvbox-community/gruvbox',
    'altercation/vim-colors-solarized',

    {
        'vimwiki/vimwiki',
        init = function()
            vim.g.vimwiki_list = {{ path = '~/notes', path_html = '~/notes/vimwiki-html', syntax = 'markdown', ext = '.md' }}
        end,
    },
    'mattn/calendar-vim',
    -- Hyperfocus writing (highlights paragraphs under your cursor)
    'junegunn/limelight.vim',
    -- Distraction free writing (centers the text)
    'Pocco81/true-zen.nvim',
    -- F8 to open tags view
    {
        'stevearc/aerial.nvim',
        config = function() require('aerial').setup() end
    },
    -- Displays thin line at each indentaion
    'lukas-reineke/indent-blankline.nvim',
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    -- Start screen
    'goolord/alpha-nvim',
    { 'romgrk/barbar.nvim', dependencies = 'nvim-tree/nvim-web-devicons' },
    ----FZF and more
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    'easymotion/vim-easymotion',
    'numToStr/Comment.nvim',
    -- Rainbow color brackets
    'luochen1990/rainbow',
    -- Git changes in the sign column
    -- 'mhinz/vim-signify'
    'lewis6991/gitsigns.nvim',
    -- Highlight the letters while using fFtT movement - broken now, wait for a fix
    -- 'unblevable/quick-scope',
    -- Ide setup
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    'jose-elias-alvarez/null-ls.nvim',
    -- Completion setup
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    -- Icons in cmp
    'onsails/lspkind.nvim',
    -- Additional cmp plugins
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    -- Snippet management
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    -- Css colorizer
    'norcalli/nvim-colorizer.lua',
    -- Undo tree Mundo alternative
    'mbbill/undotree',
    -- LaTeX
    -- 'xuhdev/vim-latex-live-preview'
    'lervag/vimtex',

    -- Todo
    -- Git client, may replace it with lazygit
    --'tpope/vim-fugitive'
    --'junegunn/gv.vim'
    --'jpalardy/vim-slime'
}

local opts = {}

require("lazy").setup(plugins, opts)
