if (instance_number(object_index) > 1) {
    instance_destroy();
}

// timer setup
spawn_timer = 0;
spawn_delay = room_speed * 6; // 10 seconds