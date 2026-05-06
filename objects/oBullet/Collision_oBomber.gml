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