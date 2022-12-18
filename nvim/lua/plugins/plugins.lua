pcall(require, 'impatient')

require('packer').startup(function(use)
  -- Plugin Manager
  use 'wbthomason/packer.nvim'

  -- Utils
  use 'nvim-lua/plenary.nvim'
  use 'lewis6991/impatient.nvim'

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    event = 'BufRead',
    config = function() require('plugins.configs.gitsigns') end,
  }

  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup{} end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = require('util.lazy_load').nvimtree_cmds,
    setup = function() require('plugins.mappings.nvim-tree') end,
    config = function() require('plugins.configs.nvim-tree') end
  }
  use {
    'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'nvim-telescope/telescope.nvim',
    cmd = "Telescope",
    setup = function() require('plugins.mappings.telescope') end,
    config = function() require('plugins.configs.telescope') end
  }
  use {
    'phaazon/hop.nvim',
    cmd = require('util.lazy_load').hop_cmds,
    setup = function() require('plugins.mappings.hop') end,
    config = function() require('hop').setup {} end
  }
  use {
    'goolord/alpha-nvim',
    config = function() require'alpha'.setup(require'alpha.themes.startify'.config) end
  }

  -- Language Support
  use {
    'neovim/nvim-lspconfig',
    config = function() require('plugins.configs.lsp').configure{} end,
  }
  use {
    'hrsh7th/nvim-cmp',
    config = function() require('plugins.configs.cmp').configure{} end,
    requires = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
    }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    module = "nvim-treesitter",
    cmd = require("util.lazy_load").treesitter_cmds,
    run = ":TSUpdate",
    config = function() require('plugins.configs.tree-sitter') end
  }
  use 'rafamadriz/friendly-snippets'

  -- Themes
  use 'ellisonleao/gruvbox.nvim'
  use 'olimorris/onedarkpro.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    config = function() require('plugins.configs.lualine') end
  }

  use 'kyazdani42/nvim-web-devicons'
end)
