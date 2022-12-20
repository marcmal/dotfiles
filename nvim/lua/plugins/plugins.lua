pcall(require, 'impatient')

require('packer').startup(function(use)
  -- Plugin Manager
  use 'wbthomason/packer.nvim'

  -- Utils
  use 'nvim-lua/plenary.nvim'
  use 'lewis6991/impatient.nvim'

  -- Navigation
  use {
    'lewis6991/gitsigns.nvim',
    event = {'BufRead', 'BufNewFile'},
    config = function() require('plugins.configs.gitsigns') end,
  }
  use {
    'numToStr/Comment.nvim',
    keys = { "gc" },
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
    event = {'BufRead', 'BufNewFile'},
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

  -- Language Support & Completion
  -- use {
  --   'neovim/nvim-lspconfig',
  --   event = {'BufRead', 'BufNewFile'},
  --   config = function() require('plugins.configs.lsp').configure{} end
  -- }
  use {
    'hrsh7th/nvim-cmp',
    event = {'BufRead', 'BufNewFile'},
    config = function() require('plugins.configs.cmp').configure{} end,
  }
  use { 
    'hrsh7th/cmp-nvim-lsp',
    requires = 'nvim-cmp',
    after = {'nvim-cmp'}
  }
  use { 'hrsh7th/cmp-nvim-lua', requires = 'nvim-cmp', after ='nvim-cmp' }
  use { 'hrsh7th/cmp-buffer', requires = 'nvim-cmp', after ='nvim-cmp' }
  use { 'hrsh7th/cmp-path', requires = 'nvim-cmp', after ='nvim-cmp' }
  use { 'hrsh7th/vim-vsnip', requires = 'nvim-cmp', after ='nvim-cmp' }
  use { 'hrsh7th/cmp-vsnip', requires = 'nvim-cmp', after ='nvim-cmp' }

  use {
    'nvim-treesitter/nvim-treesitter',
    module = "nvim-treesitter",
    event = {'BufRead', 'BufNewFile' },
    cmd = require("util.lazy_load").treesitter_cmds,
    run = ":TSUpdate",
    config = function() require('plugins.configs.tree-sitter') end
  }
  use {
    'rafamadriz/friendly-snippets',
    event = {'BufRead', 'BufNewFile'},
  }

  -- UI
  use 'ellisonleao/gruvbox.nvim'
  use {
    'olimorris/onedarkpro.nvim',
    config = function() require('core.theme') end
  }
  use {
    'nvim-lualine/lualine.nvim',
    config = function() require('plugins.configs.lualine') end
  }
  use {
    'goolord/alpha-nvim',
    config = function() require'alpha'.setup(require'alpha.themes.startify'.config) end
  }
  use 'kyazdani42/nvim-web-devicons'

end)
