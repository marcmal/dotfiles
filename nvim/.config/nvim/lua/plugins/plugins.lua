local plugins = {
  -- Navigation
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = function()
      return require('plugins.configs.which-key')
    end,
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "FzfLua",
    init = function()
      require('core.utils').load_mappings('fzf')
    end,
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
    init = function()
      require('core.utils').load_mappings('nvim_tree')
    end,
  },

  {
    'windwp/nvim-autopairs',
    event = { 'BufRead', 'BufNewFile' },
    config = true
  },

  {
    'phaazon/hop.nvim',
    cmd = { "HopWord", "HopPattern", "HopLineStart" },
    init = function()
      require('core.utils').load_mappings('hop')
    end,
    config = true
  },

  {
    "lewis6991/gitsigns.nvim",
    event = { 'BufRead', 'BufNewFile' },
    init = function()
      require('core.utils').load_mappings('gitsigns')
    end,
    opts = function()
      return require "plugins.configs.gitsigns"
    end,
  },

  {
    'numToStr/Comment.nvim',
    -- Keys triggering plugin lazy loading. Actual mapping done by defaults in `setup {}`
    keys = {
      { "gcc", mode = "n",          desc = "Comment toggle current line" },
      { "gc",  mode = { "n", "o" }, desc = "Comment toggle linewise" },
      { "gc",  mode = "x",          desc = "Comment toggle linewise (visual)" },
      { "gbc", mode = "n",          desc = "Comment toggle current block" },
      { "gb",  mode = { "n", "o" }, desc = "Comment toggle blockwise" },
      { "gb",  mode = "x",          desc = "Comment toggle blockwise (visual)" },
    },
    config = true
  },

  {
    "sontungexpt/stcursorword",
    event = { 'BufRead', 'BufNewFile' },
    config = true,
  },

  -- Language Support
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
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

  -- Utils
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

  -- UI
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
    keys = {
      { "<c-\\>", mode = "n", desc = "Toggle floating terminal" },
    },
    opts = function() return require('plugins.configs.toggleterm') end
  }
}

return plugins
