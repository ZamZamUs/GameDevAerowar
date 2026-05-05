// =====================
// MOVEMENT (WASD)
// =====================
var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += h * move_speed;
y += v * move_speed;

// Biar tidak keluar room
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

// =====================
// TIMER (HARUS DIKURANGI 1, BUKAN 5)
// =====================
if (shoot_timer > 0)
{
    shoot_timer -= 0.5;   // Ganti dari 5 jadi 1!
}

// =====================
// SHOOT (SPACE DITAHAN)
// =====================
if (keyboard_check(vk_space) && shoot_timer <= 0)
{
    // Peluru player
    var bullet_left = instance_create_layer(x - 100, y - 46, "Instances", oBullet1);
    bullet_left.hspeed = shoot_speed;
    bullet_left.vspeed = 0;
    
    var bullet_right = instance_create_layer(x - 100, y - -30, "Instances", oBullet1);
    bullet_right.hspeed = shoot_speed;
    bullet_right.vspeed = 0;
    
    shoot_timer = shoot_delay;
}

if (hp <= 0)
{
    if (!instance_exists(obj_death_menu))
    {
        global.game_paused = true;
        instance_create_layer(0, 0, "GUI", obj_death_menu);
    }
}

// Start firing when Space is pressed
if (keyboard_check_pressed(vk_space)) {
    is_firing = true;
    effect_frame = 0; // restart animation
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
    if (effect_frame >= sprite_get_number(spr_effect_3)) {
        effect_frame = 0;
    }
}