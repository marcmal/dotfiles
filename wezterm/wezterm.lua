local wezterm = require('wezterm')
local theme = require('everforest')

local config = {
  audible_bell              = 'Disabled',
  use_fancy_tab_bar         = true,
  font_size                 = 16.0,
  window_background_opacity = 0.98,

  default_prog              = { 'powershell' },
  color_scheme              = 'Everforest Dark (Gogh)',
  font                      = wezterm.font('Hack Nerd Font'),

  window_padding            = {
    left = 6,
    right = 6,
    top = 6,
    bottom = 6,
  },

  window_frame              = {
    -- The font used in the tab bar.
    -- Roboto Bold is the default; this font is bundled
    -- with wezterm.
    -- Whatever font is selected here, it will have the
    -- main font setting appended to it to pick up any
    -- fallback fonts you may have used there.
    font = wezterm.font { family = 'Hack Nerd Font', weight = 'Bold' },

    -- The size of the font in the tab bar.
    -- Default to 10.0 on Windows but 12.0 on other systems
    font_size = 12.0,

    -- The overall background color of the tab bar when
    -- the window is focused
    active_titlebar_bg = theme.bg0,

    -- The overall background color of the tab bar when
    -- the window is not focused
    inactive_titlebar_bg = theme.bg0,
  },

  colors                    = {
    tab_bar = {
      -- The active tab is the one that has focus in the window
      active_tab = {
        bg_color = theme.green,
        fg_color = theme.bg0,
      },

      -- Inactive tabs are the tabs that do not have focus
      inactive_tab = {
        bg_color = theme.bg1,
        fg_color = theme.grey2,
      },

      inactive_tab_hover = {
        bg_color = theme.bg2,
        fg_color = theme.grey2,
      },

      -- The new tab button that let you create new tabs
      new_tab = {
        bg_color = theme.bg1,
        fg_color = theme.grey2,
      },

      new_tab_hover = {
        bg_color = theme.green,
        fg_color = theme.bg0,
      },
    },
  }
}

return config
