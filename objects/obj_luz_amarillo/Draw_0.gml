/// @description Dibuja la superficie
// Puede escribir su código en este editor
draw_self()

if !surface_exists(surf)
{
	surf = surface_create(ancho, alto);
}
else if (surface_exists(surf)) {
	var _cx = x-(ancho/2);
	var _cy = y-(alto/2);
	surface_set_target(surf);
	gpu_set_blendmode(bm_max);
	var color = make_color_rgb(255,103,0)
	//var color = c_yellow
	draw_sprite_ext(spr_radio_luz, 0, x - _cx, y - _cy, escala, escala, 0, color, 0.25)
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surf, _cx, _cy);
}