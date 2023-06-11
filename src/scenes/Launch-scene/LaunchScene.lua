local sparklesNode = am.blend("add_alpha")
    ^ am.particles2d({
      source_pos = vec2(0, 0),
      source_pos_var = vec2(20),
      max_particles = 1000,
      emission_rate = 700,
      start_particles = 0,
      life = 0.6,
      life_var = 0.2,
      angle = math.rad(90),
      angle_var = math.rad(270),
      speed = 300,
      start_color = vec4(1, 0.3, 0, 0.7),
      start_color_var = vec4(0.1, 0.2, 0.0, 0.1),
      end_color = vec4(0.9, 0.9, 1, 1),
      end_color_var = vec4(0.1),
      start_size = 30,
      start_size_var = 10,
      end_size = 1,
      end_size_var = 2,
      gravity = vec2(0, -500),
    }):tag "_sparklesNode"
local LaunchScene = am.group { sparklesNode };

return LaunchScene
