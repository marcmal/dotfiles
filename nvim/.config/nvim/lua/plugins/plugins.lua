local plugins = {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = function()
      return require('plugins.configs.which-key')
    end,
    keys = require('core.mapping').which_key,
  },

  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "FzfLua",
    keys = require('core.mapping').fzf,
    opts = function()
      return require "plugins.configs.fzf"
    end,
  },

  {
    'nvim-tree/nvim-tree.lua',
    cmd = { "NvimTreeOpen", "NvimTreeClose", "NvimTreeFindFile", "NvimTreeToggle" },
    opts = function()
      return require "plugins.configs.nvim-tree"
    end,
    keys = require('core.mapping').nvim_tree
  },

  {
    'windwp/nvim-autopairs',
    event = { 'BufRead', 'BufNewFile' },
    config = true
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = require('core.mapping').flash
  },

  {
    "lewis6991/gitsigns.nvim",
    event = { 'BufRead', 'BufNewFile' },
    opts = function()
      return require "plugins.configs.gitsigns"
    end,
    keys = require('core.mapping').gitsigns
  },

  {
    'numToStr/Comment.nvim',
    keys = require('core.mapping').comment,
    config = true
  },

  {
    "sontungexpt/stcursorword",
    event = { 'BufRead', 'BufNewFile' },
    config = true,
  },

  {
    "williamboman/mason.nvim",
    lazy = false,
    event = { 'BufRead', 'BufNewFile' },
    opts = function()
      return require "plugins.configs.mason"
    end,
    config = function(_, opts)
      require("mason").setup(opts)

      vim.api.nvim_create_user_command("MasonInstallAll", function()
        vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
      end, {})
    end,
  },

  {
    'neovim/nvim-lspconfig',
    event = { 'BufRead', 'BufNewFile' },
    config = function() require('plugins.configs.lsp').configure {} end
  },

  {
    'saghen/blink.cmp',
    version = '*',
    event = { 'InsertEnter' },
    opts = function()
      return require "plugins.configs.blink-cmp"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    event = { 'BufRead', 'BufNewFile' },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function()
      return require('plugins.configs.tree-sitter')
    end,
  },

  { "nvim-lua/plenary.nvim" },
  {
    'powerman/vim-plugin-AnsiEsc',
    cmd = 'AnsiEsc'
  },

  {
    'marmal95/nvim-cursor-number',
    cmd = { 'ConvertCursorNumber' },
    config = true
  },

  {
    'neanias/everforest-nvim',
    main = 'everforest',
    lazy = false,
    opts = {
      background = "medium",
      italics = true,
      -- Hack: Set to unsupported value (-1)
      -- Prevents setting Transparency and colors change by theme on its own
      transparent_background_level = -1
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
  },

  {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    opts = function()
      return require('plugins.configs.lualine')
    end,
  },

  {
    'goolord/alpha-nvim',
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function() return require 'alpha.themes.startify'.config end
  },

  {
    'akinsho/toggleterm.nvim',
    cmd = { 'ToggleTerm' },
    keys = require('core.mapping').terminal,
    opts = function() return require('plugins.configs.toggleterm') end
  }
}

return plugins
