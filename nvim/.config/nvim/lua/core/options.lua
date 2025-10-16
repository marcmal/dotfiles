vim.opt.encoding = 'UTF-8'
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.updatetime = 100
vim.opt.mouse = ''
vim.opt.colorcolumn = '120'
vim.opt.pumheight = 10
vim.opt.showcmd = false
vim.opt.showmode = false
vim.opt.cmdheight = 1

local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true, desc = desc })
end

-- Normal mode
map('n', '<bar>', ':vsplit<CR>', 'Vertical split')
map('n', '_', ':split<CR>', 'Horizontal split')
map('n', '<ESC>', ':noh<CR>', 'Clear search highlight')
map('n', 'n', 'nzzzv', 'Next search result centered')
map('n', 'N', 'Nzzzv', 'Previous search result centered')
map('n', 'J', 'mzJ`z', 'Join lines and keep cursor position')
map('n', '<C-d>', '<C-d>zz', 'Page down and center')
map('n', '<C-u>', '<C-u>zz', 'Page up and center')

-- Window navigation
map('n', '<C-k>', ':wincmd k<CR>', 'Move to window above')
map('n', '<C-j>', ':wincmd j<CR>', 'Move to window below')
map('n', '<C-h>', ':wincmd h<CR>', 'Move to window left')
map('n', '<C-l>', ':wincmd l<CR>', 'Move to window right')

-- Resize windows
map('n', '<C-Right>', ':vertical resize +2<CR>', 'Increase window width')
map('n', '<C-Left>', ':vertical resize -2<CR>', 'Decrease window width')
map('n', '<C-Up>', ':horizontal resize +2<CR>', 'Increase window height')
map('n', '<C-Down>', ':horizontal resize -2<CR>', 'Decrease window height')

-- Tabs
map('n', '<C-e>', ':tabnext<CR>', 'Next tab')
map('n', '<C-q>', ':tabprev<CR>', 'Previous tab')
map('n', 'trq', ':tabmove -1<CR>', 'Move tab left')
map('n', 'tre', ':tabmove +1<CR>', 'Move tab right')

-- Search current word
map('n', 'gh', ":let @/='\\<'.expand('<cword>').'\\>' | set hls<CR>", 'Highlight current word')

-- Visual mode
map('v', 'J', ":m '>+1<CR>gv=gv", 'Move selected block down')
map('v', 'K', ":m '<-2<CR>gv=gv", 'Move selected block up')

vim.cmd [[
    autocmd BufNewFile,BufRead *.log setfiletype log
    autocmd BufNewFile,BufRead *.LOG setfiletype log
    autocmd BufNewFile,BufRead *.out setfiletype log
]]
