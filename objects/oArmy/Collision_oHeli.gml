/// Collision Event (oArmy dengan oBomber/oHeli)

// 1. SIMPAN data yang diperlukan dulu
var army_hp = other.hp;  // Simpan sementara
var army_x = other.x;
var army_y = other.y;

// 2. Kurangi nyawa army
other.hp -= 1;

// 3. Cek kematian army (PALING AKHIR setelah akses other selesai)
if (other.hp <= 0) {
    // Efek ledakan
    var inst = instance_create_layer(army_x, army_y, "Instances", oExplosion);
    inst.sprite_index = spr_explode;
    inst.image_speed = 0.15;
    
    // Hancurkan army
    instance_destroy(other);
    
    // Pause (jangan pakai game_end() kalau mau pause)
    game_end(); // atau game_pause()
}

// 4. Hancurkan musuh (SELALU di akhir)
instance_destroy();