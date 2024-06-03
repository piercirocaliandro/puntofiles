local wezterm = require 'wezterm'
local config = {}

 config.color_scheme = 'Belge (terminal.sexy)'
config.font = wezterm.font('Iosevka Nerd Font Mono', { style = 'Normal'})
config.window_background_opacity = 0.7

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
-- Spawn a fish shell in login mode
config.default_prog = { '/usr//bin/bash' }

return config
