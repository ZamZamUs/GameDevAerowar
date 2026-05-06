// MUSUH LANGSUNG HANCUR (TIDAK PEDULI NYAWA ARMY)
// Hancurkan enemy yang menabrak (self)
instance_destroy();

// (Opsional) Efek ledakan untuk enemy
var inst_enemy = instance_create_layer(x, y, "Instances", oExplosion);
inst_enemy.sprite_index = spr_explode;
inst_enemy.image_speed = 0.15;

