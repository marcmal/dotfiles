local M = {}

function M.reload()
  vim.cmd([[ PackerCompile ]])
  vim.cmd([[ LuaCacheClear ]])
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | lua require('plugins').reload()
  augroup end
]])

function M.configure()
  pcall(require, 'impatient')
  require('plugins.plugins')
end

return M
