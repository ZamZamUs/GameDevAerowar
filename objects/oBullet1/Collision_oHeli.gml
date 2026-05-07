// deal damage
other.hp -= damage;

// destroy bullet
instance_destroy();

// destroy enemy if dead
if (other.hp <= 0) {
    // Buat efek ledakan sebelum musuh hancur
    var inst = instance_create_layer(other.x, other.y, "Instances", oExplosion);
    inst.sprite_index = spr_explode;
    inst.image_speed = 0.15;
    
    instance_destroy(other);
}

other.hp -= 1;

// add score if heli dies
if (other.hp <= 0) {
    global.score += 10;
    with (other) instance_destroy();
}

instance_destroy(); // destroy bullet