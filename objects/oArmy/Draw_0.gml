// Gambar sprite player dulu
draw_self();

// Baru gambar heart di atasnya
draw_set_font(-1);
draw_set_color(c_white);

for (var i = 0; i < hp; i++)
{
    draw_sprite(spr_heart, 0, 20 + (i * 40), 20);
}