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
