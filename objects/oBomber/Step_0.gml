if (global.game_paused) exit;
// move fast to the left
x += hsp;

// destroy when off screen
if (x < -100) {
    instance_destroy();
}

scr_bomber_behavior(hsp, 0.2, 6);

// animate effect
effect_frame += effect_speed;

if (effect_frame >= sprite_get_number(spr_effect_1)) {
    effect_frame = 0;
}

// animate effect
effect_frame += effect_speed;

if (effect_frame >= sprite_get_number(spr_effect_2)) {
    effect_frame = 0;
}

shoot_timer++;

if (shoot_timer >= shoot_delay) {
    
    shoot_timer = 0;

    // create bullet
    instance_create_layer(x - 60, y - 32, "Instances", oBullet);

    // create bullet
    instance_create_layer(x - 60, y - -30, "Instances", oBullet);
	
}