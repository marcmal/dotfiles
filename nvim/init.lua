my_config = {
  use_powerline = true
}

require('core.options')
require('plugins').configure()
pcall(require, 'core.work')
