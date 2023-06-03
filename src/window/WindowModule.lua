local WindowModule = {}

WindowModule.win = {}

WindowModule.createWindow = function(properties)
  if not properties then
    WindowModule.win = am.window(properties);
  else
    WindowModule.win = am.window({
      title = "Hi",
      width = 400,
      height = 300,
      clear_color = vec4(0.5, 0, 0.5, 1)
    });
  end
  WindowModule.win.scene = am.group();
  return WindowModule.win;
end

WindowModule.createWindow({})


return WindowModule
