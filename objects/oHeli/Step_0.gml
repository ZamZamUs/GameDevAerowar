if (global.game_paused) exit;
scr_animate_sprites(heli_sprites, anim_speed);

x += hsp;

// animate effect
effect_frame += effect_speed;

if (effect_frame >= sprite_get_number(spr_effect)) {
    effect_frame = 0;
}

shoot_timer++;

if (is_bursting) {
    
    if (shoot_timer >= shoot_delay) {
        
        shoot_timer = 0;

        // shoot bullet
        instance_create_layer(x - 100, y - 10, "Instances", oBullet);

        shots_fired++;

        // finished burst?
        if (shots_fired >= max_shots) {
            is_bursting = false;
            shoot_timer = 0;
        }
    }
}
else {
    // waiting phase
    if (shoot_timer >= burst_delay) {
        
        shoot_timer = 0;
        shots_fired = 0;
        is_bursting = true;
    }
}