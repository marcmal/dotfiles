local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

-- Utils
Plug 'nvim-lua/plenary.nvim'
Plug 'glts/vim-magnum'
Plug 'glts/vim-radical'

-- Language Support
Plug ('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug 'nvim-treesitter/playground'

-- Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'

-- Navigation
Plug 'tpope/vim-commentary'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'mg979/vim-visual-multi'
Plug 'windwp/nvim-autopairs'
Plug 'yamatsum/nvim-cursorline'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'phaazon/hop.nvim'

-- Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'

-- Themes
Plug 'morhetz/gruvbox'
Plug 'nvim-lualine/lualine.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

vim.call('plug#end')
