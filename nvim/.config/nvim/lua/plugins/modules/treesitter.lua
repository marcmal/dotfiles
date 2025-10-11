local languages = { 'cpp', 'lua' }

vim.api.nvim_create_autocmd('FileType', {
  pattern = languages,
  callback = function() vim.treesitter.start() end,
})

return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  branch = 'main',
  build = ":TSUpdate",
  opts = {
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = languages,

    highlight = {
      enable = true,
      disable = {},
      additional_vim_regex_highlighting = false
    },
    indent = {
      enable = false
    }
  }
}
