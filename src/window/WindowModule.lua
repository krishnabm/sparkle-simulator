local WindowModule = {}

WindowModule.win = am.window {
  title = "Strike Shock",
  width = 800,
  height = 600,
  clear_color = vec4(0.5, 0, 0.5, 1)
}
WindowModule.win.scene = am.group();

return WindowModule
