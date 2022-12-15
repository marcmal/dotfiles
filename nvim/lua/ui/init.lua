local M = {}

function M.configure()
  setupTheme()
  setupDashboard()
  setupStatusBar()
end


function setupTheme()
  vim.o.background = "dark"

  require("gruvbox").setup({
    italic = false,
  })

  vim.cmd([[ colorscheme gruvbox ]])
end

function setupDashboard()
  require'alpha'.setup(require'alpha.themes.startify'.config)
end

function getComponentSeparators()
  if my_config.use_powerline then
    -- return { left = '', right = '' }
    return { left = '', right = '' }
  end
  return { left = '', right = '' }
end

function getSectionSeparator()
  if my_config.use_powerline then
    -- return { left = '', right = '' }
    -- return { left = '', right = ''}
    -- return { left = '', right = ''}
    return { left = '', right = '' }
  end
  return { left = '', right = '' }
end

function setupStatusBar()
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'onedark',
      component_separators = getComponentSeparators(),
      section_separators = getSectionSeparator(),
      disabled_filetypes = {},
      always_divide_middle = true,
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {
      lualine_a = { { 'tabs', max_length = vim.o.columns, mode = 2 } },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    },
    extensions = {}
  }
end

return M
