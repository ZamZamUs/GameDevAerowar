heli_sprites = [spr_heli, spr_heli1, spr_heli2];

frame = 0;
anim_speed = 0.2;

hp = 4; // enemy health

hsp = -4;

if (x < -100) {
    instance_destroy();
}

effect_frame = 0;
effect_speed = 0.3;

// effect animation setup
effect_frame = 5;
effect_speed = 0.1;

shoot_timer = 0;

shoot_delay = 5; // delay BETWEEN shots (small = fast burst)
burst_delay = 15.3 * 3; // 3 seconds pause

shots_fired = 0;
max_shots = 3;

is_bursting = true;