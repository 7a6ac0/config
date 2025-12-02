local wezterm   = require("wezterm")
local constants = require("constants")
local config    = wezterm.config_builder()

-- Font settings
config.font_size                                  = 18
config.font                                       = wezterm.font("Maple Mono NF CN")

-- Colors
config.colors                                     = require("cyberdream")

-- Appearance
config.cursor_blink_rate                          = 0
config.automatically_reload_config                = true
config.window_close_confirmation                  = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false
config.window_decorations                         = "RESIZE"
config.check_for_updates                          = false
config.tab_bar_at_bottom                          = false
config.enable_tab_bar                             = false
config.window_padding                             = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_background_opacity                  = 1
config.window_background_image                    = constants.bg_image
config.macos_window_background_blur               = 40
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- Miscellaneous settings
config.max_fps                                    = 120
config.animation_fps                              = 120
config.prefer_egl                                 = true

return config
