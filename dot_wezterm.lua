-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- appearance
config.adjust_window_size_when_changing_font_size = false
config.animation_fps = 60
config.enable_scroll_bar = true
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- background
config.window_background_opacity = 0.75
config.macos_window_background_blur = 50
config.win32_system_backdrop = 'Mica'

-- behavior
config.scrollback_lines = 100000
config.show_update_window = true
config.window_close_confirmation = 'NeverPrompt'

-- bell
config.audible_bell = 'SystemBeep'
config.visual_bell = {
  fade_in_duration_ms = 150,
  fade_in_function = 'EaseIn',
  fade_out_duration_ms = 150,
  fade_out_function = 'EaseOut',
  target = 'BackgroundColor'
}

-- colors
config.color_scheme = 'Brogrammer'

-- cursor
config.cursor_blink_ease_in = 'Linear'
config.cursor_blink_ease_out = 'Linear'
config.cursor_blink_rate = 500
config.default_cursor_style = 'BlinkingBar'

-- font
config.font = wezterm.font('Fira Code')
config.font_size = 14.0
config.line_height = 1.1

-- rendering
config.front_end = 'WebGpu'
config.term = 'wezterm' -- !!! requires installation of wezterm terminfo !!!
config.webgpu_power_preference = 'HighPerformance'

-- and finally, return the configuration to wezterm
return config
