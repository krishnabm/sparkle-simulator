-- Node with inline actions
local rootNode = am.scale(2)
    ^ am.rotate(math.rad(90)):action(function(node)
      node.angle = am.frame_time * 0.5
    end)
    ^ am.text("Hello World!");


local HelloWorldScene = am.group { rootNode };

return HelloWorldScene
