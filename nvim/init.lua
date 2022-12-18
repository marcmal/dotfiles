my_config = {
  use_powerline = true,
  theme = 'onedark'
}

require('core.options')
require('plugins').configure()
require('core.theme')
pcall(require, 'core.work')

