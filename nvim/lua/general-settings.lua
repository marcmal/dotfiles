vim.opt.encoding = 'UTF-8'
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.updatetime = 100
vim.opt.mouse = ''
vim.opt.colorcolumn = '120'

local map = vim.api.nvim_set_keymap
map('n', '<F4>', ':noh<CR>', { noremap = true })
map('n', '<bar>', ':vsplit<CR>', { noremap = true })
map('n', '_', ':split<CR>', { noremap = true })
map('n', '<C-k>', ':wincmd k<CR>', { noremap = true })
map('n', '<C-j>', ':wincmd j<CR>', { noremap = true })
map('n', '<C-h>', ':wincmd h<CR>', { noremap = true })
map('n', '<C-l>', ':wincmd l<CR>', { noremap = true })

map('n', '<C-e>', ':tabnext<CR>', { noremap = true })
map('n', '<C-q>', ':tabprevious<CR>', { noremap = true })

map('n', 'gh', ":let @/='\\<'.expand('<cword>').'\\>' <bar> set hls <CR>", { noremap = true })
