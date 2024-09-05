local win = am.window{borderless = "false", clear_color=vec4(0,0,0,0.1)}

win.scene = am.scale(2) ^ am.text("Hello, World!")
win.scene:action("MainAction", function(scene)
    if win:key_down "q" or win:key_down "escape" then
        win:close()
    end
end)