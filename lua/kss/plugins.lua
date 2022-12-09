vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  --Colorschemes
  use 'gruvbox-community/gruvbox'
  use 'altercation/vim-colors-solarized'
  use 'vimwiki/vimwiki'
  use 'mattn/calendar-vim'
	----Hyperfocus writing (highlights paragraphs under your cursor)
  use 'junegunn/limelight.vim'
	----Distraction free writing (centers the text)
  use 'Pocco81/true-zen.nvim'
	----F8 to open tags view
  use {
    'stevearc/aerial.nvim',
    config = function() require('aerial').setup() end
  }
	----Displays thin line at each indentaion
  use 'lukas-reineke/indent-blankline.nvim'
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
	----Start screen
  use 'nvim-tree/nvim-web-devicons'
  use 'goolord/alpha-nvim'
	----FZF and more
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'easymotion/vim-easymotion'
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup({toggler = {
      line = '<leader>cc',
      block = '<leader>bc',}}) end
  }
	----Rainbow color brackets
  use 'luochen1990/rainbow'
	----git changes in the sign column
  use 'mhinz/vim-signify'
	----Highlight the letters while using fFtT movement
  use 'unblevable/quick-scope'
  -- Todo
  --use 'ap/vim-css-color'
	----git client, may replace it with lazygit
  --use 'tpope/vim-fugitive'
	----use 'junegunn/gv.vim' 
  --use 'jpalardy/vim-slime'
  --use 'simnalamburt/vim-mundo'
end)


