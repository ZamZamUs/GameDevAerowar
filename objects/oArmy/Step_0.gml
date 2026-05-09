if (is_dead) exit;

var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += h * move_speed;
y += v * move_speed;

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);


// Shoot
if (shoot_timer > 0) shoot_timer -= 1;

if (keyboard_check(vk_space) && shoot_timer <= 0)
{
    var b1 = instance_create_layer(x - 17, y - 22, "Instances", oBullet1);
    b1.hspeed = shoot_speed;

    var b2 = instance_create_layer(x - 19, y + 21, "Instances", oBullet1);
    b2.hspeed = shoot_speed;

    shoot_timer = shoot_delay;
}

// Invincible
if (invincible_timer > 0)
{
    invincible_timer -= 1;
}

// Hold Space to keep firing
if (keyboard_check(vk_space)) {
    is_firing = true;
} else {
    is_firing = false;
    effect_frame = 0; // reset when not firing
}

// Animate only when firing
if (is_firing) {
    effect_frame += effect_speed;

    // loop animation smoothly
    if (effect_frame >= sprite_get_number(spr_effet)) {
        effect_frame = 0;
    }
}
//death
if (global.hp <= 0) {
    instance_create_layer(0, 0, "Instances", obj_death_menu);
    instance_destroy(); // remove player
}

// Mesin
engine_frame += engine_speed;

if (engine_frame >= sprite_get_number(Mesin))
{
    engine_frame = 0;
}