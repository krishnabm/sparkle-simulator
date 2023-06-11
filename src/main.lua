local WinModule = require("window.WindowModule")
local MainMenuScene = require("scenes.MainMenu-scene.MainMenuScene")
local LaunchScene = require("scenes.Launch-scene.LaunchScene")

local window = WinModule.win

local isTouchEnv = am.platform == "ios" or am.platform == "android"

window.scene:append(MainMenuScene:tag "_mainMenuScene");

--#region Actions
MainMenuScene:action("MainMenuScene:MainAction", function(scene)
  if window:key_down "x" or window:mouse_pressed("left") or #window:touches_began() >= 1 then
    window.scene:remove "_mainMenuScene"
    window.scene:append(LaunchScene:tag "_launchScene")
    return
  end
end)

LaunchScene:action("LaunchScene:MainAction", function(scene)
  if window:key_down "q" or window:key_down "escape" then
    window:close()
  end
  if isTouchEnv then
    scene("_sparklesNode").source_pos = window:touch_position()
  else
    scene("_sparklesNode").source_pos = window:mouse_position()

    if window:mouse_pressed("left") then
      scene("_sparklesNode").start_color = vec4(math.random(), math.random(), math.random(), 0.9)
    end
  end
end)
--#endregion
