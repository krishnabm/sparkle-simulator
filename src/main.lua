local WinModule = require("window.WindowModule")
local MainMenuScene = require("scenes.MainMenu-scene.MainMenuScene")
local LaunchScene = require("scenes.Launch-scene.LaunchScene")

local window = WinModule.win;

window.scene:append(MainMenuScene:tag "MainMenuScene");

--#region Actions
MainMenuScene:action("MainMenuScene:MainAction", function(scene)
  -- check if the x button was pressed
  if window:key_down "x" then
    window.scene:remove "MainMenuScene"
    window.scene:append(LaunchScene:tag "LaunchScene")
    return
  end
end)
--#endregion
