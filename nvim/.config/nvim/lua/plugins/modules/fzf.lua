return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = "FzfLua",
  keys = require('core.mapping').fzf,
  opts = {
    'borderless_full'
  }
}
