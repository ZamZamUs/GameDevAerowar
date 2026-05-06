// ==========================
// CREATE EVENT - oArmy
// ==========================

move_speed = 5;

shoot_delay = 5;
shoot_timer = 0;
shoot_speed = 12;

x = room_width / 2;
y = room_height / 2;

// STATUS
invincible_timer = 0;
is_dead = false;

// HEALTH
hearts = 5; // 🔥 LANGSUNG MATI SEKALI KENA

// ==========================
// FUNCTION DAMAGE
// ==========================
take_damage = function(damage_type)
{
    if (is_dead) return;

    // Langsung habis
    hearts = 0;

    // MATI
    is_dead = true;

    // Efek ledakan
    instance_create_layer(x, y, layer, oExplosion);

    move_speed = 0;
    visible = false;

    alarm[0] = 30;
};