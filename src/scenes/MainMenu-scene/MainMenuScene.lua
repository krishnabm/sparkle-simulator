-- Node with inline actions
local titleNode = am.translate(0, 300)
    ^ am.scale(5)
    ^ am.rotate(0):action(function(node)
      node.angle = math.sin(math.rad(am.frame_time * 512)) * 0.02
    end)
    ^ am.text("Sparkle Simulator!")

local actionTextNode = am.translate(0, -10)
    ^ am.scale(2)
    ^ am.text("Hit X to begin!");


local MainMenuScene = am.group { titleNode, actionTextNode };

return MainMenuScene
