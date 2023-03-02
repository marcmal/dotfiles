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
vim.opt.pumheight = 10
vim.opt.showcmd = false
vim.opt.showmode = false
vim.opt.cmdheight = 1

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set('n', '<F4>', ':noh<CR>')
vim.keymap.set('n', '<bar>', ':vsplit<CR>')
vim.keymap.set('n', '_', ':split<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<C-e>', ':tabnext<CR>')
vim.keymap.set('n', '<C-q>', ':tabprevious<CR>')

vim.keymap.set('n', 'gh', ":let @/='\\<'.expand('<cword>').'\\>' <bar> set hls <CR>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.cmd [[
    autocmd BufNewFile,BufRead *.log setfiletype log
    autocmd BufNewFile,BufRead *.LOG setfiletype log
    autocmd BufNewFile,BufRead *.out setfiletype log
]]
