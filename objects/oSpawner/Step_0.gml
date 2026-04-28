 // count time
spawn_timer++;

// when 10 seconds passed
if (spawn_timer >= spawn_delay) {

    // reset timer FIRST (important)
    spawn_timer = 0;

    // spawn position (right side)
    var spawn_x = room_width + 50;
    var spawn_y = random_range(10, 400);

    // create heli
    instance_create_layer(spawn_x, spawn_y, "Instances", oHeli);
}