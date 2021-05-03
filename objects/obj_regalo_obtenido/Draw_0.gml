/// @description Dibuja el fondo oscuro
if (global.etapa_rueda == EtapasRueda.MostrandoRecomensa || global.etapa_rueda == EtapasRueda.Final) {
	draw_set_color(back_color);
	draw_set_alpha(alpha);
	draw_rectangle(0, 0, room_width, room_height, false);
	if (alpha < alpha_destino)
		alpha += delta_alpha;
	//resetea el alpha
	draw_set_alpha(1);
}

if (sprite_exists(sprite_index))
	draw_self();