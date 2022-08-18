local map = vim.api.nvim_set_keymap

map('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true })
map('n', '<Leader>b', ':Telescope buffers<CR>', { noremap = true })
map('n', '<Leader>g', ':Telescope live_grep<CR>', { noremap = true })
map('n', '<Leader>s', ':Telescope grep_string<CR>', { noremap = true })
