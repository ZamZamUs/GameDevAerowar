spawn_timer++;

if (spawn_timer > 10) {
    spawn_timer = 0;

    if (instance_number(oCloud) < max_clouds) {
        var spawn_x = room_width + random(1400);
        var spawn_y = random_range(250, 1000);

        instance_create_layer(spawn_x, spawn_y, "Instances", oCloud);
    }
}