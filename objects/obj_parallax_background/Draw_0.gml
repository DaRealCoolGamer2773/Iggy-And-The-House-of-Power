var _canx = camera_get_view_x(view_camera[0]);
var _cany = camera_get_view_y(view_camera[0]);

var _p = .5;

draw_sprite_tiled(bg_hills_day_normal, 0, _canx*_p, _cany*_p);

draw_sprite_tiled(bg_hills_day_normal, 1, _canx*.25, _cany*.25);

draw_sprite_tiled(bg_hills_day_normal, 2, _canx*.15, _cany*.15);