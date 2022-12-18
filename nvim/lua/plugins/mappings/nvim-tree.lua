local map = vim.api.nvim_set_keymap
map('n', '<F1>', ':NvimTreeToggle<CR>', { noremap = true })
map('n', '<leader>n', ':NvimTreeFindFile<CR>', { noremap = true })
