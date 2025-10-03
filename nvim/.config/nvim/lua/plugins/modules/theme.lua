return {
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
}
