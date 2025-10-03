return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      preset = "modern",
      delay = 1000
    }
  end,
  keys = require('core.mapping').which_key,
}
