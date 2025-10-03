return {
    'goolord/alpha-nvim',
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function() return require 'alpha.themes.startify'.config end
  }
