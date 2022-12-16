require('packer').startup(function(use)
  -- Plugin Manager
  use 'wbthomason/packer.nvim'

  -- Utils
  use 'nvim-lua/plenary.nvim'
  use 'lewis6991/impatient.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Navigation
  use 'numToStr/Comment.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'windwp/nvim-autopairs'
  use 'nvim-telescope/telescope.nvim'
  use 'phaazon/hop.nvim'
  use 'goolord/alpha-nvim'

  -- Language Support
  use 'neovim/nvim-lspconfig'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
    }
  }
  use 'nvim-treesitter/nvim-treesitter'
  use 'rafamadriz/friendly-snippets'

  -- Themes
  use 'ellisonleao/gruvbox.nvim'
  use 'olimorris/onedarkpro.nvim'
  use 'nvim-lualine/lualine.nvim'

  use 'kyazdani42/nvim-web-devicons'
end)
