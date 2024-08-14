-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.leader = { key = 's', mods = 'CTRL', timeout_milliseconds = 1000 }

config.color_scheme = 'GruvboxDarkHard'
config.font = wezterm.font({ family = "JetBrainsMono Nerd Font", scale = 1.2 })
config.font_size = 14

config.enable_tab_bar = false
config.default_prog = { "/usr/local/bin/tmux" }
config.window_decorations = "RESIZE"
config.keys = {
  -- activate copy mode or vim mode
  {
    key = 'Enter',
    mods = 'LEADER',
    action = wezterm.action.ActivateCopyMode
  },
}

-- and finally, return the configuration to wezterm
return config
