my_config = {
  use_powerline = true,
  lsp_enabled = false
}

require('core.options')
require('plugins').configure()
pcall(require, 'core.work')
