var total_seconds = ceil(game_timer / 60);

var minutes = total_seconds div 60;
var seconds = total_seconds mod 60;

var sec_text = string(seconds);

if (seconds < 10)
{
    sec_text = "0" + sec_text;
}

draw_set_font(Text);
draw_set_color(c_white);

draw_set_halign(fa_center);

draw_text(
    room_width / 2,
    40,
    string(minutes) + ":" + sec_text
);