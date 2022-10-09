return require('packer').startup(function(use)
  -- Plugin Manager
  use 'wbthomason/packer.nvim'

  -- Utils
  use 'nvim-lua/plenary.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Navigation
  use 'numToStr/Comment.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'mg979/vim-visual-multi'
  use 'windwp/nvim-autopairs'
  use 'yamatsum/nvim-cursorline'
  use 'nvim-telescope/telescope.nvim'
  use 'folke/todo-comments.nvim'
  use 'phaazon/hop.nvim'

  -- Language Support
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'nvim-treesitter/nvim-treesitter'

  -- Themes
  use 'morhetz/gruvbox'
  use 'nvim-lualine/lualine.nvim'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
end)
