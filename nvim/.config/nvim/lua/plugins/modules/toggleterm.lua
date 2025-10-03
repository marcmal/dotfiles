return {
  'akinsho/toggleterm.nvim',
  cmd = { 'ToggleTerm' },
  keys = require('core.mapping').terminal,
  opts = {
    open_mapping = [[<c-\>]],
    direction = 'float'
  }
}
