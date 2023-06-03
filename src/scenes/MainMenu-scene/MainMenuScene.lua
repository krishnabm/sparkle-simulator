-- Node with inline actions
local titleNode = am.translate(0, 100)
    ^ am.scale(4)
    ^ am.rotate(0):action(function(node)
      node.angle = math.sin(math.rad(am.frame_time * 256)) * 0.04
    end)
    ^ am.text("Hello World!");

local actionTextNode = am.translate(0, -10)
    ^ am.scale(2)
    ^ am.text("Hit X to begin!");


local MainMenuScene = am.group { titleNode, actionTextNode };

return MainMenuScene
