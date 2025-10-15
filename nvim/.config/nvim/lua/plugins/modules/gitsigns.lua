return {
  "lewis6991/gitsigns.nvim",
  event = 'VeryLazy',
  opts = {
    signcolumn      = true,
    numhl           = true,
    max_file_length = 100000
  },
  keys = {
    {
      "]c",
      function()
        if vim.wo.diff then
          return "]c"
        end
        vim.schedule(function()
          require("gitsigns").next_hunk()
        end)
        return "<Ignore>"
      end,
      desc = "Jump to next hunk"
    },

    {
      "[c",
      function()
        if vim.wo.diff then
          return "[c"
        end
        vim.schedule(function()
          require("gitsigns").prev_hunk()
        end)
        return "<Ignore>"
      end,
      desc = "Jump to prev hunk"
    },

    {
      "<leader>hr",
      function()
        require("gitsigns").reset_hunk()
      end,
      desc = "Reset hunk"
    },

    {
      "<leader>hp",
      function()
        require("gitsigns").preview_hunk()
      end,
      desc = "Reset hunk"
    },

    {
      "<leader>hb",
      function()
        require("gitsigns").blame_line { full = true }
      end,
      desc = "Blame line"
    },
  }
}
