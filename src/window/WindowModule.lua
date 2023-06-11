local WindowModule = {}

WindowModule.win = am.window {
  title = "Sparkle Simulator",
  width = 900,
  height = 1600,
  clear_color = vec4(0.1, 0.1, 0.1, 1),
  borderless = false,
  resizable = true,
  msaa_samples = 0, -- low antialiasing
  highdpi = false
}
WindowModule.win.scene = am.group();

return WindowModule
