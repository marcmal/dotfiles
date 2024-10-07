local wezterm                    = require('wezterm')
local theme                      = require('everforest')

local config                     = wezterm.config_builder()
config.default_prog              = { 'powershell' }

config.color_scheme              = 'Everforest Dark (Gogh)'
config.font                      = wezterm.font('Hack Nerd Font')
config.use_fancy_tab_bar         = true
config.font_size                 = 16.0
config.window_background_opacity = 0.98
config.audible_bell              = 'Disabled'
config.window_padding            = {
  left = 6,
  right = 6,
  top = 6,
  bottom = 6,
}
config.window_decorations        = "RESIZE"
config.selection_word_boundary   = '{}[]()"\'`.,;:- <>'

config.window_frame              = {
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
}

config.colors                    = {
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
  }
}

config.leader                    = { key = "q", mods = "ALT", timeout_milliseconds = 2000 }
config.keys                      = {
  {
    mods = "LEADER",
    key = "\\",
    action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" }
  },
  {
    mods = "LEADER",
    key = "-",
    action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" }
  },
  {
    mods = "LEADER",
    key = "b",
    action = wezterm.action.ActivateTabRelative(-1)
  },
  {
    mods = "LEADER",
    key = "n",
    action = wezterm.action.ActivateTabRelative(1)
  },
  {
    mods = "LEADER",
    key = "h",
    action = wezterm.action.ActivatePaneDirection "Left"
  },
  {
    mods = "LEADER",
    key = "j",
    action = wezterm.action.ActivatePaneDirection "Down"
  },
  {
    mods = "LEADER",
    key = "k",
    action = wezterm.action.ActivatePaneDirection "Up"
  },
  {
    mods = "LEADER",
    key = "l",
    action = wezterm.action.ActivatePaneDirection "Right"
  },

  {
    key = 'r',
    mods = 'LEADER',
    action = wezterm.action.ActivateKeyTable {
      name = 'resize_pane',
      one_shot = false,
    },
  },
}

config.key_tables                = {
  -- Defines the keys that are active in our resize-pane mode.
  -- Since we're likely to want to make multiple adjustments,
  -- we made the activation one_shot=false. We therefore need
  -- to define a key assignment for getting out of this mode.
  -- 'resize_pane' here corresponds to the name="resize_pane" in
  -- the key assignments above.
  resize_pane = {
    { key = 'LeftArrow',  action = wezterm.action.AdjustPaneSize { 'Left', 1 } },
    { key = 'h',          action = wezterm.action.AdjustPaneSize { 'Left', 1 } },

    { key = 'RightArrow', action = wezterm.action.AdjustPaneSize { 'Right', 1 } },
    { key = 'l',          action = wezterm.action.AdjustPaneSize { 'Right', 1 } },

    { key = 'UpArrow',    action = wezterm.action.AdjustPaneSize { 'Up', 1 } },
    { key = 'k',          action = wezterm.action.AdjustPaneSize { 'Up', 1 } },

    { key = 'DownArrow',  action = wezterm.action.AdjustPaneSize { 'Down', 1 } },
    { key = 'j',          action = wezterm.action.AdjustPaneSize { 'Down', 1 } },

    -- Cancel the mode by pressing escape
    { key = 'Escape',     action = 'PopKeyTable' },
  },
}

return config
