local icons = require('ui.icons')

local M = {}

M.servers = {
  clangd = {},
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

M.capabilities = require('blink.cmp').get_lsp_capabilities()
M.on_attach = function(_, bufnr)
  require('core.mapping').load('lspconfig', { buffer = bufnr })
end

function M:configure()
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

  for name, opts in pairs(M.servers) do
    opts.on_attach = M.on_attach
    opts.capabilities = M.capabilities
    require("lspconfig")[name].setup(opts)
  end
end

return M
