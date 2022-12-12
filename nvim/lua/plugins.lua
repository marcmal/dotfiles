require('packer').startup(function(use)
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
  use {'nvim-treesitter/nvim-treesitter', commit="6840b3740da5497730136c875e8f89cad314657b"}

  -- Themes
  use 'morhetz/gruvbox'
  use 'olimorris/onedarkpro.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
end)

