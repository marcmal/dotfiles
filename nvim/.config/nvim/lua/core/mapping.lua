local M = {}

M.load = function(plugin, group_opts)
  local mappings = require('core.mapping')[plugin]
  for _, mapping in ipairs(mappings) do
    local mapping_opts = { desc = mapping.desc }
    local opts = vim.tbl_deep_extend('force', group_opts or {}, mapping_opts)
    vim.keymap.set(mapping.mode or 'n', mapping[1], mapping[2], opts)
  end
end

M.general = {
  { "<bar>",     mode = 'n', ":vsplit<CR>" },
  { "_",         mode = 'n', ":split<CR>" },
  { "<ESC>",     mode = 'n', ":noh<CR>" },
  { "n",         mode = 'n', "nzzzv" },
  { "N",         mode = 'n', "Nzzzv" },
  { "J",         mode = 'n', "mzJ`z" },
  { "<C-d>",     mode = 'n', "<C-d>zz" },
  { "<C-u>",     mode = 'n', "<C-u>zz" },
  { "<C-k>",     mode = 'n', ":wincmd k<CR>" },
  { "<C-l>",     mode = 'n', ":wincmd l<CR>" },
  { "<C-h>",     mode = 'n', ":wincmd h<CR>" },
  { "<C-j>",     mode = 'n', ":wincmd j<CR>" },
  { "<C-Right>", mode = 'n', ":vertical resize +2<CR>" },
  { "<C-Left>",  mode = 'n', ":vertical resize -2<CR>" },
  { "<C-Up>",    mode = 'n', ":horizontal resize +2<CR>" },
  { "<C-Down>",  mode = 'n', ":horizontal resize -2<CR>" },

  { "<C-e>",     mode = 'n', ":tabnext <CR>" },
  { "<C-q>",     mode = 'n', ":tabprev <CR>" },

  { "trq",       mode = 'n', ":tabmove -1<CR>" },
  { "tre",       mode = 'n', ":tabmove +1<CR>" },

  { "gh",        mode = 'n', ":let @/='\\<'.expand('<cword>').'\\>' <bar> set hls <CR>" },

  { "J",         mode = 'v', ":m '>+1<CR>gv=gv" },
  { "K",         mode = 'v', ":m '<-2<CR>gv=gv" },
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
  { [[<C-\>]], mode = "n",     desc = "Toggle floating terminal" },
  { "<esc>",   [[<C-\><C-n>]], mode = "t",                       desc = "Switch to normal mode" },
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
  {
    "gD",
    mode = "n",
    function()
      vim.lsp.buf.declaration()
    end,
    desc = "LSP declaration"
  },
  {
    "gd",
    mode = "n",
    function()
      vim.lsp.buf.definition()
    end,
    desc = "LSP definition"
  },
  {
    "K",
    mode = "n",
    function()
      vim.lsp.buf.hover()
    end,
    desc = "LSP hover"
  },
  {
    "gi",
    mode = "n",
    function()
      vim.lsp.buf.implementation()
    end,
    desc = "LSP implementation"
  },
  {
    "gtd",
    mode = "n",
    function()
      vim.lsp.buf.type_definition()
    end,
    desc = "LSP type definition"
  },
  {
    "gr",
    mode = "n",
    function()
      vim.lsp.buf.references()
    end,
    desc = "LSP references"
  },
  {
    "<space>e",
    mode = "n",
    function()
      vim.diagnostic.open_float { border = "rounded" }
    end,
    desc = "LSP diagnostic"
  },
  {
    "<space>ca",
    mode = "n",
    function()
      vim.lsp.buf.code_action()
    end,
    desc = "Code action"
  },
  {
    "<space>cf",
    mode = "n",
    function()
      vim.lsp.buf.format()
    end,
    desc = "Code format"
  },
  {
    "<space>h",
    mode = "n",
    function()
      vim.lsp.buf.signature_help()
    end,
    desc = "Signature help"
  },
  {
    "[d",
    mode = "n",
    function()
      vim.diagnostic.goto_prev { float = { border = "rounded" } }
    end,
    desc = "Previous diagnostic"
  },
  {
    "]d",
    mode = "n",
    function()
      vim.diagnostic.goto_next { float = { border = "rounded" } }
    end,
    desc = "Next diagnostic"
  },
  {
    "<leader>q",
    mode = "n",
    function()
      vim.diagnostic.setloclist()
    end,
    desc = "Diagnostic setloclist"
  },
}

return M
