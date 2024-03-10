local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Package management
    use 'wbthomason/packer.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- Colorschemes
    use 'gruvbox-community/gruvbox'
    use 'altercation/vim-colors-solarized'
    use 'vimwiki/vimwiki'
    use 'mattn/calendar-vim'
    -- Hyperfocus writing (highlights paragraphs under your cursor)
    use 'junegunn/limelight.vim'
    -- Distraction free writing (centers the text)
    use 'Pocco81/true-zen.nvim'
    -- F8 to open tags view
    use {
        'stevearc/aerial.nvim',
        config = function() require('aerial').setup() end
    }
    -- Displays thin line at each indentaion
    use 'lukas-reineke/indent-blankline.nvim'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    -- Start screen
    use 'nvim-tree/nvim-web-devicons'
    use 'goolord/alpha-nvim'
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
    ----FZF and more
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'easymotion/vim-easymotion'
    use 'numToStr/Comment.nvim'
    -- Rainbow color brackets
    use 'luochen1990/rainbow'
    -- Git changes in the sign column
    -- Use 'mhinz/vim-signify'
    use 'lewis6991/gitsigns.nvim'
    -- Highlight the letters while using fFtT movement
    use 'unblevable/quick-scope'
    -- Ide setup
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use 'jose-elias-alvarez/null-ls.nvim'
    -- Completion setup
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    -- Icons in cmp
    use 'onsails/lspkind.nvim'
    -- Additional cmp plugins
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    -- Snippet management
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- Css colorizer
    use 'norcalli/nvim-colorizer.lua'
    -- Undo tree Mundo alternative
    use 'mbbill/undotree'
    -- LaTeX
    -- use 'xuhdev/vim-latex-live-preview'
    use 'lervag/vimtex'

    -- Todo
    -- Git client, may replace it with lazygit
    --use 'tpope/vim-fugitive'
    --use 'junegunn/gv.vim'
    --use 'jpalardy/vim-slime'
    if packer_bootstrap then
        require('packer').sync()
    end
end)
