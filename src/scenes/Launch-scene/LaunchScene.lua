local titleNode = am.scale(4)
    ^ am.rotate(0):action(function(node)
      node.angle = math.sin(math.rad(am.frame_time * 256)) * 0.04
    end)
    ^ am.text("Hello World!");


local LaunchScene = am.group { titleNode };

return LaunchScene
