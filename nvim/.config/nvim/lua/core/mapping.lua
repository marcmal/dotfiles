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
  { "<bar>",     mode = 'n',                                                 ":vsplit<CR>" },
  { "_",         mode = 'n',                                                 ":split<CR>" },
  { "<ESC>",     mode = 'n',                                                 ":noh<CR>" },
  { "n",         mode = 'n',                                                 "nzzzv" },
  { "N",         mode = 'n',                                                 "Nzzzv" },
  { "J",         mode = 'n',                                                 "mzJ`z" },
  { "<C-d>",     mode = 'n',                                                 "<C-d>zz" },
  { "<C-u>",     mode = 'n',                                                 "<C-u>zz" },
  { "<C-k>",     mode = 'n',                                                 ":wincmd k<CR>" },
  { "<C-l>",     mode = 'n',                                                 ":wincmd l<CR>" },
  { "<C-h>",     mode = 'n',                                                 ":wincmd h<CR>" },
  { "<C-j>",     mode = 'n',                                                 ":wincmd j<CR>" },
  { "<C-Right>", mode = 'n',                                                 ":vertical resize +2<CR>" },
  { "<C-Left>",  mode = 'n',                                                 ":vertical resize -2<CR>" },
  { "<C-Up>",    mode = 'n',                                                 ":horizontal resize +2<CR>" },
  { "<C-Down>",  mode = 'n',                                                 ":horizontal resize -2<CR>" },

  { "<C-e>",     mode = 'n',                                                 ":tabnext <CR>" },
  { "<C-q>",     mode = 'n',                                                 ":tabprev <CR>" },

  { "trq",       mode = 'n',                                                 ":tabmove -1<CR>" },
  { "tre",       mode = 'n',                                                 ":tabmove +1<CR>" },

  { "gh",        mode = 'n',                                                 ":let @/='\\<'.expand('<cword>').'\\>' <bar> set hls <CR>" },

  { "J",         mode = 'v',                                                 ":m '>+1<CR>gv=gv" },
  { "K",         mode = 'v',                                                 ":m '<-2<CR>gv=gv" },

  { "mm",        function() require('core.work').switch_header_source() end, desc = "Switch header/source" },
}

M.lspconfig = {
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
