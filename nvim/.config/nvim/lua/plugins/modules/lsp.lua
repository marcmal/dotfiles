return {
  'neovim/nvim-lspconfig',
  event = "VeryLazy",
  dependencies = {
    'saghen/blink.cmp',
  },
  cond = function()
    return vim.fn.expand("%:e") ~= "log"
  end,
  config = function()
    local icons = require('ui.icons')
    vim.diagnostic.config({
      virtual_text = false,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = icons.diagnostics.BoldError,
          [vim.diagnostic.severity.WARN] = icons.diagnostics.BoldWarning,
          [vim.diagnostic.severity.INFO] = icons.diagnostics.BoldInformation,
          [vim.diagnostic.severity.HINT] = icons.diagnostics.BoldHint,
        },
        texthl = {
          [vim.diagnostic.severity.ERROR] = "Error",
          [vim.diagnostic.severity.WARN] = "Error",
          [vim.diagnostic.severity.HINT] = "Hint",
          [vim.diagnostic.severity.INFO] = "Info",
        },
        numhl = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN] = "",
          [vim.diagnostic.severity.HINT] = "",
          [vim.diagnostic.severity.INFO] = "",
        },
      },
      underline = true,
      update_in_insert = false,
      severity_sort = false,
    })

    local servers = {
      clangd = { cmd = { "clangd", "--query-driver=/proj/rbsNodeIfStorage/nodeif/**/x86_64-wrs-linux-g*" } },
      rust_analyzer = {},
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      }
    }

    local capabilities = require('blink.cmp').get_lsp_capabilities()
    local on_attach = function(_, bufnr)
      local map = vim.keymap.set
      local function opts(desc)
        return { buffer = bufnr, desc = "LSP " .. desc }
      end

      map("n", "<space>e", function() vim.diagnostic.open_float({ border = "rounded" }) end, opts "LSP Diagnostic")
      map("n", "<space>ca", vim.lsp.buf.code_action, opts "Code Action")
      map("n", "<space>cf", vim.lsp.buf.format, opts "Code Format")
      map("n", "<space>h", vim.lsp.buf.signature_help, opts "Signature Help")
      map("n", "[d", function() vim.diagnostic.goto_prev { float = { border = "rounded" } } end,
        opts "Previous Diagnostic")
      map("n", "]d", function() vim.diagnostic.goto_next { float = { border = "rounded" } } end, opts "Next Diagnostic")
    end

    for name, opts in pairs(servers) do
      opts.on_attach = on_attach
      opts.capabilities = capabilities
      vim.lsp.config(name, opts)
      vim.lsp.enable(name)
    end
  end
}
