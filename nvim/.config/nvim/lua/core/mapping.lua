local M = {}

M.general = {
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
  },

  n = {
    ["J"] = { "mzJ`z" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },

    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },

    ["<ESC>"] = { ":noh<CR>" },
    ["<bar>"] = { ":vsplit<CR>" },
    ["_"] = { ":split<CR>" },

    ["<C-k>"] = { ':wincmd k<CR>' },
    ["<C-l>"] = { ':wincmd l<CR>' },
    ["<C-h>"] = { ':wincmd h<CR>' },
    ["<C-j>"] = { ':wincmd j<CR>' },

    ["<C-Right>"] = { ':vertical resize +2<CR>' },
    ["<C-Left>"] = { ':vertical resize -2<CR>' },
    ["<C-Up>"] = { ':horizontal resize +2<CR>' },
    ["<C-Down>"] = { ':horizontal resize -2<CR>' },

    ["<C-e>"] = { ':tabnext <CR>' },
    ["<C-q>"] = { ':tabprev <CR>' },

    ["trq"] = { ':tabmove -1<CR>' },
    ["tre"] = { ':tabmove +1<CR>' },

    ["gh"] = { ":let @/='\\<'.expand('<cword>').'\\>' <bar> set hls <CR>" },

    ["mm"] = { function()
      pcall(function()
        require('core.work').switch_header_source()
      end, { desc = "Switch C++ header/source file" })
    end }
  }
}

M.fzf = {
  { "<leader>ff", function() require('fzf-lua').files() end,          desc = "Find Files" },
  { "<leader>fr", function() require('fzf-lua').resume() end,         desc = "Resume find/grep" },
  { "<leader>fb", function() require('fzf-lua').buffers() end,        desc = "Browse buffers" },
  { "<leader>fg", function() require('fzf-lua').live_grep_glob() end, desc = "Grep files" },
  { "<leader>fs", function() require('fzf-lua').grep_cword() end,     desc = "Grep cursor word" },
  {
    "<leader>fcg",
    function()
      require('fzf-lua')
      local default_rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096"
      local ignore_pattern = "'!test'"
      local rg_opts = default_rg_opts .. ' -g ' .. ignore_pattern .. ' -e '
      require('fzf-lua').live_grep({ rg_opts = rg_opts })
    end,
    desc = "Grep files excluding tests"
  },
  { "<leader>fg", mode = 'v', function() require('fzf-lua').grep_visual() end, desc = "Grep selection" },
}

M.comment = {
  { "gcc", mode = "n",          desc = "Comment toggle current line" },
  { "gc",  mode = { "n", "o" }, desc = "Comment toggle linewise" },
  { "gc",  mode = "x",          desc = "Comment toggle linewise (visual)" },
  { "gbc", mode = "n",          desc = "Comment toggle current block" },
  { "gb",  mode = { "n", "o" }, desc = "Comment toggle blockwise" },
  { "gb",  mode = "x",          desc = "Comment toggle blockwise (visual)" },
}

M.terminal = {
  { "<c-\\>", mode = "n", desc = "Toggle floating terminal" },
}

M.which_key = {
  {
    "<leader>?",
    function()
      require("which-key").show({ global = false })
    end,
    desc = "Buffer Local Keymaps (which-key)",
  },
}

M.nvim_tree = {
  { "<leader>tt", ":NvimTreeToggle <CR>",   desc = "Toggle file explorer tree" },
  { "<leader>tf", ":NvimTreeFindFile <CR>", desc = "Find current file in file explorer tree" },
}

M.gitsigns = {
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
    "[c]",
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

  {
    "<leader>td",
    function()
      require("gitsigns").toggle_deleted()
    end,
    desc = "Toggle deleted"
  },
}

M.flash = {
  { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
  { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
  { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
  { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
}

M.lspconfig = {
  n = {
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      { desc = "LSP declaration" },
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      { desc = "LSP definition" },
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      { desc = "LSP hover" },
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      { desc = "LSP implementation" },
    },

    ["gtd"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      { desc = "LSP definition type" },
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      { desc = "LSP references" },
    },

    ["<space>e"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      { desc = "Floating diagnostic" },
    },

    ["<space>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      { desc = "Code action" },
    },

    ["<space>cf"] = {
      function()
        vim.lsp.buf.format()
      end,
      { desc = "Code format" },
    },

    ["<space>h"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      { desc = "Code signature help" },
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      { desc = "Goto prev" },
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      { desc = "Goto next" },
    },

    ["<leader>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      { desc = "Diagnostic setloclist" },
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      { desc = "Add workspace folder" },
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      { desc = "Remove workspace folder" },
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      { desc = "List workspace folders" },
    },
  },

  v = {
    ["<space>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      { desc = "LSP code action" },
    },
  },
}

return M
