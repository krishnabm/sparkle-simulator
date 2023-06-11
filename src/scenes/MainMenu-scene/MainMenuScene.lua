-- Node with inline actions
local titleNode = am.translate(0, 300)
    ^ am.scale(5)
    ^ am.rotate(0):action(function(node)
      node.angle = math.sin(math.rad(am.frame_time * 512)) * 0.02
    end)
    ^ am.text("Sparkle Simulator!")

local startText = "Hit X or click to begin!"

if am.platform == "windows" or am.platform == "linux" or am.platform == "osx" then
  startText = "Hit X or click to begin!"
else
  startText = "Tap to begin!"
end

local actionTextNode = am.translate(0, -100)
    ^ am.scale(3)
    ^ am.text(startText);


local MainMenuScene = am.group { titleNode, actionTextNode }

return MainMenuScene
