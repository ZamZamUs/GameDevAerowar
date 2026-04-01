if (instance_exists(follow)) {
    var dist_x = follow.x - x;
    var dist_y = follow.y - y;
    var margin_x = 10; 
	var margin_y = 10;

    // Gerak kalau lewatin margin
    if (abs(dist_x) > margin_x) {
        xTo = follow.x - (sign(dist_x) * margin_x);
    }
    
    if (abs(dist_y) > margin_y) {
        yTo = follow.y - (sign(dist_y) * margin_y);
    }
}

x = lerp(x, xTo, 0.1);
y = lerp(y - 2, yTo, 0.03);

x = clamp(x, view_w_half, 448 - view_w_half);
y = clamp(y, view_h_half, 256 - view_h_half);

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);