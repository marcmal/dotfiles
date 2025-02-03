local M = {}

M.configure = function()
  require('core.options')
  require('core.mapping').load('general')
end

return M
