local M = {}

local modules = {
  'core.general-settings',
  'core.autocomplete',
  -- 'core.lsp-settings',
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

function M.configure()
  for _, module in ipairs(modules) do
    require(module)
  end
end

return M
