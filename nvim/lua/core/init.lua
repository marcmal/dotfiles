local M = {}

local modules_deprecated = {
  'core.general-settings',
  'core.nvim-tree-settings',
  'core.autopairs-settings',
  'core.gitsigns-settings',
  'core.tree-sitter-settings',
  'core.custom-syntax-settings',
  'core.telescope-settings',
  'core.hop-settings',
  'core.comment-settings',
  'core.work-specific-settings'
}

local modules = {
  'core.autocomplete',
  'core.lsp'
}

function M.configure()
  for _, module in ipairs(modules_deprecated) do
    require(module)
  end

  for _, module in ipairs(modules) do
    require(module).configure()
  end
end

return M
